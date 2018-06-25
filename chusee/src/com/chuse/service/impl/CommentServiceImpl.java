package com.chuse.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chuse.dao.impl.CommentDaoImpl;
import com.chuse.entity.Comment;

@Transactional
@Service("commentService")
public class CommentServiceImpl {


	@Resource
	private CommentDaoImpl commentdaoimpl;
	
	
	public List<Comment> findbytid(Integer tid){
		
		
		return commentdaoimpl.findbytid(tid);
	}
}
