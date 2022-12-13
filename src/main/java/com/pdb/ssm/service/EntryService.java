package com.pdb.ssm.service;

import com.pdb.ssm.model.*;

import java.util.List;

/**
 * Created by firstmetcs on 2018/6815.
 */
public interface EntryService {

    //Mutation part
    List<Mutation> selectMuByUniprotId(String uniid);

    List<GroupType> selectGroupByTOV(String Typeofvariant);

    List<Mutation> selectAll();

    int deleteByColumn(Mutation record);

    //Naccess part
    int insert(Naccess record);

    int insertSelective(Naccess record);

    List<Naccess> selectAllNaccess();

    List<Naccess> selectNaccessByPdbchain(String PDBChain);


    //Dssp part
    int insert(Dssp record);

    int insertSelective(Dssp record);

    List<Dssp> selectAllDssp();

    List<Dssp> selectDsspByPdbchain(String PDBChain);

    //PTMSitesMutation part
    List<PTMSitesMutation> selectPopulationSitesMutation(List<Pdbchain> pdbList);

    List<PTMSitesMutation> selectDiseaseSitesMutation(List<Pdbchain> pdbList);

    List<PTMSitesMutation> selectCancerSitesMutation(List<Pdbchain> pdbList);

    //DBID part
    int deleteByPrimaryKey(String dbid);

    int insert(DBID record);

    int insertSelective(DBID record);

    DBID selectByPrimaryKey(String dbid);

    int updateByPrimaryKeySelective(DBID record);

    int updateByPrimaryKey(DBID record);

    int addClickCount(String pdbchain);

    List<String> selectMostClickCountPDBChain();

}
