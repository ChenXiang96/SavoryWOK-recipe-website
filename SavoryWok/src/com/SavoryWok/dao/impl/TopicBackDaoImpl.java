package com.SavoryWok.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.SavoryWok.entity.Topic;

@Repository
public class TopicBackDaoImpl {
	@Resource
	private SessionFactory sessionFactory;

	public List<Topic> findByPage(int pageNum, int pageSize){
		try{
			int a;
			Query query=this.sessionFactory.getCurrentSession().createQuery("from "+Topic.class.getSimpleName());
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
			Query query=this.sessionFactory.getCurrentSession().createQuery("select count("+"*"+") from "+Topic.class.getSimpleName());
			return new Long((long)query.uniqueResult()).intValue();
		}catch(Exception e){
			e.printStackTrace();
			return 0;
		}
	}
	
	

		public Topic findByIdBack(Integer tid){	
			Topic  topic = (Topic)this.sessionFactory.getCurrentSession().
					createQuery("from Topic where tid = ?").
					setParameter(0, tid).uniqueResult();
			return topic;
		}
		public void deleteByIdBack(Topic topic,Integer tid){
			Session session=sessionFactory.openSession();

			Transaction tran = session.beginTransaction() ;     
		        String hql = "Delete FROM Topic Where tid=?" ;     
		        Query q = session.createQuery(hql) ;     
		        q.setInteger(0, tid) ;     
		        q.executeUpdate() ;     
		        tran.commit() ; 			
			
		}
}
