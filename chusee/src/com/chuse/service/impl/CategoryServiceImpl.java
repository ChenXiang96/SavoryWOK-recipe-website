package com.chuse.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chuse.dao.CategoryDao;
import com.chuse.entity.Category;
import com.chuse.service.CategoryService;

@Transactional
@Service("categoryService")
public class CategoryServiceImpl implements CategoryService{
	
	@Resource
	private CategoryDao categoryDao;
	
	public List<Category> getCategory() {
		return categoryDao.findAll();
	}

}
