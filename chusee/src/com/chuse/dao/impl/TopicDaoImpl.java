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

import com.chuse.dao.TopicDao;
import com.chuse.entity.Food;
import com.chuse.entity.Product;
import com.chuse.entity.Topic;


@Repository("topicDao")
@SuppressWarnings("all")
public class TopicDaoImpl extends BaseDaoImpl<Topic>implements TopicDao {

	final String selecthql = "select t.tid,t.tcontent,t.time," + "p.uid,p.ttitle";

	public Integer CountTopic() {
		String hql = "select count(*) from Topic";
		return count(hql);
	}

	private List<Topic> Query(Integer csid, Integer page, String hql) {
		int rows = 12;
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, csid);
		List list = query.setFirstResult((page - 1) * rows).setMaxResults(rows).list();

		List<Topic> topics = new ArrayList<Topic>();
		Iterator iter = list.iterator();
		while (iter.hasNext()) {
			Object[] obj = (Object[]) iter.next();
			Topic topic = new Topic();
			int tid = (Integer) obj[0];
			topic.setTid(tid);
			topic.setUid((Integer) obj[1]);
			topic.setTcontent((String) obj[2]);
			topic.setTtitle((String) obj[3]);

			topic.setTime((Date) obj[4]);

			topics.add(topic);
		}
		return topics;
	}
	
	public Topic findOne(Integer tid) {
		String hql = "from Topic t where t.tid = ?";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, tid);
		return (Topic)query.uniqueResult(); 
	}
	
	public List<Topic> findAll(Integer page) {
		String hql = "from Topic";
		int rows = 12;
		int page1 = page;
		return find(hql,page1,rows);
	}
	
	
		
}
