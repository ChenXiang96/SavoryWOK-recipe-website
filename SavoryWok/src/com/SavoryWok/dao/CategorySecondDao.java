package com.SavoryWok.dao;

import java.util.List;

import com.SavoryWok.entity.IngredientCategory;

public interface CategorySecondDao extends BaseDao<IngredientCategory>{
	

	public Integer countCategorySecond();

	public List<IngredientCategory> findAll(Integer page);
	
	public List<IngredientCategory> findAll();
	
	public IngredientCategory findOne(Integer cid);
	
}
