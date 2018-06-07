package com.chuse.dao;

import java.util.List;

import com.chuse.entity.CategorySecond;

public interface CategorySecondDao extends BaseDao<CategorySecond>{
	

	public Integer countCategorySecond();

	public List<CategorySecond> findAll(Integer page);
	
	public List<CategorySecond> findAll();
	
	public CategorySecond findOne(Integer cid);
	
}
