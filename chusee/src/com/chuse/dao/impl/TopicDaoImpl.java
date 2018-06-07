package com.chuse.dao.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.hibernate.query.Query;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.hibernate.query.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.hql.internal.ast.HqlASTFactory;
import org.springframework.stereotype.Repository;

import com.chuse.dao.ProductDao;
import com.chuse.dao.TopicDao;
import com.chuse.entity.Food;
import com.chuse.entity.Product;
import com.chuse.entity.Topic;
import com.chuse.entity.Product;


@Repository
public class TopicDaoImpl {

	@Resource
	private SessionFactory sessionFactory;

	public List<Topic> findAll(){	
		//获得session  
		Session session = sessionFactory.openSession();  
		//打开事务  
		Transaction ts = session.beginTransaction();
		//原生的Sql查询  
		SQLQuery query = session.createSQLQuery("select * from cs_topic");  
		// addEntity 将查询结果封装到指定对象中  
		query.addEntity(Food.class);  	          
		List<Topic> list = query.list();
		System.out.println(list);            
		//提交事务  
		ts.commit();        
		//关闭资源  
		session.close(); 
		return list;
	}
}
