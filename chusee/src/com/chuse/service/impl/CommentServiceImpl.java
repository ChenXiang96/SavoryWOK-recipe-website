package com.chuse.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chuse.dao.impl.CommentDaoImpl;
import com.chuse.dao.impl.TopicDaoImpl;
import com.chuse.dao.impl.UserDaoImpl;
import com.chuse.entity.Comment;
import com.chuse.entity.Topic;
import com.chuse.entity.User;

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
