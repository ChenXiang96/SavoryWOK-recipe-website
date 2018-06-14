package com.chuse.dao;

import java.util.List;

import com.chuse.entity.Category;
import com.chuse.entity.Category2;

public interface CategoryDao2 extends BaseDao<Category2> {

	public Integer countCategory2();

	public List<Category2> findAll2(Integer page);
	
	public List<Category2> findAll2();
	
	public Category2 findTwo(Integer caid);
}
