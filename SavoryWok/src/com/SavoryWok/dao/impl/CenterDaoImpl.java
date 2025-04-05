package com.SavoryWok.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.SavoryWok.entity.Topic;
import com.SavoryWok.entity.User;

@Repository
public class CenterDaoImpl {
	
	@Resource
	private SessionFactory sessionFactory;
	//前台---------------------------------------------------------
	//往center页面跳，通过id---获取用户的信息
	public User findById(Integer uid){	
		User user = (User)this.sessionFactory.getCurrentSession().
				createQuery("from User where uid = ?").
				setParameter(0, uid).uniqueResult();
		return user;
	}
	//前-改-submit的那个提交 ---调用修改--
	public User updateUser(User user){
		Session session=sessionFactory.openSession();  
		Transaction tx=null;  
		try{
		    tx=session.beginTransaction(); 
		    System.out.print("aaaaa");
		    session.update(user);  
		    tx.commit();  
		} catch (Exception e) {  
		    tx.rollback();  
		    throw new RuntimeException(e);  
		} finally{  
		    session.close();  
		}
		return user;		
	}
	
	
//	//修改密码
//	public User gaiPassword(User user){
//		Session session=sessionFactory.openSession();
//		Transaction transtion=session.beginTransaction();
//		session.save(user);			
//		transtion.commit();
//		session.close();
//		return user;
//	}
//	
//	public User findByIdPass(Integer uid,String ensurepass,String newpass){	
//		User user = (User)this.sessionFactory.getCurrentSession().
//				createQuery("from User where uid = ?").
//				setParameter(0, uid).uniqueResult();
//		return user;
//	}
	
	// CenterDaoImpl.java 新增方法
	public List<Topic> findTopicsByUid(Integer uid) {
	    return this.sessionFactory.getCurrentSession()
	        .createQuery("from Topic where uid = :uid", Topic.class)
	        .setParameter("uid", uid)
	        .list();
	}
	
	public List<Integer> findCommentedTidsByUid(Integer uid) {
	    // 查询去重后的tid列表
	    return sessionFactory.getCurrentSession()
	        .createQuery("SELECT DISTINCT c.tid FROM Comment c WHERE c.uid = :uid", Integer.class)
	        .setParameter("uid", uid)
	        .list();
	}

	public List<Topic> findTopicsByTids(List<Integer> tids) {
	    return sessionFactory.getCurrentSession()
	        .createQuery("FROM Topic WHERE tid IN (:tids)", Topic.class)
	        .setParameterList("tids", tids)
	        .list();
	}



	
	
}
