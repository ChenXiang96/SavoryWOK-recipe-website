package com.chuse.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chuse.entity.Comment;
import com.chuse.entity.Topic;
import com.chuse.service.impl.CommentServiceImpl;

@Controller
public class CommentController {

	@Resource
	private CommentServiceImpl commentserviceimpl;

	
	@RequestMapping("commentshow")
	public String showcomment(HttpSession session, @RequestParam("uid") String uid, @RequestParam("tid") String tid) {

		int uid2 = Integer.parseInt(uid);
		int tid2 = Integer.parseInt(tid);

		System.err.println(tid);
		System.err.println(uid);

		List<Comment> list = this.commentserviceimpl.findbytid(tid2);
		session.setAttribute("clist", list);

//		System.out.println(list.get(0).getTid());

		return "comment";
	}
	
	@RequestMapping("commentadd")
	public String addComment(){
		
		return "comment";
	}
}
