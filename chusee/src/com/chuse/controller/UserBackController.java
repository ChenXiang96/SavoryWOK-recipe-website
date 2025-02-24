package com.chuse.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.chuse.entity.Page;
import com.chuse.entity.Dishes;
import com.chuse.entity.User;
import com.chuse.service.impl.UserBackServiceImpl;

@Controller

public class UserBackController {
	@Resource
	private UserBackServiceImpl userBackServiceImpl;
	// 登录
	@RequestMapping("/adm/login")
	public String login(@RequestParam("username") String username, @RequestParam("password") String password, Model model,
			HttpSession session) {
		User user = this.userBackServiceImpl.login(username, password);
		
		if (user != null) {
			session.setAttribute("user", user);
			return "adm/index";
		} else {
			model.addAttribute("errorinfo", "您的账号密码不正确！");
			return "Backstage";
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//后台-----------------------------------------------------

	@RequestMapping("/userback/delete")
	public String deletelist(HttpSession session,@RequestParam(value="uid", required = false) Integer uid){
		User user=this.userBackServiceImpl.findUser(uid);
		System.out.print("con快删啊");
		this.userBackServiceImpl.deleteUser(user,uid);
		return "forward:/userback/get";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//后-查-
	@RequestMapping("/userback/get")
	public String listgoods(User user,HttpSession session,HttpServletRequest request){
		String num = request.getParameter("pageNum");//获取用户要看的页码
		int pageNumber = 1;
		if(num!=null){
			pageNumber = Integer.parseInt(num);
		}		
		List<User> list=this.userBackServiceImpl.findByPage(pageNumber, 5);
		Page page = new Page(pageNumber,5);
		page.setList(list);
		page.setTotalCount(this.userBackServiceImpl.findByCount());
		session.setAttribute("list", list);
		session.setAttribute("page", page);
		System.out.println("con xiaomi");
		return "adm/detail/userList";
	 }
}
