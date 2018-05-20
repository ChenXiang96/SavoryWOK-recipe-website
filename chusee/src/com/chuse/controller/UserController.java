package com.chuse.controller;


import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chuse.entity.User;
import com.chuse.service.UserService;

@Controller
public class UserController{

	@Resource
	private UserService userService;
	
	@ModelAttribute
	public User getUser(){
		return new User();
	}

	//用户注册的跳转
	@RequestMapping("/userRegister")
	public String register() {
		return "register";
	}
	
}