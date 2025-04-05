package com.SavoryWok.dao.impl;

import java.util.List;

import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.SavoryWok.dao.CategorySecondDao;
import com.SavoryWok.dao.CategorySecondDao2;
import com.SavoryWok.entity.CategorySecond;
import com.SavoryWok.entity.CategorySecond2;

@Repository("categorySecondDao2")
public class CategorySecondDaoImpl2  extends BaseDaoImpl<CategorySecond2> implements CategorySecondDao2 {

	public Integer countCategorySecond2() {
		String hql = "select count(*) from CategorySecond2";
		return count(hql);
	}

	public List<CategorySecond2> findAll2(Integer page) {
		String hql = "from CategorySecond2";
		int rows = 15;
		int page1 = page;
		return find(hql, page1, rows);
	}

	public List<CategorySecond2> findAll2() {
		String hql = "from CategorySecond2";
		return find(hql);
	}

	public CategorySecond2 findTwo(Integer casid) {
		String hql = "from CategorySecond2 cs where cs.casid = ?";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, casid);
		return (CategorySecond2)query.uniqueResult(); 
	}
	
	
	
	
	
}
