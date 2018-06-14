package com.chuse.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chuse.dao.CategoryDao;
import com.chuse.dao.CategoryDao2;
import com.chuse.entity.Category;
import com.chuse.entity.Category2;
import com.chuse.service.CategoryService;
import com.chuse.service.CategoryService2;

@Transactional
@Service("categoryService2")
public class CategoryServiceImpl2 implements CategoryService2{

	@Resource
	private CategoryDao2 categoryDao2;
	
	public List<Category2> getCategory2() {
		return categoryDao2.findAll2();
	}


}
