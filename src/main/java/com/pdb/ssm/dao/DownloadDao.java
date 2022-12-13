package com.pdb.ssm.dao;

import com.pdb.ssm.model.Download;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DownloadDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Download record);

    int insertSelective(Download record);

    Download selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Download record);

    int updateByPrimaryKey(Download record);

    List<Download> selectAll();

    int download(@Param("name") String name);

    int selectDownloadTimes(@Param("name") String name);
}