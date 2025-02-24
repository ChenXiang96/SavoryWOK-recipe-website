package com.chuse.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.chuse.service.CategoryService;
import com.chuse.service.CategoryService2;
import com.chuse.service.DishesService;
import com.chuse.service.SubjectService;

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


	
	//商品首页的action
	@RequestMapping(value="/index")
	public String showIndex(Map<String,Object> map,HttpSession session){
		//把所有的一级分类都存入到session中
		session.setAttribute("cList", categoryService.getCategory());
		//把所有的专题一级分类都存入到session中
		session.setAttribute("cList2", categoryService2.getCategory2());
		
		
		
		//把最热的10条商品添加到map集合中
		map.put("hList", DishesService.findHot());
		
		map.put("nList", DishesService.findNew());
		
		//把3条专题存放到map集合中
		map.put("nList2", subjectService.findNew2());
		
		return "index"; 
	}
}
