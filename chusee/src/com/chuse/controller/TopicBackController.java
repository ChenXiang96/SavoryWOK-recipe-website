package com.chuse.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chuse.entity.Page;
import com.chuse.entity.Topic;
import com.chuse.service.impl.TopicBackServiceImpl;

@Controller
@RequestMapping("/topic")
public class TopicBackController {

	@Resource
	private TopicBackServiceImpl topicBackServiceImpl;
	@RequestMapping("/get")
	public String listTopic(Topic topic,HttpSession session,HttpServletRequest request){
		String num = request.getParameter("pageNum");//获取用户要看的页码
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
		//System.out.println(topic.getDescription());
		return "adm/detail/topicList";
	}
	
	
	//后-删除健康
	@RequestMapping("/delete")
	public String deletelist(HttpSession session,@RequestParam(value="tid", required = false) Integer tid){
		Topic topic=this.topicBackServiceImpl.findTopic(tid);
		System.out.print("con快删啊");
		this.topicBackServiceImpl.deleteTopic(topic,tid);
		return "forward:/topic/get";
	}
}
