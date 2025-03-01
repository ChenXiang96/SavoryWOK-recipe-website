package com.chuse.dao;

import java.util.List;

import com.chuse.entity.CategorySecondGroup;

public interface CategorySecondGroupDao {
    CategorySecondGroup findByCsname(String csname);
    List<CategorySecondGroup> findAll(); // 新增方法
}
