package com.chuse.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chuse.entity.Food;
import com.chuse.service.FoodServiceImpl;

@Controller
@RequestMapping("/food")
public class FoodController {

	@Resource
	private FoodServiceImpl foodServiceImpl;
	
	@RequestMapping("/find")
	public String find(HttpSession session,@RequestParam("id") Integer id){
		Food food=this.foodServiceImpl.findById(id);
		
		return "cai.jsp";
	}
	
	//前-查-在商品页面显示商品列表
	@RequestMapping("/list")
	public String list(HttpSession session){
		List<Food> list=this.foodServiceImpl.listFoods();
		session.setAttribute("list", list);
		return "index";
	}

}
