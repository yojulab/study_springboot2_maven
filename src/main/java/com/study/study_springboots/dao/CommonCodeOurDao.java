package com.study.study_springboots.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

// @Repository
@Component
public class CommonCodeOurDao {
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public Object getList(String sqlMapId, Object dataMap){
        Object result = sqlSessionTemplate.selectList(sqlMapId, dataMap);
        return result;
    }
}