package com.pdb.ssm.service.impl;

import com.pdb.ssm.dao.DownloadDao;
import com.pdb.ssm.model.Download;
import com.pdb.ssm.service.DownloadService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by firstmetcs on 2018/7/31.
 */

@Service
@Transactional(rollbackFor = Exception.class)
public class DownloadServiceImpl implements DownloadService {

    @Resource
    private DownloadDao downloadDao;


    public int deleteByPrimaryKey(Integer id) {
        return downloadDao.deleteByPrimaryKey(id);
    }

    public int insert(Download record) {
        return downloadDao.insert(record);
    }

    public int insertSelective(Download record) {
        return downloadDao.insertSelective(record);
    }

    public Download selectByPrimaryKey(Integer id) {
        return downloadDao.selectByPrimaryKey(id);
    }

    public int updateByPrimaryKeySelective(Download record) {
        return downloadDao.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(Download record) {
        return downloadDao.updateByPrimaryKey(record);
    }

    public List<Download> selectAll() {
        return downloadDao.selectAll();
    }

    public int download(String name) {
        return downloadDao.download(name);
    }

    public int selectDownloadTimes(String name) {
        return downloadDao.selectDownloadTimes(name);
    }
}
