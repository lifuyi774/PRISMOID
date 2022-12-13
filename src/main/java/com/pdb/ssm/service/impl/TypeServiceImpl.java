package com.pdb.ssm.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.pdb.ssm.dao.TypeDao;
import com.pdb.ssm.model.Type;
import com.pdb.ssm.service.TypeService;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by firstmetcs on 2018/6/15.
 */

@Service
@Transactional(rollbackFor = Exception.class)
public class TypeServiceImpl implements TypeService {
    
    @Resource
    private TypeDao typeDao;

    public List<Type> selectAllType(String table) {
        return typeDao.selectAllType(table);
    }
}
