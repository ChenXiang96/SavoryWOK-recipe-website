package com.chuse.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
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
	
		
		return find(hql,1,100); 
	}
	
	public void addcomment(Comment c){
		Session session=sessionFactory.openSession();
		Transaction transtion=session.beginTransaction();
		session.save(c);	
		System.out.print("dao"+c.getCtid());
		transtion.commit();
		session.close();

	}	

}
