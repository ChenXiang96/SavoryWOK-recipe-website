package com.SavoryWok.dao;

import java.util.List;

import com.SavoryWok.entity.CategorySecond2;

public interface CategorySecond2Dao {
    CategorySecond2 getCategorySecond2ById(Integer casid); // 取消静态方法
    
    
    List<CategorySecond2> findByCaid(Integer caid); // 新增
    
    
    
}