package com.SavoryWok.dao;

import java.util.List;

import com.SavoryWok.entity.IngredientCategoryGroup;

public interface CategorySecondGroupDao {
	IngredientCategoryGroup findByCsname(String csname);
    List<IngredientCategoryGroup> findAll();
}
