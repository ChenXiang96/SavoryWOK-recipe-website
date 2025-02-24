package com.chuse.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.chuse.entity.Dishes;
import com.chuse.entity.Subject;
import com.chuse.service.DishesService;



@Controller
public class DishesController {
	
	@Resource
	private DishesService DishesService;
	

	//首页中点击一级分类查询商品
	@RequestMapping(value="/findByCid/{cid}/{page}")
	public String findByCid(@PathVariable("cid") Integer cid,@PathVariable("page") Integer page
			,Map<String,Object> map){
		List<Dishes> Dishes = DishesService.findByCid(cid, page);
		Integer count = DishesService.CountPageDishesFromCategory(cid);
		if(page > count){
			page = 1;
		}
		map.put("Dishes", Dishes);
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
			Integer count = DishesService.CountPageDishesFromCategorySecond(csid);
			if(page > count){
				page = 1;
			}
			List<Dishes> Dishes = DishesService.findByCsid(csid, page);
			map.put("Dishes", Dishes);
			//把当前的页数存放到map中
			map.put("page", page);
			//总共有多少页
			map.put("count",count);
			map.put("csid", csid);
			return "recai";
		}
		
		
		
	//根据菜品pid查询菜品
	@RequestMapping(value="findByPid/{pid}",method=RequestMethod.GET)
	public String findByPid(@PathVariable("pid") Integer pid,Map<String,Dishes> map){
		map.put("Dishes", DishesService.findByPid(pid));
		return "caipinxiangqing";
	}

	
}



















