package com.chuse.dao;

import java.util.List;

import com.chuse.entity.Category;

public interface CategoryDao extends BaseDao<Category>{
	
	public Integer countCategory();

	public List<Category> findAll(Integer page);
	
	public List<Category> findAll();
	
	public Category findOne(Integer cid);
}
