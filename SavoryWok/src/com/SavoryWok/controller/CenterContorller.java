package com.SavoryWok.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
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

import com.SavoryWok.entity.Dishes;
import com.SavoryWok.entity.Topic;
import com.SavoryWok.entity.User;
import com.SavoryWok.service.impl.CenterServiceImpl;
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
	public String edit(@RequestParam(value="uid", required = false) Integer uid,Model model,
            HttpSession session){
		
		// 从session中获取uid作为备选方案
	    if (uid == null) {
	        User sessionUser = (User) session.getAttribute("user");
	        if (sessionUser != null) {
	            uid = sessionUser.getUid();
	        } else {
	            return "redirect:/login"; // 没有uid时跳转登录
	        }
	    }
	    
		User user=this.centerServiceImpl.findCenter(uid);
		model.addAttribute("user", user);
		
		/**if (session.getAttribute("myTopicList") == null) {
	        List<Topic> myTopics = this.centerServiceImpl.findTopicsByUid(uid);
	        session.setAttribute("myTopicList", myTopics);
	    }**/
		
		List<Topic> myTopics = this.centerServiceImpl.findTopicsByUid(uid);
	    System.out.println("用户动态数量：" + myTopics.size());
	    
	    // 清除评论动态数据（新增）
	    session.removeAttribute("commentedTopicList");
	    
	    session.setAttribute("myTopicList", myTopics);
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
	
	// CenterController.java 新增方法
	@RequestMapping("/myTopics")
	public String showMyTopics(@RequestParam("uid") Integer uid, HttpSession session) {
		// 清除评论数据（新增）
	    session.removeAttribute("commentedTopicList");
	    
		List<Topic> myTopics = this.centerServiceImpl.findTopicsByUid(uid);
	    System.out.println("查询到的动态数量：" + myTopics.size()); // 添加日志
	    session.setAttribute("myTopicList", myTopics);
	    return "center";
	}
	
	// 新增获取评论动态的方法
	@RequestMapping("/commentedTopics") // 添加请求映射
	public String showCommentedTopics(@RequestParam("uid") Integer uid, HttpSession session) {
	    
		// 清除我的动态数据（新增）
	    session.removeAttribute("myTopicList");
	    
		List<Topic> commentedTopics = this.centerServiceImpl.findCommentedTopicsByUid(uid);
	    System.out.println("评论过的动态数量：" + commentedTopics.size()); // 调试日志
	    session.setAttribute("commentedTopicList", commentedTopics);
	    return "center"; // 返回同一个视图
	}



	



	
//	@RequestMapping("/password")
//	public String password(@RequestParam("newpass") String newpass, @RequestParam("uid") Integer uid,
//			@RequestParam("ensurepass") String ensurepass,
//			Model model,HttpSession session) {
//		User u = this.centerServiceImpl.xiugaiPassword(uid,newpass,ensurepass);
//		return "";			
//	}
}
