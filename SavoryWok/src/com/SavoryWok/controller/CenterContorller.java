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

@Controller
@RequestMapping("/center")
public class CenterContorller {
	@Resource
	private CenterServiceImpl centerServiceImpl;

	@RequestMapping("/get")
	public String edit(@RequestParam(value="uid", required = false) Integer uid,Model model,
            HttpSession session){

	    if (uid == null) {
	        User sessionUser = (User) session.getAttribute("user");
	        if (sessionUser != null) {
	            uid = sessionUser.getUid();
	        } else {
	            return "redirect:/login"; 
	        }
	    }
	    
		User user=this.centerServiceImpl.findCenter(uid);
		model.addAttribute("user", user);

		List<Topic> myTopics = this.centerServiceImpl.findTopicsByUid(uid);
	    

	    session.removeAttribute("commentedTopicList");
	    
	    session.setAttribute("myTopicList", myTopics);
		return "MyAccount";
	}
	@RequestMapping("/zhanghu")
	public String zhanghushezhi(@RequestParam(value="uid", required = false) Integer uid,Model model){
		User user=this.centerServiceImpl.findCenter(uid);
		model.addAttribute("user", user);
		return "AccountSettings";
	}

	@RequestMapping(value="update", method=RequestMethod.POST)
	public String updateBack(@RequestParam(value="uid", required = false) Integer uid,User user,
			@RequestParam("email") String email,
			@RequestParam("gexingqianming") String gexingqianming,
			@RequestParam("avatarpic") MultipartFile avatarpic, 
			HttpServletRequest request) {

		user=this.centerServiceImpl.findCenter(uid);
		user.setEmail(email);
		user.setGexingqianming(gexingqianming);
		
		
		if (!avatarpic.isEmpty()) {
			try {
				String uploadDir = request.getServletContext().getRealPath("/uploads/");
	            File uploadFolder = new File(uploadDir);
	            if (!uploadFolder.exists()) {
	                uploadFolder.mkdirs();
	            }

	            String fileName = UUID.randomUUID().toString() + "_" + avatarpic.getOriginalFilename();
	            File saveFile = new File(uploadDir, fileName);

	            avatarpic.transferTo(saveFile);

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
	
	@RequestMapping("/myTopics")
	public String showMyTopics(@RequestParam("uid") Integer uid, HttpSession session) {
	    session.removeAttribute("commentedTopicList");
	    
		List<Topic> myTopics = this.centerServiceImpl.findTopicsByUid(uid);
	    session.setAttribute("myTopicList", myTopics);
	    return "MyAccount";
	}
	
	@RequestMapping("/commentedTopics")
	public String showCommentedTopics(@RequestParam("uid") Integer uid, HttpSession session) {
	    
	    session.removeAttribute("myTopicList");
	    
		List<Topic> commentedTopics = this.centerServiceImpl.findCommentedTopicsByUid(uid);
	    session.setAttribute("commentedTopicList", commentedTopics);
	    return "MyAccount"; 
	}


}
