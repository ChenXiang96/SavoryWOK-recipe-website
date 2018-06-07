package com.chuse.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chuse.entity.Food;
import com.chuse.entity.Topic;
import com.chuse.service.FoodServiceImpl;
import com.chuse.service.impl.TopicServiceImpl;


@Controller
@RequestMapping("/topic")
public class TopicController {
  
	@Resource
	private TopicServiceImpl topicServiceImpl;
	
	
	//显示全部话题
	@RequestMapping("/test")
	public String list(HttpSession session){
		List<Topic> list=this.topicServiceImpl.listTopics();
		session.setAttribute("list", list);
		return "community";
	}

	
	@RequestMapping("/list")
	public String test(){
		return "community";
	}
	
	
}
