package com.chuse.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.chuse.entity.Dishes;
import com.chuse.entity.Zhenxuan;

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
		//获得session  
		Session session = sessionFactory.openSession();  
		//打开事务  
		Transaction ts = session.beginTransaction();
		//原生的Sql查询  
		SQLQuery query = session.createSQLQuery("select * from zhenxuan");  
		// addEntity 将查询结果封装到指定对象中  
		query.addEntity(Zhenxuan.class);  	          
		List<Zhenxuan> list = query.list();
		System.out.println(list);            
		//提交事务  
		ts.commit();        
		//关闭资源  
		session.close(); 
		System.out.print("dao");
		return list;
		}
}

