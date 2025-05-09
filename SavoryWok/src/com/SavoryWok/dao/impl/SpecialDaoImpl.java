package com.SavoryWok.dao.impl;

import java.util.List;
import java.util.Optional;

import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.SavoryWok.dao.SpecialDao;
import com.SavoryWok.entity.Special;
import com.SavoryWok.entity.Topic;


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
	
	@Override
    public Optional<Special> findById(Integer sid) {

        Special special = getCurrentSession().get(Special.class, sid);
        return Optional.ofNullable(special);
    }
}


