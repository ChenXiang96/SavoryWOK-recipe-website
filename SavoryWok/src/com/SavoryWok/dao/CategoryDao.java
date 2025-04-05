package com.SavoryWok.dao;

import java.util.List;

import com.SavoryWok.entity.Category;

public interface CategoryDao extends BaseDao<Category>{
	
	public Integer countCategory();

	public List<Category> findAll(Integer page);
	
	public List<Category> findAll();
	
	public Category findOne(Integer cid);
}
