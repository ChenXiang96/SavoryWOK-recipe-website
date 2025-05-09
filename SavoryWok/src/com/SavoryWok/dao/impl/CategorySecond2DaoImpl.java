package com.SavoryWok.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.SavoryWok.dao.CategorySecond2Dao;
import com.SavoryWok.entity.Subthemes;

@Repository("categorySecond2Dao")
public class CategorySecond2DaoImpl extends BaseDaoImpl<Subthemes> 
    implements CategorySecond2Dao {
    
    @Override
    public Subthemes getSubthemesById(Integer casid) { 
        String hql = "FROM Subthemes WHERE casid = :casid";
        return getCurrentSession()
            .createQuery(hql, Subthemes.class)
            .setParameter("casid", casid)
            .uniqueResult();
    }
    
    public List<Subthemes> findByCaid(Integer caid) {
        String hql = "FROM Subthemes WHERE caid = :caid";
        return getCurrentSession()
            .createQuery(hql, Subthemes.class)
            .setParameter("caid", caid)
            .list();
    }
}