package com.pdb.ssm.controller;

import com.pdb.ssm.model.*;
import com.pdb.ssm.service.DownloadService;
import com.pdb.ssm.service.PdbService;
import com.pdb.ssm.tools.SortHashMapByValues;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.pdb.ssm.service.TypeService;
import com.pdb.ssm.service.EntryService;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by firstmetcs on 2018/5/15.
 */

@Controller
@RequestMapping("/pdb")
public class PdbController {

    private Logger log = Logger.getLogger(PdbController.class);
    @Resource
    private PdbService pdbService;
    @Resource
    private TypeService typeService;
    @Resource
    private EntryService entryService;
    @Resource
    private DownloadService downloadService;

    @RequestMapping("/browse")
    public String browse(HttpServletRequest request, Model model) {
        log.info("查询所有种类");
        List<Pdbchain> pdbList = pdbService.getBrowseList();
//        The most important improvement
//        -----------------------------
//        List<String> name = new ArrayList<String>();
//        for (int i = 0; i < pdbList.size(); i++){
//            name.add(pdbList.get(i).getPTMType());
//        }
//
//        Map<String, ArrayList> totle = new HashMap<String, ArrayList>();
//        for(int i = 0 ; i < name.size(); i++){
//            ArrayList<Object>  temp = new ArrayList<Object>();
//            temp.add(pdbService.getPdbCountByType(name.get(i)));
//            temp.add(name.get(i).substring(0,name.get(i).indexOf("_")));
//            temp.add(pdbService.getChainFullName(name.get(i).substring(name.get(i).indexOf("_")+1,name.get(i).length())));
//            totle.put(name.get(i), temp);
//        }
//        model.addAttribute("totle",totle);
        model.addAttribute("pdbList", pdbList);
        return "browse";
    }

    @RequestMapping("/browseType")
    public String browseType(HttpServletRequest request, Model model, String type) {
        log.info("查询单个种类" + type);
        List<Type> typeList = typeService.selectAllType(type);
        model.addAttribute("type", type);
        model.addAttribute("typeList", typeList);
        return "browseType";
    }

    @RequestMapping("/entry")
    public String entry(HttpServletRequest request, Model model, String pdbchain) {
        log.info("显示单个3Dmol Entry");
        entryService.addClickCount(pdbchain);
        HttpSession session = request.getSession();
        session.setAttribute("pdb", pdbchain.split(":")[0]);
        session.setAttribute("chain", pdbchain.split(":")[1]);
        List<Pdbchain> pdbList = pdbService.selectPdbByPDBChain(pdbchain);
        session.setAttribute("pdbList", pdbList);

        List<PTMSitesMutation> populationPTMSitesMutations = entryService.selectPopulationSitesMutation(pdbList);
        System.out.println("p: " + populationPTMSitesMutations.size());
        model.addAttribute("populationPTMSitesMutations", populationPTMSitesMutations);

        List<PTMSitesMutation> cancerPTMSitesMutations = entryService.selectCancerSitesMutation(pdbList);
        System.out.println("c: " + cancerPTMSitesMutations.size());
        model.addAttribute("cancerPTMSitesMutations", cancerPTMSitesMutations);

        List<PTMSitesMutation> diseasePTMSitesMutations = entryService.selectDiseaseSitesMutation(pdbList);
        System.out.println("d: " + diseasePTMSitesMutations.size());
        model.addAttribute("diseasePTMSitesMutations", diseasePTMSitesMutations);

        List UniprotID = new ArrayList<String>();
        for (int i = 0; i < pdbList.size(); i++) {
            UniprotID.add(pdbList.get(i).getUniProtID());
        }
        Set set = new HashSet(UniprotID);
        UniprotID.clear();
        UniprotID.addAll(set);

        session.setAttribute("UniprotID", UniprotID);

        Map<String, List<Mutation>> mu = new HashMap<String, List<Mutation>>();

        for (int i = 0; i < UniprotID.size(); i++) {
            List mutation = entryService.selectMuByUniprotId(UniprotID.get(i).toString());
            if (mutation.size() > 0) {
                mu.put(UniprotID.get(i).toString(), mutation);
            }
        }

        model.addAttribute("mu", mu);

        List<Dssp> dssps = entryService.selectDsspByPdbchain(pdbchain);
        System.out.println(dssps.size());
        model.addAttribute("dssps", dssps);

        List<Naccess> naccesses = entryService.selectNaccessByPdbchain(pdbchain);
        System.out.println(naccesses.size());
        model.addAttribute("naccesses", naccesses);

        return "entry";
    }

