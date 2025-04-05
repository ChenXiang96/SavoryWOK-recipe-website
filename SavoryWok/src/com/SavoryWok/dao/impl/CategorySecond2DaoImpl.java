package com.SavoryWok.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.SavoryWok.dao.CategorySecond2Dao;
import com.SavoryWok.entity.CategorySecond2;

@Repository("categorySecond2Dao")
public class CategorySecond2DaoImpl extends BaseDaoImpl<CategorySecond2> 
    implements CategorySecond2Dao {
    
    @Override
    public CategorySecond2 getCategorySecond2ById(Integer casid) { // 修正方法名
        String hql = "FROM CategorySecond2 WHERE casid = :casid"; // 修正实体名称
        return getCurrentSession()
            .createQuery(hql, CategorySecond2.class)
            .setParameter("casid", casid)
            .uniqueResult();
    }
    
    public List<CategorySecond2> findByCaid(Integer caid) {
        String hql = "FROM CategorySecond2 WHERE caid = :caid";
        return getCurrentSession()
            .createQuery(hql, CategorySecond2.class)
            .setParameter("caid", caid)
            .list();
    }
}