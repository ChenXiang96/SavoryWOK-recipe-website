package com.SavoryWok.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.SavoryWok.entity.User;
@Repository
public class LoginDaoImpl {
	@Resource
	private SessionFactory sessionFactory;

	public User findById(String email) {
		User getemail=(User)this.sessionFactory.openSession().createQuery("from User where email="+email).uniqueResult();
		if(getemail==null){
			return getemail;
		}else{
			return null;
		}
	}

}
