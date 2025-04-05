package com.SavoryWok.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.SavoryWok.dao.impl.CommentDaoImpl;
import com.SavoryWok.dao.impl.TopicDaoImpl;
import com.SavoryWok.dao.impl.UserDaoImpl;
import com.SavoryWok.entity.Comment;
import com.SavoryWok.entity.Topic;
import com.SavoryWok.entity.User;

@Transactional
@Service("commentService")
public class CommentServiceImpl {


	@Resource
	private CommentDaoImpl commentdaoimpl;

	@Resource
	private UserDaoImpl userdaoimpl;
	
	@Resource
	private TopicDaoImpl topicdaoimpl;
	public Topic findOneById(Integer id){
		return this.topicdaoimpl.findOne(id);
	}
	
	public List<Comment> findbytid(Integer tid){
		
		
		return commentdaoimpl.findbytid(tid);
	}
	
	public User addComment(Comment ct){
		System.out.println("service");

		User u = userdaoimpl.findById(ct.getUid());
		ct.setUimg(u.getUimage());
		ct.setUname(u.getUsername());
		commentdaoimpl.addcomment(ct);
	
		return userdaoimpl.findById(ct.getUid());
	}

}
