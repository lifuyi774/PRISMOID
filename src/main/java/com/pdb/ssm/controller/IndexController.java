package com.pdb.ssm.controller;

import com.pdb.ssm.model.*;
import com.pdb.ssm.service.DownloadService;
import com.pdb.ssm.service.EntryService;
import com.pdb.ssm.service.PdbService;
import com.pdb.ssm.service.TypeService;
import com.pdb.ssm.tools.SortHashMapByValues;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
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
@RequestMapping("/")
public class IndexController {

    private Logger log = Logger.getLogger(IndexController.class);
    @Resource
    private PdbService pdbService;
    @Resource
    private TypeService typeService;
    @Resource
    private EntryService entryService;
    @Resource
    private DownloadService downloadService;

    @RequestMapping("/index")
    public String browse(HttpServletRequest request, Model model) {
        log.info("index");
        List<String> pdbchain = entryService.selectMostClickCountPDBChain();
        int entries = pdbService.selectEntriesForIndex();
        model.addAttribute("entries",entries);
        int PTMTypes = pdbService.selectPTMTypesForIndex();
        model.addAttribute("PTMTypes",PTMTypes);
        int Organism = pdbService.selectOrganismForIndex();
        model.addAttribute("Organism",Organism);
        int PTMSites = pdbService.selectPTMSitesForIndex();
        model.addAttribute("PTMSites",PTMSites);
        HttpSession session = request.getSession();

        session.setAttribute("pdb3Dmol1", pdbchain.get(0).split(":")[0]);
        session.setAttribute("chain3Dmol1", pdbchain.get(0).split(":")[1]);
        List<Pdbchain> pdbList1 = pdbService.selectPdbByPDBChain(pdbchain.get(0));
        session.setAttribute("pdbList3Dmol1", pdbList1);

        session.setAttribute("pdb3Dmol2", pdbchain.get(1).split(":")[0]);
        session.setAttribute("chain3Dmol2", pdbchain.get(1).split(":")[1]);
        List<Pdbchain> pdbList2 = pdbService.selectPdbByPDBChain(pdbchain.get(0));
        session.setAttribute("pdbList3Dmol2", pdbList2);

        session.setAttribute("pdb3Dmol3", pdbchain.get(2).split(":")[0]);
        session.setAttribute("chain3Dmol3", pdbchain.get(2).split(":")[1]);
        List<Pdbchain> pdbList3 = pdbService.selectPdbByPDBChain(pdbchain.get(0));
        session.setAttribute("pdbList3Dmol3", pdbList3);

        session.setAttribute("pdb3Dmol4", pdbchain.get(3).split(":")[0]);
        session.setAttribute("chain3Dmol4", pdbchain.get(3).split(":")[1]);
        List<Pdbchain> pdbList4 = pdbService.selectPdbByPDBChain(pdbchain.get(0));
        session.setAttribute("pdbList3Dmol4", pdbList4);

        session.setAttribute("pdb3Dmol5", pdbchain.get(4).split(":")[0]);
        session.setAttribute("chain3Dmol5", pdbchain.get(4).split(":")[1]);
        List<Pdbchain> pdbList5 = pdbService.selectPdbByPDBChain(pdbchain.get(0));
        session.setAttribute("pdbList3Dmol5", pdbList5);

        System.out.println(pdbchain);
        return "index";
    }

}
