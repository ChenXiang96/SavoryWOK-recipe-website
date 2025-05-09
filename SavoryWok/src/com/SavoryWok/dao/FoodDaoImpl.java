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
	

		public List<Food> findAll(){	
			 
			Session session = sessionFactory.openSession();  
			
			Transaction ts = session.beginTransaction();
			
			SQLQuery query = session.createSQLQuery("select * from cs_foodinfo");  
			
			query.addEntity(Food.class);  	          
			List<Food> list = query.list();
			System.out.println(list);            
			
			ts.commit();        
			
			session.close(); 
			return list;
		}
}
