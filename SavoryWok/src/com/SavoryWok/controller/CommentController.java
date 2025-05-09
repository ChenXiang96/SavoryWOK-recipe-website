package com.SavoryWok.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.SavoryWok.entity.Comment;
import com.SavoryWok.entity.Topic;
import com.SavoryWok.entity.User;
import com.SavoryWok.service.impl.CommentServiceImpl;

@Controller
public class CommentController {

	@Resource
	private CommentServiceImpl commentserviceimpl;

	
	@RequestMapping("commentshow")
	public String showcomment(HttpSession session, @RequestParam("tid") String tid) {

		int tid2 = Integer.parseInt(tid);

		System.err.println(tid);

		Topic t = new Topic();
		t = this.commentserviceimpl.findOneById(tid2);

		session.setAttribute("t", t);

		
		List<Comment> list = this.commentserviceimpl.findbytid(tid2);
		
		session.setAttribute("clist", list);

//		System.out.println(list.get(0).getTid());

		return "MomentDetails";
	}
	
	@RequestMapping("commentadd")
	public String addComment(@RequestParam("cdes") String cdes,@RequestParam("uid") String uid,@RequestParam("tid") String tid) throws ParseException{
		
		System.err.println(cdes);
		System.err.println(uid);
		int uid2 = Integer.parseInt(uid);
		int tid2 = Integer.parseInt(tid);
		User u = new User();
		Comment ct =new Comment();
		ct.setCdes(cdes);
		ct.setUid(uid2);
		ct.setTid(tid2);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
		Date date = df.parse(df.format(System.currentTimeMillis()));
		ct.setCtime(date);
		u = this.commentserviceimpl.addComment(ct);
		System.out.println(ct.getUname());	
		return "redirect:commentshow?tid="+tid2;
		
	}
}
