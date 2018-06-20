package com.chuse.dao.impl;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.chuse.entity.User;

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

	
	
}
