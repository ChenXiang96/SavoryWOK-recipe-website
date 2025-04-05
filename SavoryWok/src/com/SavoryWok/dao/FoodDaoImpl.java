package com.SavoryWok.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.SavoryWok.entity.Food;


@Repository
public class FoodDaoImpl {
	
	@Resource
	private SessionFactory sessionFactory;
	
	public Food findById(int id){	
		Food food = (Food)this.sessionFactory.getCurrentSession().
				createQuery("from cs_foodinfo where id = ?").
				setParameter(0, id).uniqueResult();
		return food;
	}
	
	//前-查-把数据库里的商品放在products.jsp里-商品列表
		public List<Food> findAll(){	
			//获得session  
			Session session = sessionFactory.openSession();  
			//打开事务  
			Transaction ts = session.beginTransaction();
			//原生的Sql查询  
			SQLQuery query = session.createSQLQuery("select * from cs_foodinfo");  
			// addEntity 将查询结果封装到指定对象中  
			query.addEntity(Food.class);  	          
			List<Food> list = query.list();
			System.out.println(list);            
			//提交事务  
			ts.commit();        
			//关闭资源  
			session.close(); 
			return list;
		}
}
