package com.SavoryWok.service;

import java.util.List;

import com.SavoryWok.entity.Category;
import com.SavoryWok.entity.Category2;

public interface CategoryService2 {
	public List<Category2> getCategory2();
	
	public Category2 getCategory2ById(Integer caid);
}
