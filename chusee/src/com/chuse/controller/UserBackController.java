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
import com.chuse.entity.Product;
import com.chuse.entity.User;
import com.chuse.service.impl.UserBackServiceImpl;

@Controller
@RequestMapping("/userback")
public class UserBackController {
	@Resource
	private UserBackServiceImpl userBackServiceImpl;
	//后台-----------------------------------------------------

	@RequestMapping("/delete")
	public String deletelist(HttpSession session,@RequestParam(value="uid", required = false) Integer uid){
		User user=this.userBackServiceImpl.findUser(uid);
		System.out.print("con快删啊");
		this.userBackServiceImpl.deleteUser(user,uid);
		return "forward:/userback/get";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//后-查-
	@RequestMapping("/get")
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
