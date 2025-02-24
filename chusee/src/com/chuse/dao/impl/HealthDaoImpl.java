package com.chuse.dao.impl;

import java.util.List;

import javax.annotation.Resource;
import org.hibernate.query.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import org.springframework.stereotype.Repository;

import com.chuse.entity.Howdo;
import com.chuse.entity.Material;
import com.chuse.entity.Dishes;
import com.chuse.entity.Topic;
import com.chuse.entity.User;

@Repository
public class HealthDaoImpl {
	
	@Resource
	private SessionFactory sessionFactory;
	
	//前---------------------------------------------
	//前台跳转到菜的做法页面-把菜名和菜的图片列出来
	public Dishes findByIdP(Integer pid){	
		Dishes Dishes = (Dishes)this.sessionFactory.getCurrentSession().
				createQuery("from Dishes where pid = ?").
				setParameter(0, pid).uniqueResult();
		//System.out.print("aaachulaichulaidao");
		return Dishes;
		
	}
	//查用户
	public User findByIdU(Integer uid){	
		User user = (User)this.sessionFactory.getCurrentSession().
				createQuery("from User where uid = ?").
				setParameter(0, uid).uniqueResult();
		//System.out.print("aaachulaichulaidao");
		return user;
		
	}
	//查材料
	public Material findByIdM(Integer sid){	
		Material material = (Material)this.sessionFactory.getCurrentSession().
				createQuery("from Material where sid = ?").
				setParameter(0, sid).uniqueResult();
		//System.out.print("aaachulaichulaidao");
		return material;
		
	}
	//查步骤
	public Howdo findByIdH(Integer hid){	
		Howdo howdo = (Howdo)this.sessionFactory.getCurrentSession().
				createQuery("from Material where hid = ?").
				setParameter(0, hid).uniqueResult();
		//System.out.print("aaachulaichulaidao");
		return howdo;
		
	}
	

	
	
	private Session getCurrentSession() {
		// TODO Auto-generated method stub
		return null;
	}







	//前-查-把数据库里的菜放在首页里-商品列表
	public List<Dishes> findAll(){	
			//获得session  
			Session session = sessionFactory.openSession();  
			//打开事务  
			Transaction ts = session.beginTransaction();
			//原生的Sql查询  
			SQLQuery query = session.createSQLQuery("select * from Dishes");  
			// addEntity 将查询结果封装到指定对象中  
			query.addEntity(Dishes.class);  	          
			List<Dishes> list = query.list();
			System.out.println(list);            
			//提交事务  
			ts.commit();        
			//关闭资源  
			session.close(); 
			System.out.print("dao");
			return list;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//后台----后台----后台----后台----后台----后台-----------------
	//后台-改-修改健康列表
	public Dishes findByIdBack(Integer pid){//前台找菜的做法也用到了	
		Dishes Dishes = (Dishes)this.sessionFactory.getCurrentSession().
				createQuery("from Dishes where pid = ?").
				setParameter(0, pid).uniqueResult();
		return Dishes;
	}
	//后-改-submit的那个提交 ---调用修改
	public Dishes updateBack(Dishes Dishes){
		Session session=sessionFactory.openSession();  
	    Transaction tx=null;  
	    try{  
	        tx=session.beginTransaction(); 
	        System.out.print("aaaaa");
	        session.update(Dishes);  
	        tx.commit();  
	    } catch (Exception e) {  
	        tx.rollback();  
	     throw new RuntimeException(e);  
	     } finally{  
	         session.close();  
	     }
		return Dishes;		
	}
	//后-删除健康-已经查出来了，点击删除删除商品
	public void deleteByIdBack(Dishes Dishes,Integer pid){
		Session session=sessionFactory.openSession();
		System.out.print("dao快删啊");
		Transaction tran = session.beginTransaction() ;     
	        String hql = "Delete FROM Dishes Where pid=?" ;     
	        Query q = session.createQuery(hql) ;     
	        q.setInteger(0, pid) ;     
	        q.executeUpdate() ;     
	        tran.commit() ; 			
		
	}
	
	
	
	
	
	//后-增-添加商品
	public Dishes saveDishes(Dishes Dishes){
		
		Session session=sessionFactory.openSession();
		Transaction transtion=session.beginTransaction();
		session.save(Dishes);	
		System.out.print("dao"+Dishes.getPname());
		transtion.commit();
		session.close();
		return Dishes;
		
	}
	
	
	
	

	
	
	
	
	//后-查-健康列表
	//分页查询数据	
	public List<Dishes> findByPage(int pageNum, int pageSize){
		try{
			Query query=this.sessionFactory.getCurrentSession().createQuery("from "+Dishes.class.getSimpleName());
			//查询Dishes表里的所有数据--list
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
			Query query=this.sessionFactory.getCurrentSession().createQuery("select count("+"*"+") from "+Dishes.class.getSimpleName());
			return new Long((long)query.uniqueResult()).intValue();
		}catch(Exception e){
			e.printStackTrace();
			return 0;
		}
	}
	
	
	
	
	
}
