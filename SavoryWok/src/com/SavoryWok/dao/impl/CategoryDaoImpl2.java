package com.SavoryWok.dao.impl;

import java.util.List;

import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.SavoryWok.dao.CategoryDao2;
import com.SavoryWok.entity.Category;
import com.SavoryWok.entity.Category2;

@Repository("categoryDao2")
@SuppressWarnings("all")
public class CategoryDaoImpl2 extends BaseDaoImpl<Category2> implements CategoryDao2{
     

	public Integer countCategory2() {
		String hql = "select count(*) from Category2";
		return count(hql);
	}

	public List<Category2> findAll2() {
		String hql = "from Category2";
		return find(hql);
	}
	public Category2 findTwo(Integer caid) {
		String hql = "from Category2 c where c.caid = ?";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, caid);
		return (Category2)query.uniqueResult(); 
	}


	public List<Category2> findAll2 (Integer page) {
		String hql = "from Category2";
		int rows = 10;
		int page1 = page;
		return find(hql, page1, rows);
	}
	
	
	
	 @Override
	    public Category2 getCategory2ById(Integer caid) {
	        String hql = "FROM Category2 WHERE caid = :caid";
	        return getCurrentSession()
	            .createQuery(hql, Category2.class)
	            .setParameter("caid", caid)
	            .uniqueResult();
	    }
	
	
	
}
