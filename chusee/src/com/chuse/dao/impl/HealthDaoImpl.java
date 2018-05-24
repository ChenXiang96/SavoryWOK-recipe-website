package com.chuse.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.chuse.entity.Product;

@Repository
public class HealthDaoImpl {

	@Resource
	private SessionFactory sessionFactory;
	//后台----后台----后台----后台----后台----后台-----------------
	//后台-改-修改健康列表
	public Product findByIdBack(Integer pid){	
		Product product = (Product)this.sessionFactory.getCurrentSession().
				createQuery("from Product where pid = ?").
				setParameter(0, pid).uniqueResult();
		System.out.println("dao");
		return product;
	}
	
	
	
	

	
	
	
	
	//后-查-健康列表
	//分页查询数据	
	public List<Product> findByPage(int pageNum, int pageSize){
		try{
			Query query=this.sessionFactory.getCurrentSession().createQuery("from "+Product.class.getSimpleName());
			//查询product表里的所有数据--list
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
			Query query=this.sessionFactory.getCurrentSession().createQuery("select count("+"*"+") from "+Product.class.getSimpleName());
			return new Long((long)query.uniqueResult()).intValue();
		}catch(Exception e){
			e.printStackTrace();
			return 0;
		}
	}
	
	
	
	
	
}
