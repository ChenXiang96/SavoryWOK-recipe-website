package com.SavoryWok.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.SavoryWok.dao.CategorySecondGroupDao;
import com.SavoryWok.entity.IngredientCategoryGroup;

@Repository
public class CategorySecondGroupDaoImpl implements CategorySecondGroupDao {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public IngredientCategoryGroup findByCsname(String csname) {

        return sessionFactory.getCurrentSession()
            .createQuery("FROM IngredientCategoryGroup WHERE csname = :csname", 
            		IngredientCategoryGroup.class)
            .setParameter("csname", csname) 
            .uniqueResult();
    }
    
    @Override
    public List<IngredientCategoryGroup> findAll() {
        return sessionFactory.getCurrentSession()
            .createQuery("FROM IngredientCategoryGroup", IngredientCategoryGroup.class)
            .list();
    }

}
