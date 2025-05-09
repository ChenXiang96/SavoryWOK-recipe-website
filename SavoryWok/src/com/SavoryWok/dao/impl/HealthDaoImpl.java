package com.SavoryWok.dao.impl;

import java.util.List;

import javax.annotation.Resource;
import org.hibernate.query.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import org.springframework.stereotype.Repository;

import com.SavoryWok.entity.Dishes;
import com.SavoryWok.entity.Howdo;
import com.SavoryWok.entity.Material;
import com.SavoryWok.entity.Topic;
import com.SavoryWok.entity.User;

@Repository
public class HealthDaoImpl {
	
	@Resource
	private SessionFactory sessionFactory;
	
	public Dishes findByIdP(Integer id){	
		Dishes Dishes = (Dishes)this.sessionFactory.getCurrentSession().
				createQuery("from Dishes where id = ?").
				setParameter(0, id).uniqueResult();

		return Dishes;
		
	}

	public User findByIdU(Integer uid){	
		User user = (User)this.sessionFactory.getCurrentSession().
				createQuery("from User where uid = ?").
				setParameter(0, uid).uniqueResult();
		
		return user;
		
	}

	public Material findByIdM(Integer sid){	
		Material material = (Material)this.sessionFactory.getCurrentSession().
				createQuery("from Material where sid = ?").
				setParameter(0, sid).uniqueResult();
		
		return material;
		
	}

	public Howdo findByIdH(Integer hid){	
		Howdo howdo = (Howdo)this.sessionFactory.getCurrentSession().
				createQuery("from Howdo where hid = ?").
				setParameter(0, hid).uniqueResult();
		
		return howdo;
		
	}
	



	public List<Dishes> findAll(){	
		
			Session session = sessionFactory.openSession();  
		
			Transaction ts = session.beginTransaction();
	
			SQLQuery query = session.createSQLQuery("select * from Dishes");  
			 
			query.addEntity(Dishes.class);  	          
			List<Dishes> list = query.list();
			System.out.println(list);            
		
			ts.commit();        
			 
			session.close(); 
			System.out.print("dao");
			return list;
	}
	


	public Dishes findByIdBack(Integer id){	
		Dishes Dishes = (Dishes)this.sessionFactory.getCurrentSession().
				createQuery("from Dishes where id = :dishId").
				setParameter("dishId", id).uniqueResult();
		return Dishes;
	}

	public Dishes updateBack(Dishes Dishes){
		sessionFactory.getCurrentSession().update(Dishes);
		return Dishes;		
	}

	public void deleteByIdBack(Dishes Dishes,Integer id){
		Session session=sessionFactory.openSession();
	
		Transaction tran = session.beginTransaction() ;     
	        String hql = "Delete FROM Dishes Where id=?" ;     
	        Query q = session.createQuery(hql) ;     
	        q.setInteger(0, id) ;     
	        q.executeUpdate() ;     
	        tran.commit() ; 			
		
	}

	public Dishes saveDishes(Dishes Dishes){
		
		Session session=sessionFactory.openSession();
		Transaction transtion=session.beginTransaction();
		session.save(Dishes);	
		System.out.print("dao"+Dishes.getName());
		transtion.commit();
		session.close();
		return Dishes;
		
	}
	

	public List<Dishes> findByPage(int offset, int pageSize) { 
	    try {
	        Query query = sessionFactory.getCurrentSession()
	            .createQuery("from Dishes order by id asc");
	        query.setFirstResult(offset); 
	        query.setMaxResults(pageSize);
	        return query.list();
	    } catch (Exception e) {
	        e.printStackTrace();
	        return null;
	    }
	}

	public int findCountByPage(){
		try{
			Query query=this.sessionFactory.getCurrentSession().createQuery("select count("+"*"+") from "+Dishes.class.getSimpleName());
			return new Long((long)query.uniqueResult()).intValue();
		}catch(Exception e){
			e.printStackTrace();
			return 0;
		}
	}
	
	
	
	
	
}
