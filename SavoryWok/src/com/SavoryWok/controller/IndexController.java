package com.SavoryWok.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.SavoryWok.dao.CategorySecondGroupDao;
import com.SavoryWok.entity.IngredientCategoryGroup;
import com.SavoryWok.service.CategoryService;
import com.SavoryWok.service.CategoryService2;
import com.SavoryWok.service.DishesService;
import com.SavoryWok.service.SubjectService;

@Controller	
public class IndexController {
	@Resource
	private CategoryService categoryService;
	
	@Resource
	private CategoryService2 categoryService2;
	

	@Resource
	private DishesService DishesService;
	

	@Resource
	private SubjectService subjectService;
	
	@Resource
	private CategorySecondGroupDao categorySecondGroupDao;


	

	@RequestMapping(value="/index")
	public String showIndex(Map<String,Object> map,HttpSession session){

		session.setAttribute("cList", categoryService.getCategory());

		session.setAttribute("cList2", categoryService2.getCategory2());
		session.setAttribute("activeMenu", "home");

	    List<IngredientCategoryGroup> groups = categorySecondGroupDao.findAll();
	    session.setAttribute("categorySecondGroups", groups);
	    

		map.put("hList", DishesService.findHot());
		
		map.put("nList", DishesService.findNew());
		

		map.put("nList2", subjectService.findNew2());
		
		return "index"; 
	}
}
