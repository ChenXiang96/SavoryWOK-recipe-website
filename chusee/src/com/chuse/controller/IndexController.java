package com.chuse.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.chuse.service.ProductService;

@Controller
public class IndexController {

	@Resource
	private ProductService productService;
	
	//商品首页的action
	@RequestMapping(value="/index")
	public String showIndex(Map<String,Object> map,HttpSession session){

		//把最热的10条商品添加到map集合中
		map.put("hList", productService.findHot());
		
		return "index"; 
	}
}
