package com.SavoryWok.dao;

import java.util.List;

import com.SavoryWok.entity.CategorySecond;

public interface CategorySecondDao extends BaseDao<CategorySecond>{
	

	public Integer countCategorySecond();

	public List<CategorySecond> findAll(Integer page);
	
	public List<CategorySecond> findAll();
	
	public CategorySecond findOne(Integer cid);
	
}
