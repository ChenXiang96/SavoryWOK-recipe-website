package com.chuse.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.chuse.entity.Product;
import com.chuse.entity.User;
import com.chuse.service.impl.CenterServiceImpl;

@Controller
@RequestMapping("/center")
public class CenterContorller {
	@Resource
	private CenterServiceImpl centerServiceImpl;
	//前---------------------------------------------------
	//个人中心跳转和修改信息
	@RequestMapping("/get")
	public String edit(@RequestParam(value="uid", required = false) Integer uid,Model model){
		User user=this.centerServiceImpl.findCenter(uid);
		model.addAttribute("user", user);
		return "center";
	}
	@RequestMapping("/zhanghu")
	public String zhanghushezhi(@RequestParam(value="uid", required = false) Integer uid,Model model){
		User user=this.centerServiceImpl.findCenter(uid);
		model.addAttribute("user", user);
		return "zhanghushezhi";
	}
	//保存修改
	@RequestMapping(value="update", method=RequestMethod.POST)
	public String updateBack(@RequestParam(value="uid", required = false) Integer uid,User user,
			@RequestParam("email") String email,
			@RequestParam("gexingqianming") String gexingqianming) {
		user=this.centerServiceImpl.findCenter(uid);
		System.out.print("con111");
		user.setEmail(email);
		user.setGexingqianming(gexingqianming);
		System.out.print("con");
		this.centerServiceImpl.gaiUser(user);
	
		return "zhanghushezhi";
	}
	
	
//	@RequestMapping("/password")
//	public String password(@RequestParam("newpass") String newpass, @RequestParam("uid") Integer uid,
//			@RequestParam("ensurepass") String ensurepass,
//			Model model,HttpSession session) {
//		User u = this.centerServiceImpl.xiugaiPassword(uid,newpass,ensurepass);
//		return "";			
//	}
}