    @RequestMapping("/searchDBByID")
    public String searchDBByID(HttpServletRequest request, Model model, String SearchID, String ID) {
        log.info("查询单个种类");
        List<Pdbchain> result = null;
        System.out.println(SearchID);
        if (SearchID.equals("UniprotID")) {
            result = pdbService.selectPdbByUniprotID(ID);
            model.addAttribute("type", "Search by UniprotID");
        } else if (SearchID.equals("proteinID")) {
            result = pdbService.selectPdbByDatabaseID(Integer.parseInt(ID));
            model.addAttribute("type", "Search by UniprotID");
        } else if (SearchID.equals("PDBID")) {
            result = pdbService.selectPdbByPDBID(ID);
            model.addAttribute("type", "Search by PDBID");
        }
        model.addAttribute("result", result);
        return "searchResult";
    }

    @RequestMapping("/searchDBByName")
    public String searchDBByName(HttpServletRequest request, Model model, String proteinName, String SearchType) {
        log.info("查询单个种类");
        List<Pdbchain> result = null;
        if (SearchType.equals("proteinName")) {
            result = pdbService.selectPdbByProteinName(proteinName);
            model.addAttribute("type", "Search by Protein Name");
        } else if (SearchType.equals("geneName")) {
            result = pdbService.selectPdbByGeneName(proteinName);
            model.addAttribute("type", "Search by GeneName");
        }

        model.addAttribute("result", result);
        return "searchResult";
    }

    @RequestMapping("/search")
    public String search(HttpServletRequest request, Model model) {
        log.info("search");

        List<String> ptmtypes = pdbService.selectPTMType();
        model.addAttribute("ptmtypes", ptmtypes);

        return "search";
    }

    @RequestMapping("/download")
    public String download(HttpServletRequest request, Model model) {
        log.info("download");

        List<Download> downloads = downloadService.selectAll();
        List<String> ptms = pdbService.selectPTMType();
        model.addAttribute("downloads", downloads);
        model.addAttribute("ptms", ptms);

        return "download";
    }

    @RequestMapping("/statistics")
    public String statistics(HttpServletRequest request, Model model) {
        log.info("statistics");

        List<GroupType> PTMSitesAccordingToPTMTypes = pdbService.selectGroupByPTMType();
        List<GroupType> PTMSitesAccordingToSpecies = pdbService.selectGroupByOrganism();
        List<GroupType> EntriesAccordingToSpecies = pdbService.selectGroupByOrganismPDBChain();
        List<GroupType> EntriesAccordingToDiseaseType = pdbService.selectGroupByDisease();
        List<GroupType> EntriesAccordingToPTMType = pdbService.selectEntriesByPTMType();

        //mutation
        List<GroupType> EntriesAccordingToPolymophismMutation = entryService.selectGroupByTOV("Polymorphism");
        List<GroupType> EntriesAccordingToDiseaseMutation = entryService.selectGroupByTOV("Disease");

        //mutation affecting PTM sites
        List<GroupType> CancerMutationsAffectingPTMSites = pdbService.selectCancerMutationsAffectingPTMSites();
        List<GroupType> DiseaseMutationsAffectingPTMSites = pdbService.selectDiseaseMutationsAffectingPTMSites();
        List<GroupType> PopulationMutationsAffectingPTMSites = pdbService.selectPopulationMutationsAffectingPTMSites();
        List<GroupType> TotalMutationsAffectingPTMSites = pdbService.selectTotalMutationsAffectingPTMSites();


        long begin0 = System.currentTimeMillis();

//        Map<String, Integer> EntriesAccordingToPolymophismMutationMap = mutationMap(EntriesAccordingToPolymophismMutation);
//        Map<String, Integer> EntriesAccordingToDiseaseMutationMap = mutationMap(EntriesAccordingToDiseaseMutation);


        long end0 = System.currentTimeMillis();
        System.out.println("strReplace执行耗时:" + (end0 - begin0) + " 毫秒");
        model.addAttribute("EntriesAccordingToPolymophismMutation", EntriesAccordingToPolymophismMutation);
        model.addAttribute("EntriesAccordingToDiseaseMutation", EntriesAccordingToDiseaseMutation);
        //mutation end

        model.addAttribute("PTMSitesAccordingToPTMTypes", PTMSitesAccordingToPTMTypes);
        model.addAttribute("PTMSitesAccordingToSpecies", PTMSitesAccordingToSpecies);
        model.addAttribute("EntriesAccordingToSpecies", EntriesAccordingToSpecies);
        model.addAttribute("EntriesAccordingToDiseaseType", EntriesAccordingToDiseaseType);
        model.addAttribute("EntriesAccordingToPTMType", EntriesAccordingToPTMType);
        model.addAttribute("CancerMutationsAffectingPTMSites", CancerMutationsAffectingPTMSites);
        model.addAttribute("DiseaseMutationsAffectingPTMSites", DiseaseMutationsAffectingPTMSites);
        model.addAttribute("PopulationMutationsAffectingPTMSites", PopulationMutationsAffectingPTMSites);
        model.addAttribute("TotalMutationsAffectingPTMSites", TotalMutationsAffectingPTMSites);

        return "statistics";
    }

