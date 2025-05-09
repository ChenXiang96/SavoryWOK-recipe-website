package com.SavoryWok.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.SavoryWok.entity.Dishes;
import com.SavoryWok.entity.Zhenxuan;

@Repository
public class ZhenXuanDaoImpl {
	
	@Resource
	private SessionFactory sessionFactory;
	
	public Zhenxuan findById(Integer zid){
		Zhenxuan zhenxuan = (Zhenxuan)this.sessionFactory.getCurrentSession().
				createQuery("from Zhenxuan where zid = ?").
				setParameter(0, zid).uniqueResult();
		return zhenxuan;
	}
	

	
	public List<Zhenxuan> findAll(){	
		
		Session session = sessionFactory.openSession();  
		
		Transaction ts = session.beginTransaction();
		
		SQLQuery query = session.createSQLQuery("select * from zhenxuan");  
		
		query.addEntity(Zhenxuan.class);  	          
		List<Zhenxuan> list = query.list();
		System.out.println(list);            

		ts.commit();        

		session.close(); 
		System.out.print("dao");
		return list;
		}
}

