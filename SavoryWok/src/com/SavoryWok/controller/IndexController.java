package com.SavoryWok.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.SavoryWok.dao.CategorySecondGroupDao;
import com.SavoryWok.entity.CategorySecondGroup;
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
	
	@Resource // 添加DAO注入
	private CategorySecondGroupDao categorySecondGroupDao;


	
	//商品首页的action
	@RequestMapping(value="/index")
	public String showIndex(Map<String,Object> map,HttpSession session){
		//把所有的一级分类都存入到session中
		session.setAttribute("cList", categoryService.getCategory());
		//把所有的专题一级分类都存入到session中
		session.setAttribute("cList2", categoryService2.getCategory2());
		session.setAttribute("activeMenu", "home");
		// 新增：加载分类视图数据
	    List<CategorySecondGroup> groups = categorySecondGroupDao.findAll();
	    session.setAttribute("categorySecondGroups", groups);
	    
	   

		//把最热的10条商品添加到map集合中
		map.put("hList", DishesService.findHot());
		
		map.put("nList", DishesService.findNew());
		
		//把3条专题存放到map集合中
		map.put("nList2", subjectService.findNew2());
		
		return "index"; 
	}
}
