package com.SavoryWok.dao.impl;

import java.util.List;

import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.SavoryWok.dao.CategoryDao2;
import com.SavoryWok.entity.Dish_Category;
import com.SavoryWok.entity.Themes;

@Repository("categoryDao2")
@SuppressWarnings("all")
public class CategoryDaoImpl2 extends BaseDaoImpl<Themes> implements CategoryDao2{
     

	public Integer countCategory2() {
		String hql = "select count(*) from Themes";
		return count(hql);
	}

	public List<Themes> findAll2() {
		String hql = "from Themes";
		return find(hql);
	}
	public Themes findTwo(Integer caid) {
		String hql = "from Themes c where c.caid = ?";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, caid);
		return (Themes)query.uniqueResult(); 
	}


	public List<Themes> findAll2 (Integer page) {
		String hql = "from Themes";
		int rows = 10;
		int page1 = page;
		return find(hql, page1, rows);
	}
	
	
	
	 @Override
	    public Themes getCategory2ById(Integer caid) {
	        String hql = "FROM Themes WHERE caid = :caid";
	        return getCurrentSession()
	            .createQuery(hql, Themes.class)
	            .setParameter("caid", caid)
	            .uniqueResult();
	    }
	
	
	
}
