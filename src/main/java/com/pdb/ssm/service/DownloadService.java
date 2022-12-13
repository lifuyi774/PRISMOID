package com.pdb.ssm.service;

import com.pdb.ssm.model.Download;

import java.util.List;

public interface DownloadService {
    int deleteByPrimaryKey(Integer id);

    int insert(Download record);

    int insertSelective(Download record);

    Download selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Download record);

    int updateByPrimaryKey(Download record);

    List<Download> selectAll();

    int download(String name);

    int selectDownloadTimes(String name);
}