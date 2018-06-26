package com.chuse.dao.impl;

import java.util.List;

import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.chuse.dao.SpecialDao;
import com.chuse.entity.Special;
import com.chuse.entity.Topic;


@Repository("specialDao")
@SuppressWarnings("all")
public class SpecialDaoImpl extends BaseDaoImpl<Special> implements SpecialDao{

	
	
	
	public List<Special> findAll(Integer page) {
		String hql = "from Special";
		int rows = 12;
		int page1 = page;
		return find(hql,page1,rows);
	}

	public Special findOne(Integer sid) {
		String hql = "from Special s where s.sid = ?";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, sid);
		return (Special)query.uniqueResult(); 
	}
}
