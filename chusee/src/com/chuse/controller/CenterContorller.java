package com.chuse.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.chuse.entity.Dishes;
import com.chuse.entity.User;
import com.chuse.service.impl.CenterServiceImpl;
/*
 * 
 * 
 * 
 */
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
			@RequestParam("gexingqianming") String gexingqianming,
			@RequestParam("avatarpic") MultipartFile avatarpic, // 处理上传的文件
			HttpServletRequest request) {
		//测试修改
		user=this.centerServiceImpl.findCenter(uid);
		System.out.print("con111");
		user.setEmail(email);
		user.setGexingqianming(gexingqianming);
		
		
		if (!avatarpic.isEmpty()) {
			try {
				String uploadDir = request.getServletContext().getRealPath("/uploads/");
	            File uploadFolder = new File(uploadDir);
	            if (!uploadFolder.exists()) {
	                uploadFolder.mkdirs();
	            }
	         // 生成新文件名（防止重复）
	            String fileName = UUID.randomUUID().toString() + "_" + avatarpic.getOriginalFilename();
	            File saveFile = new File(uploadDir, fileName);
	         // 保存文件到服务器
	            avatarpic.transferTo(saveFile);

	            // 将图片路径保存到数据库（假设前端能访问 `/uploads/` 目录）
	            user.setUimage("/uploads/" + fileName);
	            
			} catch (IOException e) {
	            e.printStackTrace();
	        }
			
			
			
		}
		
		
		
		
		System.out.print("con");
		this.centerServiceImpl.gaiUser(user);
		System.out.print("congai");
		return "forward:/center/get";
	}
	
	
//	@RequestMapping("/password")
//	public String password(@RequestParam("newpass") String newpass, @RequestParam("uid") Integer uid,
//			@RequestParam("ensurepass") String ensurepass,
//			Model model,HttpSession session) {
//		User u = this.centerServiceImpl.xiugaiPassword(uid,newpass,ensurepass);
//		return "";			
//	}
}
