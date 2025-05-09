package com.SavoryWok.dao.impl;

import java.util.List;

import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.SavoryWok.dao.CategoryDao;
import com.SavoryWok.entity.Dish_Category;

@Repository("categoryDao")
@SuppressWarnings("all")
public class CategoryDaoImpl extends BaseDaoImpl<Dish_Category> implements CategoryDao{

	public Integer countCategory() {
		String hql = "select count(*) from Dish_Category";
		return count(hql);
	}

	public List<Dish_Category> findAll() {
		String hql = "from Dish_Category";
		return find(hql);
	}
	public Dish_Category findOne(Integer cid) {
		String hql = "from Dish_Category c where c.cid = ?";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, cid);
		return (Dish_Category)query.uniqueResult(); 
	}


	public List<Dish_Category> findAll(Integer page) {
		String hql = "from Dish_Category";
		int rows = 10;
		int page1 = page;
		return find(hql, page1, rows);
	}

}
