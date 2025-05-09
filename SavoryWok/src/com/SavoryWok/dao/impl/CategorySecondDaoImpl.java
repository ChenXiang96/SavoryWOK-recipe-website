package com.SavoryWok.dao.impl;

import java.util.List;

import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.SavoryWok.dao.CategorySecondDao;
import com.SavoryWok.entity.IngredientCategory;

@Repository("categorySecondDao")
public class CategorySecondDaoImpl extends BaseDaoImpl<IngredientCategory> implements CategorySecondDao{

	public Integer countCategorySecond() {
		String hql = "select count(*) from IngredientCategory";
		return count(hql);
	}

	public List<IngredientCategory> findAll(Integer page) {
		String hql = "from IngredientCategory";
		int rows = 15;
		int page1 = page;
		return find(hql, page1, rows);
	}

	public List<IngredientCategory> findAll() {
		String hql = "from IngredientCategory";
		return find(hql);
	}

	public IngredientCategory findOne(Integer csid) {
		String hql = "from IngredientCategory cs where cs.csid = ?";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, csid);
		return (IngredientCategory)query.uniqueResult(); 
	}

}
