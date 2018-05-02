package com.chuse.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.chuse.entity.Product;
import com.chuse.service.ProductService;



@Controller
public class ProductController {
	
	@Resource
	private ProductService productService;

	//根据菜品pid查询菜品
	@RequestMapping(value="findByPid/{pid}",method=RequestMethod.GET)
	public String findByPid(@PathVariable("pid") Integer pid,Map<String,Product> map){
		map.put("product", productService.findByPid(pid));
		return "health";
	}
}



















