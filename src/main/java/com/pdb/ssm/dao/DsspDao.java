package com.pdb.ssm.dao;

import com.pdb.ssm.model.Dssp;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DsspDao {
    int insert(Dssp record);

    int insertSelective(Dssp record);

    List<Dssp> selectAllDssp();

    List<Dssp> selectDsspByPdbchain(@Param("PDBChain") String PDBChain);

}