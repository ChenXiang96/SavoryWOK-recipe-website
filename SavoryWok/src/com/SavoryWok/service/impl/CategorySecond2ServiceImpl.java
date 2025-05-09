package com.SavoryWok.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SavoryWok.dao.CategorySecond2Dao;
import com.SavoryWok.entity.Subthemes;
import com.SavoryWok.service.CategorySecond2Service;

@Service("categorySecond2Service")
public class CategorySecond2ServiceImpl implements CategorySecond2Service {

    @Autowired
    private CategorySecond2Dao categorySecond2Dao; 

    @Override
    public Subthemes getSubthemesById(Integer casid) {
        return categorySecond2Dao.getSubthemesById(casid);
    }
    
    public List<Subthemes> findByCaid(Integer caid) {
        return categorySecond2Dao.findByCaid(caid);
    }
    
}