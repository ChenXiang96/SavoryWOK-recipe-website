package com.SavoryWok.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.SavoryWok.dao.CategoryDao;
import com.SavoryWok.dao.CategoryDao2;
import com.SavoryWok.entity.Dish_Category;
import com.SavoryWok.entity.Themes;
import com.SavoryWok.service.CategoryService;
import com.SavoryWok.service.CategoryService2;

@Transactional
@Service("categoryService2")
public class CategoryServiceImpl2 implements CategoryService2{

	@Resource
	private CategoryDao2 categoryDao2;
	
	public List<Themes> getCategory2() {
		return categoryDao2.findAll2();
	}
	
	@Override
    public Themes getCategory2ById(Integer caid) {
        return categoryDao2.getCategory2ById(caid);
    }


}
