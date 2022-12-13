package com.pdb.ssm.dao;

import com.pdb.ssm.model.GroupType;
import com.pdb.ssm.model.Pdbchain;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by firstmetcs on 2018/5/15.
 */

@Repository
public interface PdbDao {

    Pdbchain selectPdbById(@Param("userId") int userId);

    Pdbchain selectPdbByOther(@Param("emailOrPhone") String emailOrPhone, @Param("state") Short state);

    List<Pdbchain> getBrowseList();

    List<Pdbchain> selectPdbByType(@Param("type") String type);

    int getPdbCountByType(@Param("type") String type);

    String getChainFullName(@Param("single") String single);

    List<Pdbchain> selectPdbByPDBChain(@Param("chain") String type);

    List<Pdbchain> selectPdbByUniprotID(@Param("uniid") String uniid);

    List<Pdbchain> selectPdbByDatabaseID(@Param("id") int id);

    List<Pdbchain> selectPdbByPDBID(@Param("pdbid") String pdbid);

    List<Pdbchain> selectPdbByProteinName(@Param("pn") String pn);

    List<Pdbchain> selectPdbByGeneName(@Param("pn") String pn);

    List<GroupType> selectGroupByPTMType();

    List<GroupType> selectGroupByOrganism();

    List<GroupType> selectGroupByOrganismPDBChain();

    List<GroupType> selectGroupByDisease();

    List<Pdbchain> selectMultiPTM(@Param("PTMType") List<String> PTMType, @Param("PDBChain1") List<String> PDBChain1, @Param("PDBChain2") List<String> PDBChain2, @Param("UniProtID") List<String> UniProtID, @Param("rangeBottom") String rangeBottom, @Param("rangeTop") String rangeTop);

    List<String> selectUniProtID();

    List<String> selectPTMType();

    int selectEntriesForIndex();

    int selectPTMTypesForIndex();

    int selectOrganismForIndex();

    int selectPTMSitesForIndex();

    List<GroupType> selectEntriesByPTMType();
}
