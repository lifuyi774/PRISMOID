package com.pdb.ssm.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import com.pdb.ssm.model.Type;

import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */

@Repository
public interface TypeDao {

    List<Type> selectAllType(@Param("table") String table);

}
