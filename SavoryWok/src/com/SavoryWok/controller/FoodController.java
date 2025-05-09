package com.SavoryWok.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.SavoryWok.entity.Food;
import com.SavoryWok.service.FoodServiceImpl;

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

	@RequestMapping("/list")
	public String list(HttpSession session){
		List<Food> list=this.foodServiceImpl.listFoods();
		session.setAttribute("list", list);
		return "index";
	}

}
