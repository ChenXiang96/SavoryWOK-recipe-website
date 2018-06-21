package com.chuse.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;

import com.chuse.entity.zhenxuan;
import com.chuse.service.impl.ZhenXuanServiceImpl;

@RequestMapping("/archive")

public class ZhenXuanContorller {
	@Resource
	private ZhenXuanServiceImpl zhenxuanServiceImpl;
	//前------------------------------------------------------
	
	//前-查-在商品页面显示商品列表
	@RequestMapping("/list")
	public String list(HttpSession session){
			List<zhenxuan> list=this.zhenxuanServiceImpl.listProducts();
			session.setAttribute("list", list);
			System.out.print("con");
			return "cookbook";
	}

}
