package com.chuse.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.chuse.entity.Product;
import com.chuse.entity.Subject;
import com.chuse.service.ProductService;



@Controller
public class ProductController {
	
	@Resource
	private ProductService productService;
	//首页上跳转至健康
	@RequestMapping(value="/myHealth")

	public String showIndex(Map<String,Object> map,HttpSession session){

		//把最热的10条商品添加到map集合中
		map.put("hList", productService.findHHot());
		
		
		return "health"; 
	}
	
	

	//首页中点击一级分类查询商品
	@RequestMapping(value="/findByCid/{cid}/{page}")
	public String findByCid(@PathVariable("cid") Integer cid,@PathVariable("page") Integer page
			,Map<String,Object> map){
		List<Product> products = productService.findByCid(cid, page);
		Integer count = productService.CountPageProductFromCategory(cid);
		if(page > count){
			page = 1;
		}
		map.put("products", products);
		//把当前的页数存放到map中
		map.put("page", page);
		//总共有多少页
		map.put("count",count);
		map.put("cid", cid);
		return "recai";
	}
	//根据二级分类查询商品
		@RequestMapping(value="findByCsid/{csid}/{page}")	
		public String findByCsid(@PathVariable("csid") Integer csid,@PathVariable("page") Integer page
				,Map<String,Object> map){
			Integer count = productService.CountPageProductFromCategorySecond(csid);
			if(page > count){
				page = 1;
			}
			List<Product> products = productService.findByCsid(csid, page);
			map.put("products", products);
			//把当前的页数存放到map中
			map.put("page", page);
			//总共有多少页
			map.put("count",count);
			map.put("csid", csid);
			return "recai";
		}
		
	//根据菜品pid查询菜品
	@RequestMapping(value="findByPid/{pid}",method=RequestMethod.GET)
	public String findByPid(@PathVariable("pid") Integer pid,Map<String,Product> map){
		map.put("product", productService.findByPid(pid));
		return "caipinxiangqing";
	}
	

}



















