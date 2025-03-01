package com.chuse.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.chuse.dao.CategorySecondGroupDao;
import com.chuse.entity.CategorySecondGroup;

@Repository
public class CategorySecondGroupDaoImpl implements CategorySecondGroupDao {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public CategorySecondGroup findByCsname(String csname) {
        // 改为精确匹配（移除LOWER转换）
        return sessionFactory.getCurrentSession()
            .createQuery("FROM CategorySecondGroup WHERE csname = :csname", 
                        CategorySecondGroup.class)
            .setParameter("csname", csname) // 确保参数与数据库存储完全一致
            .uniqueResult();
    }
    
    @Override
    public List<CategorySecondGroup> findAll() {
        return sessionFactory.getCurrentSession()
            .createQuery("FROM CategorySecondGroup", CategorySecondGroup.class)
            .list();
    }

}
