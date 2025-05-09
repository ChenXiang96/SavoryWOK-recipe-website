package com.SavoryWok.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.SavoryWok.entity.Dishes;
import com.SavoryWok.entity.Subject;

@Repository
public class SubjectBackDaoImpl {
	@Resource
	private SessionFactory sessionFactory;

	public Subject findByIdBack(Integer pid){	
		Subject subject = (Subject)this.sessionFactory.getCurrentSession().
				createQuery("from Subject where pid = ?").
				setParameter(0, pid).uniqueResult();
		return subject;
	}

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

	public void deleteByIdBack(Subject subject,Integer pid){
		Session session=sessionFactory.openSession();
		Transaction tran = session.beginTransaction() ;     
	        String hql = "Delete FROM Subject Where pid=?" ;     
	        Query q = session.createQuery(hql) ;     
	        q.setInteger(0, pid) ;     
	        q.executeUpdate() ;     
	        tran.commit() ; 			
		
	}

	public Subject savesubject(Subject subject){
		Session session=sessionFactory.openSession();
		Transaction transtion=session.beginTransaction();
		session.save(subject);	
		System.out.print("dao"+subject.getPname());
		transtion.commit();
		session.close();
		return subject;
		
	}
	
	

	public List<Subject> findByPage(int pageNum, int pageSize){
		try{
			Query query=this.sessionFactory.getCurrentSession().createQuery("from "+Subject.class.getSimpleName());
		
			query.setFirstResult((pageNum-1)*pageSize);
			query.setMaxResults(pageSize);
			return query.list();
				
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

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

