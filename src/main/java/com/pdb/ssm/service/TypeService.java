package com.pdb.ssm.service;

import com.pdb.ssm.model.Type;

import java.util.List;

/**
 * Created by firstmetcs on 2018/6/15.
 */
public interface TypeService {

    List<Type> selectAllType(String table);

}
