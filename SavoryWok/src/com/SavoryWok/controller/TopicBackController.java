package com.SavoryWok.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.SavoryWok.entity.Page;
import com.SavoryWok.entity.Topic;
import com.SavoryWok.service.impl.TopicBackServiceImpl;

@Controller
@RequestMapping("/topic")
public class TopicBackController {

	@Resource
	private TopicBackServiceImpl topicBackServiceImpl;
	@RequestMapping("/get")
	public String listTopic(Topic topic,HttpSession session,HttpServletRequest request){
		String num = request.getParameter("pageNum");
		int pageNumber = 1;
		if(num!=null){
			pageNumber = Integer.parseInt(num);
		}		
		List<Topic> list=this.topicBackServiceImpl.findByPage(pageNumber, 5);
		Page page = new Page(pageNumber,5);
		page.setList(list);
		page.setTotalCount(this.topicBackServiceImpl.findByCount());
		session.setAttribute("list", list);
		session.setAttribute("page", page);
		return "adm/detail/topicList";
	}
	

	@RequestMapping("/delete")
	public String deletelist(HttpSession session,@RequestParam(value="tid", required = false) Integer tid){
		Topic topic=this.topicBackServiceImpl.findTopic(tid);
		this.topicBackServiceImpl.deleteTopic(topic,tid);
		return "forward:/topic/get";
	}
}
