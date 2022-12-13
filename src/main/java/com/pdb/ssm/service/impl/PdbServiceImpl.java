package com.pdb.ssm.service.impl;

import com.pdb.ssm.dao.MutationsAffectingStatisticsDao;
import com.pdb.ssm.dao.PdbDao;
import com.pdb.ssm.model.GroupType;
import com.pdb.ssm.model.MutationsAffectingStatistics;
import com.pdb.ssm.model.Pdbchain;
import com.pdb.ssm.service.PdbService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by firstmetcs on 2018/5/15.
 */

@Service
@Transactional(rollbackFor = Exception.class)
public class PdbServiceImpl implements PdbService {

    @Resource
    private PdbDao pdbDao;
    @Resource
    private MutationsAffectingStatisticsDao mutationsAffectingStatisticsDao;

    public Pdbchain selectPdbById(int userId) {
        return pdbDao.selectPdbById(userId);
    }

    public Pdbchain selectPdbByOther(String emailOrPhone, Short state) {
        return pdbDao.selectPdbByOther(emailOrPhone, state);
    }

    public List<Pdbchain> getBrowseList() {
        return pdbDao.getBrowseList();
    }

    public List<Pdbchain> selectPdbByType(String type) {
        return pdbDao.selectPdbByType(type);
    }

    public int getPdbCountByType(String type) {
        return pdbDao.getPdbCountByType(type);
    }

    public String getChainFullName(String single) {
        return pdbDao.getChainFullName(single);
    }

    public List<Pdbchain> selectPdbByPDBChain(String chain) {
        return pdbDao.selectPdbByPDBChain(chain);
    }

    public List<Pdbchain> selectPdbByUniprotID(String uniid) {
        return pdbDao.selectPdbByUniprotID(uniid);
    }

    public List<Pdbchain> selectPdbByDatabaseID(int id) {
        return pdbDao.selectPdbByDatabaseID(id);
    }

    public List<Pdbchain> selectPdbByPDBID(String pdbid) {
        return pdbDao.selectPdbByPDBID(pdbid);
    }

    public List<Pdbchain> selectPdbByProteinName(String pn) {
        return pdbDao.selectPdbByProteinName(pn);
    }

    public List<Pdbchain> selectPdbByGeneName(String pn) {
        return pdbDao.selectPdbByGeneName(pn);
    }

    public List<GroupType> selectGroupByPTMType() {
        return pdbDao.selectGroupByPTMType();
    }

    public List<GroupType> selectGroupByOrganism() {
        return pdbDao.selectGroupByOrganism();
    }

    public List<GroupType> selectGroupByOrganismPDBChain() {
        return pdbDao.selectGroupByOrganismPDBChain();
    }

    public List<GroupType> selectGroupByDisease() {
        return pdbDao.selectGroupByDisease();
    }

    public List<Pdbchain> selectMultiPTM(List<String> PTMType, List<String> PDBChain1, List<String> PDBChain2, List<String> UniProtID, String rangeBottom, String rangeTop) {
        return pdbDao.selectMultiPTM(PTMType, PDBChain1, PDBChain2, UniProtID, rangeBottom, rangeTop);
    }

    public List<String> selectUniProtID() {
        return pdbDao.selectUniProtID();
    }

    public List<String> selectPTMType() {
        return pdbDao.selectPTMType();
    }

    public int selectEntriesForIndex() {
        return pdbDao.selectEntriesForIndex();
    }

    public int selectPTMTypesForIndex() {
        return pdbDao.selectPTMTypesForIndex();
    }

    public int selectOrganismForIndex() {
        return pdbDao.selectOrganismForIndex();
    }

    public int selectPTMSitesForIndex() {
        return pdbDao.selectPTMSitesForIndex();
    }

    public List<GroupType> selectEntriesByPTMType() {
        return pdbDao.selectEntriesByPTMType();
    }

    //MutationsAffectingStatistics part
    public int deleteByPrimaryKey(Integer id) {
        return mutationsAffectingStatisticsDao.deleteByPrimaryKey(id);
    }

    public int insert(MutationsAffectingStatistics record) {
        return mutationsAffectingStatisticsDao.insert(record);
    }

    public int insertSelective(MutationsAffectingStatistics record) {
        return mutationsAffectingStatisticsDao.insertSelective(record);
    }

    public MutationsAffectingStatistics selectByPrimaryKey(Integer id) {
        return mutationsAffectingStatisticsDao.selectByPrimaryKey(id);
    }

    public int updateByPrimaryKeySelective(MutationsAffectingStatistics record) {
        return mutationsAffectingStatisticsDao.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(MutationsAffectingStatistics record) {
        return mutationsAffectingStatisticsDao.updateByPrimaryKey(record);
    }

    public List<GroupType> selectCancerMutationsAffectingPTMSites() {
        return mutationsAffectingStatisticsDao.selectCancerMutationsAffectingPTMSites();
    }

    public List<GroupType> selectDiseaseMutationsAffectingPTMSites() {
        return mutationsAffectingStatisticsDao.selectDiseaseMutationsAffectingPTMSites();
    }

    public List<GroupType> selectPopulationMutationsAffectingPTMSites() {
        return mutationsAffectingStatisticsDao.selectPopulationMutationsAffectingPTMSites();
    }

    public List<GroupType> selectTotalMutationsAffectingPTMSites() {
        return mutationsAffectingStatisticsDao.selectTotalMutationsAffectingPTMSites();
    }
}
