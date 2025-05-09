package com.SavoryWok.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.SavoryWok.entity.Dishes;
import com.SavoryWok.entity.Page;
import com.SavoryWok.entity.User;
import com.SavoryWok.service.impl.UserBackServiceImpl;

@Controller

public class UserBackController {
	@Resource
	private UserBackServiceImpl userBackServiceImpl;

	@RequestMapping("/adm/login")
	public String login(@RequestParam("username") String username, @RequestParam("password") String password, Model model,
			HttpSession session) {
		User user = this.userBackServiceImpl.login(username, password);
		
		if (user != null) {
			session.setAttribute("user", user);
			return "adm/index";
		} else {
			model.addAttribute("errorinfo", "Incorrect username or password!");
			return "AdminHome";
		}
	}
	
	
	

	@RequestMapping("/userback/delete")
	public String deletelist(HttpSession session,@RequestParam(value="uid", required = false) Integer uid){
		User user=this.userBackServiceImpl.findUser(uid);
		this.userBackServiceImpl.deleteUser(user,uid);
		return "forward:/userback/get";
	}
	

	@RequestMapping("/userback/get")
	public String listgoods(User user,HttpSession session,HttpServletRequest request){
		String num = request.getParameter("pageNum");
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
