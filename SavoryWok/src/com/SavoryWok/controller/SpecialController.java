package com.SavoryWok.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.SavoryWok.entity.Dishes;
import com.SavoryWok.entity.Special;
import com.SavoryWok.service.SpecialDishesService;
import com.SavoryWok.service.impl.SpecialServiceImpl;

@Controller
public class SpecialController {

	@Resource
	private SpecialServiceImpl specialserviceimpl;
	// 显示全部话题
	@RequestMapping("/specialshow")
	public String list(HttpSession session) {
		List<Special> slist = this.specialserviceimpl.listSpecials();
		session.setAttribute("slist", slist);
		session.setAttribute("activeMenu", "Themes");

		System.out.println(slist.get(0).getSid());
		return "reservation";
	}
	
	
	@Autowired  // 新增注入
    private SpecialDishesService specialDishesService;
	@RequestMapping("/essayshow")
	public String detail(HttpSession session,@RequestParam("se") String se){
	
		int sid = Integer.parseInt(se);
		
		Special s = new Special();
		s= this.specialserviceimpl.findOne(sid);
		session.setAttribute("s", s);
		
		List<Dishes> dishesList = specialDishesService.getDishesBySpecialId(sid);
	    session.setAttribute("dishesList", dishesList);
		
		return "specialdetail";
	}

	
}
