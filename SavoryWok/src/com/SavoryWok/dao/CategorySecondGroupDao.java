package com.SavoryWok.dao;

import java.util.List;

import com.SavoryWok.entity.CategorySecondGroup;

public interface CategorySecondGroupDao {
    CategorySecondGroup findByCsname(String csname);
    List<CategorySecondGroup> findAll(); // 新增方法
}
