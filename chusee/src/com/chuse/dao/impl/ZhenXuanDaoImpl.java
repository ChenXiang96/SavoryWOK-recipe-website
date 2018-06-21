package com.chuse.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.chuse.entity.zhenxuan;

public class ZhenXuanDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	//前---------------------------------------------
	//前-查-把数据库里的菜放在首页里-商品列表
	public List<zhenxuan> findAll(){	
			//获得session  
			Session session = sessionFactory.openSession();  
			//打开事务  
			Transaction ts = session.beginTransaction();
			//原生的Sql查询  
			SQLQuery query = session.createSQLQuery("select * from product");  
			// addEntity 将查询结果封装到指定对象中  
			query.addEntity(zhenxuan.class);  	          
			List<zhenxuan> list = query.list();
			System.out.println(list);            
			//提交事务  
			ts.commit();        
			//关闭资源  
			session.close(); 
			System.out.print("dao");
			return list;
			}
}

