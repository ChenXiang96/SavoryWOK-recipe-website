package com.chuse.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chuse.entity.Zhenxuan;
import com.chuse.service.impl.ZhenXuanServiceImpl;

@Controller
@RequestMapping("/archive")
public class ZhenXuanContorller {
	@Resource
	private ZhenXuanServiceImpl zhenxuanServiceImpl;
	//前------------------------------------------------------
	
	//前-查-在商品页面显示商品列表
	@RequestMapping("/list")
	public String list(HttpSession session){
			List<Zhenxuan> list=this.zhenxuanServiceImpl.listZhenxuans();
			session.setAttribute("list", list);
			System.out.print("con");
			return "archive";
	}

}
