package com.pdb.ssm.service;

import com.pdb.ssm.model.GroupType;
import com.pdb.ssm.model.MutationsAffectingStatistics;
import com.pdb.ssm.model.Pdbchain;

import java.util.List;

/**
 * Created by firstmetcs on 2018/5/15.
 */
public interface PdbService {

    List<Pdbchain> getBrowseList();

    Pdbchain selectPdbByOther(String emailOrPhone, Short state);

    Pdbchain selectPdbById(int userId);

    List<Pdbchain> selectPdbByType(String type);

    int getPdbCountByType(String type);

    String getChainFullName(String single);

    List<Pdbchain> selectPdbByPDBChain(String chain);

    List<Pdbchain> selectPdbByUniprotID(String uniid);

    List<Pdbchain> selectPdbByPDBID(String pdbid);

    List<Pdbchain> selectPdbByDatabaseID(int id);

    List<Pdbchain> selectPdbByProteinName(String pn);

    List<Pdbchain> selectPdbByGeneName(String pn);

    List<GroupType> selectGroupByPTMType();

    List<GroupType> selectGroupByOrganism();

    List<GroupType> selectGroupByOrganismPDBChain();

    List<GroupType> selectGroupByDisease();

    List<Pdbchain> selectMultiPTM(List<String> PTMType, List<String> PDBChain1, List<String> PDBChain2, List<String> UniProtID, String rangeBottom, String rangeTop);

    List<String> selectUniProtID();

    List<String> selectPTMType();

    int selectEntriesForIndex();

    int selectPTMTypesForIndex();

    int selectOrganismForIndex();

    int selectPTMSitesForIndex();

    List<GroupType> selectEntriesByPTMType();

    //MutationsAffectingStatistics part
    int deleteByPrimaryKey(Integer id);

    int insert(MutationsAffectingStatistics record);

    int insertSelective(MutationsAffectingStatistics record);

    MutationsAffectingStatistics selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MutationsAffectingStatistics record);

    int updateByPrimaryKey(MutationsAffectingStatistics record);

    List<GroupType> selectCancerMutationsAffectingPTMSites();

    List<GroupType> selectDiseaseMutationsAffectingPTMSites();

    List<GroupType> selectPopulationMutationsAffectingPTMSites();

    List<GroupType> selectTotalMutationsAffectingPTMSites();
}
