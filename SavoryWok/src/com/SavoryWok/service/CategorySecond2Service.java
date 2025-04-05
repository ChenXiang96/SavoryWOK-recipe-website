package com.SavoryWok.service;

import java.util.List;

import com.SavoryWok.entity.CategorySecond2;

public interface CategorySecond2Service {
    CategorySecond2 getCategorySecond2ById(Integer casid); // 改为实例方法
    List<CategorySecond2> findByCaid(Integer caid); // 根据主分类ID查询子分类
	
}