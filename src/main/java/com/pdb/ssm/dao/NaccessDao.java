package com.pdb.ssm.dao;

import com.pdb.ssm.model.Naccess;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface NaccessDao {
    int insert(Naccess record);

    int insertSelective(Naccess record);

    List<Naccess> selectAllNaccess();

    List<Naccess> selectNaccessByPdbchain(@Param("PDBChain") String PDBChain);
}