package com.pdb.ssm.dao;

import com.pdb.ssm.model.GroupType;
import org.apache.ibatis.annotations.Param;
import com.pdb.ssm.model.Mutation;

import java.util.List;

public interface MutationDao {
    int insert(Mutation record);

    int insertSelective(Mutation record);

    List<Mutation> selectMuByUniprotId(@Param("swissprotac") String swissprotac);

    List<GroupType> selectGroupByTOV(@Param("Typeofvariant") String Typeofvariant);

    List<Mutation> selectAll();

    int deleteByColumn(Mutation record);
}