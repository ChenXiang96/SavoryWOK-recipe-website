package com.chuse.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.chuse.entity.Subject;

@Repository
public class SubjectBackDaoImpl {
	@Resource
	private SessionFactory sessionFactory;

	//后台----后台----后台----后台----后台----后台-----------------
	//后台-改-修改健康列表
	public Subject findByIdBack(Integer pid){	
		Subject subject = (Subject)this.sessionFactory.getCurrentSession().
				createQuery("from Subject where pid = ?").
				setParameter(0, pid).uniqueResult();
		return subject;
	}
	//后-改-submit的那个提交 ---调用修改
	public Subject updateBack(Subject subject){
		Session session=sessionFactory.openSession();  
	    Transaction tx=null;  
	    try{  
	        tx=session.beginTransaction(); 
	        System.out.print("aaaaa");
	        session.update(subject);  
	        tx.commit();  
	    } catch (Exception e) {  
	        tx.rollback();  
	     throw new RuntimeException(e);  
	     } finally{  
	         session.close();  
	     }
		return subject;		
	}
	//后-删除健康-已经查出来了，点击删除删除商品
	public void deleteByIdBack(Subject subject,Integer pid){
		Session session=sessionFactory.openSession();
		System.out.print("dao快删啊");
		Transaction tran = session.beginTransaction() ;     
	        String hql = "Delete FROM Subject Where pid=?" ;     
	        Query q = session.createQuery(hql) ;     
	        q.setInteger(0, pid) ;     
	        q.executeUpdate() ;     
	        tran.commit() ; 			
		
	}
	
	
	
	
	
	//后-增-添加商品
	public Subject savesubject(Subject subject){
		Session session=sessionFactory.openSession();
		Transaction transtion=session.beginTransaction();
		session.save(subject);	
		System.out.print("dao"+subject.getPname());
		transtion.commit();
		session.close();
		//this.sessionFactory.getCurrentSession().save(subject);
		return subject;
		
	}
	
	
	
	

	
	
	
	
	//后-查-健康列表
	//分页查询数据	
	public List<Subject> findByPage(int pageNum, int pageSize){
		try{
			Query query=this.sessionFactory.getCurrentSession().createQuery("from "+Subject.class.getSimpleName());
			//查询subject表里的所有数据--list
			query.setFirstResult((pageNum-1)*pageSize);
			query.setMaxResults(pageSize);
			return query.list();
				
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	//统计数据个数 
	public int findCountByPage(){
		try{
			Query query=this.sessionFactory.getCurrentSession().createQuery("select count("+"*"+") from "+Subject.class.getSimpleName());
			return new Long((long)query.uniqueResult()).intValue();
		}catch(Exception e){
			e.printStackTrace();
			return 0;
		}
	}
	
	
	
	
	
}

