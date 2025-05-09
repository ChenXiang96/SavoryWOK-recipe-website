package com.SavoryWok.dao;

import java.util.List;

import com.SavoryWok.entity.Dish_Category;
import com.SavoryWok.entity.Themes;

public interface CategoryDao2 extends BaseDao<Themes> {

	public Integer countCategory2();

	public List<Themes> findAll2(Integer page);
	
	public List<Themes> findAll2();
	
	public Themes findTwo(Integer caid);
	
	public Themes getCategory2ById(Integer caid);
}
