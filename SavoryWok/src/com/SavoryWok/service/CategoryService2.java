package com.SavoryWok.service;

import java.util.List;

import com.SavoryWok.entity.Dish_Category;
import com.SavoryWok.entity.Themes;

public interface CategoryService2 {
	public List<Themes> getCategory2();
	
	public Themes getCategory2ById(Integer caid);
}