    @RequestMapping("/contact")
    public String contact(HttpServletRequest request, Model model) {
        log.info("contact");

        return "contact";
    }

    @RequestMapping("/help")
    public String help(HttpServletRequest request, Model model) {
        log.info("help");

        return "help";
    }

    @RequestMapping("/searchMulti")
    public String searchMulti(HttpServletRequest request, Model model, String PTMType, String PDBChain1, String PDBChain2, String UniProtID, String rangeTop, String rangeBottom) {
        log.info("searchMulti");

        List<String> list1 = null, list2 = null, list3 = null, list4 = null;

        if (PTMType != null && !PTMType.equals("")) {
            PTMType = PTMType.substring(0, PTMType.length() - 1);
            list1 = new ArrayList<String>(Arrays.asList(PTMType.split(",")));
        }
        if (PDBChain1 != null && !PDBChain1.equals(""))
            list2 = new ArrayList<String>(Arrays.asList(PDBChain1.split(",")));
        if (PDBChain2 != null && !PDBChain2.equals(""))
            list3 = new ArrayList<String>(Arrays.asList(PDBChain2.split(",")));
        if (UniProtID != null && !UniProtID.equals(""))
            list4 = new ArrayList<String>(Arrays.asList(UniProtID.split(",")));

        List<Pdbchain> result = pdbService.selectMultiPTM(list1, list2, list3, list4, rangeBottom, rangeTop);

        model.addAttribute("type", "Advanced Search");

        model.addAttribute("result", result);

        System.out.println(result);

        return "searchResult";
    }

    public Map<String, Integer> mutationMap(List<GroupType> groupTypes) {
        Map<String, Integer> map = new HashMap<String, Integer>();

        //Replace Integer into X
        Pattern pattern = Pattern.compile("\\D+");
        for (GroupType g :
                groupTypes) {
            Matcher matcher = pattern.matcher(g.getName());
            String temp = "";
            while (matcher.find()) {
                if (matcher.end() == 5) {
                    temp += matcher.group(0).substring(2, matcher.group(0).length());
                    temp += " -> ";
                } else {
                    temp += matcher.group(0);
                }
            }
//            temp = g.getName().replaceAll("\\d+", " -> ");
            if (map.get(temp) == null) {
                map.put(temp, g.getValue());
            } else {
                map.put(temp, map.get(temp) + g.getValue());
            }
        }

        //sort by value
        map = SortHashMapByValues.sortMapByValues(map);

        return map;
    }

    @ResponseBody
    @RequestMapping("/selectAllMutation")
    public String selectAllMutation(HttpServletRequest request, Model model) {
        log.info("selectAllMutation");

        List<Mutation> mutations = entryService.selectAll();
        List<String> mainUniProtID = pdbService.selectUniProtID();
        System.out.println(mutations.size());
        System.out.println(mainUniProtID.size());

        for (Mutation m :
                mutations) {
            if (mainUniProtID.indexOf(m.getSwissprotac()) < 0) {
                System.out.println("delete");
                entryService.deleteByColumn(m);
            }
        }

        return mutations.toString();
    }

    @RequestMapping("/submission")
    public String submission(HttpServletRequest request, Model model) {
        log.info("submission");

        return "submission";
    }

    @RequestMapping("/commitFullSubmission")
    public String commitFullSubmission(HttpServletRequest request, Model model, Pdbchain pdbchain, String surname, String givenName, String organization, String email) {
        log.info("commitFullSubmission");

        System.out.println(pdbchain);

        return "submission";
    }

    @RequestMapping("/commitEasySubmission")
    public String commitEasySubmission(HttpServletRequest request, Model model, String email, String subject, String description) {
        log.info("commitFullSubmission");

        System.out.println(email + " " + subject + " " + description);

        return "submission";
    }

    @ResponseBody
    @RequestMapping("/writeDBAjaxAction")
    public String writeDBAjaxAction(HttpServletRequest request, Model model, String name) {
        log.info("writeDBAjaxAction");

        downloadService.download(name);

        return String.valueOf(downloadService.selectDownloadTimes(name));
    }

    @RequestMapping("/timeline")
    public String timeline(HttpServletRequest request, Model model) {
        log.info("timeline");

        return "timeline";
    }
}
