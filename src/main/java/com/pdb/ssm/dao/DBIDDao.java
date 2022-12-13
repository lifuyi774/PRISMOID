package com.pdb.ssm.dao;

import com.pdb.ssm.model.DBID;

import java.util.List;

public interface DBIDDao {
    int deleteByPrimaryKey(String dbid);

    int insert(DBID record);

    int insertSelective(DBID record);

    DBID selectByPrimaryKey(String dbid);

    int updateByPrimaryKeySelective(DBID record);

    int updateByPrimaryKey(DBID record);

    int addClickCount(String pdbchain);

    List<String> selectMostClickCountPDBChain();
}