package com.SavoryWok.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SavoryWok.dao.CategorySecond2Dao;
import com.SavoryWok.entity.CategorySecond2;
import com.SavoryWok.service.CategorySecond2Service;

@Service("categorySecond2Service")
public class CategorySecond2ServiceImpl implements CategorySecond2Service {

    @Autowired
    private CategorySecond2Dao categorySecond2Dao; // 正确注入DAO

    @Override
    public CategorySecond2 getCategorySecond2ById(Integer casid) {
        return categorySecond2Dao.getCategorySecond2ById(casid);
    }
    
    public List<CategorySecond2> findByCaid(Integer caid) {
        return categorySecond2Dao.findByCaid(caid);
    }
    
}