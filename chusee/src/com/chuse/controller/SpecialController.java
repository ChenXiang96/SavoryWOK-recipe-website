package com.chuse.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chuse.entity.Special;
import com.chuse.service.impl.SepcialServiceImpl;

@Controller
public class SpecialController {

	@Resource
	private SepcialServiceImpl specialserviceimpl;
	// 显示全部话题
	@RequestMapping("/specialshow")
	public String list(HttpSession session) {
		List<Special> slist = this.specialserviceimpl.listSpecials();
		session.setAttribute("slist", slist);

		System.out.println(slist.get(0).getSid());
		return "reservation";
	}

	
}
