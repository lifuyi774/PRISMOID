package com.pdb.ssm.service.impl;

import com.pdb.ssm.dao.*;
import com.pdb.ssm.model.*;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.pdb.ssm.service.EntryService;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */

@Service
@Transactional(rollbackFor = Exception.class)
public class EntryServiceImpl implements EntryService {

    @Resource
    private MutationDao mutationDao;
    @Resource
    private NaccessDao naccessDao;
    @Resource
    private DsspDao dsspDao;
    @Resource
    private PTMSitesMutationDao ptmSitesMutationDao;
    @Resource
    private DBIDDao dbidDao;

    //Mutation part
    public List<Mutation> selectMuByUniprotId(String uniid) {
        return mutationDao.selectMuByUniprotId(uniid);
    }

    public List<GroupType> selectGroupByTOV(String Typeofvariant) {
        return mutationDao.selectGroupByTOV(Typeofvariant);
    }

    public List<Mutation> selectAll() {
        return mutationDao.selectAll();
    }

    public int deleteByColumn(Mutation record) {
        return mutationDao.deleteByColumn(record);
    }

    //Naccess part
    public int insert(Naccess record) {
        return naccessDao.insert(record);
    }

    public int insertSelective(Naccess record) {
        return naccessDao.insertSelective(record);
    }

    public List<Naccess> selectAllNaccess() {
        return naccessDao.selectAllNaccess();
    }

    public List<Naccess> selectNaccessByPdbchain(String PDBChain) {
        return naccessDao.selectNaccessByPdbchain(PDBChain);
    }

    //Dssp part
    public int insert(Dssp record) {
        return dsspDao.insert(record);
    }

    public int insertSelective(Dssp record) {
        return dsspDao.insertSelective(record);
    }

    public List<Dssp> selectAllDssp() {
        return dsspDao.selectAllDssp();
    }

    public List<Dssp> selectDsspByPdbchain(String PDBChain) {
        return dsspDao.selectDsspByPdbchain(PDBChain);
    }

    //PTMSitesMutation part
    public List<PTMSitesMutation> selectPopulationSitesMutation(List<Pdbchain> pdbList) {
        return ptmSitesMutationDao.selectPopulationSitesMutation(pdbList);
    }

    public List<PTMSitesMutation> selectDiseaseSitesMutation(List<Pdbchain> pdbList) {
        return ptmSitesMutationDao.selectDiseaseSitesMutation(pdbList);
    }

    public List<PTMSitesMutation> selectCancerSitesMutation(List<Pdbchain> pdbList) {
        return ptmSitesMutationDao.selectCancerSitesMutation(pdbList);
    }

    //DBID part
    public int deleteByPrimaryKey(String dbid) {
        return dbidDao.deleteByPrimaryKey(dbid);
    }

    public int insert(DBID record) {
        return dbidDao.insert(record);
    }

    public int insertSelective(DBID record) {
        return dbidDao.insertSelective(record);
    }

    public DBID selectByPrimaryKey(String dbid) {
        return dbidDao.selectByPrimaryKey(dbid);
    }

    public int updateByPrimaryKeySelective(DBID record) {
        return dbidDao.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(DBID record) {
        return dbidDao.updateByPrimaryKey(record);
    }

    public int addClickCount(String pdbchain) {
        return dbidDao.addClickCount(pdbchain);
    }

    public List<String> selectMostClickCountPDBChain() {
        return dbidDao.selectMostClickCountPDBChain();
    }

}
