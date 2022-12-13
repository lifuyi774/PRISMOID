package com.pdb.ssm.dao;

import com.pdb.ssm.model.GroupType;
import com.pdb.ssm.model.MutationsAffectingStatistics;

import java.util.List;

public interface MutationsAffectingStatisticsDao {
    int deleteByPrimaryKey(Integer id);

    int insert(MutationsAffectingStatistics record);

    int insertSelective(MutationsAffectingStatistics record);

    MutationsAffectingStatistics selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MutationsAffectingStatistics record);

    int updateByPrimaryKey(MutationsAffectingStatistics record);

    List<GroupType> selectCancerMutationsAffectingPTMSites();

    List<GroupType> selectDiseaseMutationsAffectingPTMSites();

    List<GroupType> selectPopulationMutationsAffectingPTMSites();

    List<GroupType> selectTotalMutationsAffectingPTMSites();
}