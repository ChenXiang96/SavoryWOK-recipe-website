package com.chuse.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.chuse.dao.CommentDao;
import com.chuse.entity.Comment;
import com.chuse.entity.Topic;


@Repository("commentDao")
@SuppressWarnings("all")
public class CommentDaoImpl extends BaseDaoImpl<Comment>implements CommentDao {


	@Resource
	private SessionFactory sessionFactory;
	

	public List<Comment> findbytid(Integer tid) {
		String hql = "from Comment c where c.tid ="+tid;
		Query query = this.getCurrentSession().createQuery(hql);
	//query.setParameter(0, tid);
		
		
		return find(hql,1,100); 
	}
	
}
