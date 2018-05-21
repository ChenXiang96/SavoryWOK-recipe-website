package com.chuse.controller;


import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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

	// 使用ajax判断用户是否存在
		@RequestMapping(value="/checkUser/{userName}",method=RequestMethod.POST)
		@ResponseBody
		public String existUser(@PathVariable("userName") String userName, HttpServletResponse response) 
				throws IOException {
			System.out.println(userName);
			response.setContentType("text/html;charset=UTF-8");
			if (userService.existUser(userName) != null) {
				// 查询到该用户:用户名已经存在
				response.getWriter().println("1");
			} else {
				// 没查询到该用户:用户名可以使用
				response.getWriter().println("0");
			}
			return null;
		}
	
	//用户注册的跳转
	@RequestMapping("/userRegister")
	public String register() {
		return "register";
	}
	//跳转到用户登录
		@RequestMapping(value="/userLogin")
		public String userLogin(){
			return "Login";
		}
	
}