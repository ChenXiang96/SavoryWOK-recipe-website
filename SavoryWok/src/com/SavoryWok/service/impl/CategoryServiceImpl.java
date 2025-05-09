package com.SavoryWok.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.SavoryWok.dao.CategoryDao;
import com.SavoryWok.entity.Dish_Category;
import com.SavoryWok.service.CategoryService;

@Transactional
@Service("categoryService")
public class CategoryServiceImpl implements CategoryService{
	
	@Resource
	private CategoryDao categoryDao;
	
	public List<Dish_Category> getCategory() {
		return categoryDao.findAll();
	}

}
