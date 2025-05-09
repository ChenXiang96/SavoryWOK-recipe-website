package com.SavoryWok.dao;

import java.util.List;

import com.SavoryWok.entity.Dish_Category;

public interface CategoryDao extends BaseDao<Dish_Category>{
	
	public Integer countCategory();

	public List<Dish_Category> findAll(Integer page);
	
	public List<Dish_Category> findAll();
	
	public Dish_Category findOne(Integer cid);
}
