package com.SavoryWok.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.SavoryWok.entity.Dishes;
import com.SavoryWok.entity.Zhenxuan;
import com.SavoryWok.service.impl.ZhenXuanServiceImpl;

@Controller
@RequestMapping("/archive")
public class ZhenXuanContorller {
	@Resource
	private ZhenXuanServiceImpl zhenxuanServiceImpl;
	//前------------------------------------------------------
	
	//前-查-在商品页面显示珍选列表
	@RequestMapping("/list")
	public String list(HttpSession session){
			List<Zhenxuan> list=this.zhenxuanServiceImpl.listZhenxuans();
			session.setAttribute("list", list);
			System.out.print("con");
			return "archive";
	}
	
	@RequestMapping("xiangqing")
	public String edit(@RequestParam(value="zid", required = false) Integer zid,Model model){
	
		Zhenxuan zhenxuan=this.zhenxuanServiceImpl.findZhenxuan(zid);
		model.addAttribute("zhenxuan", zhenxuan);
		
		return "zhnexuanxq";
	}

}
