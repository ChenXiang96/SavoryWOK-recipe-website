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
	
	//首页中点击专题一级分类查询商品
		@RequestMapping(value="/findByCaid/{caid}/{page}")
		public String findByCaid(@PathVariable("caid") Integer caid,@PathVariable("page") Integer page
				,Map<String,Object> map){
			List<Subject> subjects = productService.findByCaid(caid, page);
			Integer count = productService.CountPageSubjectFromCategory2(caid);
			if(page > count){
				page = 1;
			}
			map.put("subjects", subjects);
			//把当前的页数存放到map中
			map.put("page", page);
			//总共有多少页
			map.put("count",count);
			map.put("caid", caid);
			return "zhuantixaingqing";
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
		
		//根据专题二级分类查询商品
				@RequestMapping(value="findByCasid/{casid}/{page}")	
				public String findByCasid(@PathVariable("casid") Integer casid,@PathVariable("page") Integer page
						,Map<String,Object> map){
					Integer count = productService.CountPageSubjectFromCategorySecond2(casid);
					if(page > count){
						page = 1;
					}
					List<Subject> subjects = productService.findByCasid(casid, page);
					map.put("subjects", subjects);
					//把当前的页数存放到map中
					map.put("page", page);
					//总共有多少页
					map.put("count",count);
					map.put("casid", casid);
					return "zhuantixiangqing";
				}
		
	//根据菜品pid查询菜品
	@RequestMapping(value="findByPid/{pid}",method=RequestMethod.GET)
	public String findByPid(@PathVariable("pid") Integer pid,Map<String,Product> map){
		map.put("product", productService.findByPid(pid));
		return "caipinxiangqing";
	}
	
	//根据专题pid查询菜品
		@RequestMapping(value="findByPid2/{pid}",method=RequestMethod.GET)
		public String findByPid2(@PathVariable("pid") Integer pid,Map<String,Subject> map){
			map.put("subject", productService.findByPid2(pid));
			return "zhuantixiangqing";
		}
		
		@RequestMapping(value="findBySid/{pid}",method=RequestMethod.GET)
		public String findBySid(@PathVariable("pid") Integer pid,Map<String,Subject> map){
			map.put("subject", productService.findBySid(pid));
			return "index";
		}
	
}



















