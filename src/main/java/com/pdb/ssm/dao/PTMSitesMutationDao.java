package com.pdb.ssm.dao;

import com.pdb.ssm.model.PTMSitesMutation;
import com.pdb.ssm.model.Pdbchain;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PTMSitesMutationDao {
    int insert(PTMSitesMutation record);

    int insertSelective(PTMSitesMutation record);

    List<PTMSitesMutation> selectPopulationSitesMutation(@Param("pdbList") List<Pdbchain> pdbList);

    List<PTMSitesMutation> selectDiseaseSitesMutation(@Param("pdbList") List<Pdbchain> pdbList);

    List<PTMSitesMutation> selectCancerSitesMutation(@Param("pdbList") List<Pdbchain> pdbList);
}