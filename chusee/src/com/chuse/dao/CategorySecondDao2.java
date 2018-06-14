package com.chuse.dao;

import java.util.List;

import com.chuse.entity.CategorySecond2;

public interface CategorySecondDao2 extends BaseDao<CategorySecond2>{

	
	public Integer countCategorySecond2();

	public List<CategorySecond2> findAll2(Integer page);
	
	public List<CategorySecond2> findAll2();
	
	public CategorySecond2 findTwo(Integer caid);
}
