package com.SavoryWok.dao.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.persistence.Table;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.SavoryWok.dao.DishesDao;
import com.SavoryWok.entity.Dishes;
import com.SavoryWok.entity.Subject;

@Repository("DishesDao")
@SuppressWarnings("all")
public class DishesDaoImpl extends BaseDaoImpl<Dishes> implements DishesDao {

    @Override
    public List<Dishes> findByCategorySecondCategoryCid(Integer cid, Integer page) {
    	String hql = "SELECT p FROM Dishes p " +
                "WHERE p.categorySecond.category.cid = :cid";
        Query<Dishes> query = this.getCurrentSession().createQuery(hql, Dishes.class);
        query.setParameter("cid", cid);
        query.setFirstResult((page - 1) * 6);
        query.setMaxResults(6);
        return query.list();
    }

    @Override
    public Integer countByCategorySecondCategoryCid(Integer cid) {
    	String hql = "SELECT COUNT(p) FROM Dishes p " +
                "WHERE p.categorySecond.category.cid = :cid";
        return ((Long) this.getCurrentSession().createQuery(hql)
                          .setParameter("cid", cid)
                          .uniqueResult()).intValue();
    }

    @Override
    public List<Dishes> findByCategorySecondCsid(Integer csid, Integer page) {
        String hql = "select p from Dishes p " +
                     "join p.categorySecond cs " +
                     "where cs.csid = :csid";
        Query<Dishes> query = this.getCurrentSession().createQuery(hql, Dishes.class);
        query.setParameter("csid", csid);
        query.setFirstResult((page - 1) * 6);
        query.setMaxResults(6);
        return query.list();
    }

    @Override
    public Integer countByCategorySecondCsid(Integer csid) {
        String hql = "select count(p) from Dishes p " +
                     "join p.categorySecond cs " +
                     "where cs.csid = :csid";
        return ((Long) this.getCurrentSession().createQuery(hql)
                          .setParameter("csid", csid)
                          .uniqueResult()).intValue();
    }

    @Override
    public Dishes findOne(Integer id) {
        return this.getCurrentSession().get(Dishes.class, id);
    }
    
    @Autowired
    private SessionFactory sessionFactory;

    protected Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }

  @Override
    public Dishes findWithStepsAndIngredients(Integer id) {

        String hql = "SELECT DISTINCT p FROM Dishes p " +
                     "LEFT JOIN FETCH p.steps " +
                     "LEFT JOIN FETCH p.ingredients " +
                     "WHERE p.id = :id";
        
        return getCurrentSession()
                .createQuery(hql, Dishes.class)
                .setParameter("id", id)
                .uniqueResult();
    }
  
  @Override
  public List<Dishes> findDishesByCasid(Integer casid) {
	    String hql = "SELECT d FROM Dishes d " +
	                 "JOIN CategorySecond2Dishes cd ON d.id = cd.id " + 
	                 "WHERE cd.casid = :casid";
	    return getCurrentSession()
	        .createQuery(hql, Dishes.class)
	        .setParameter("casid", casid)
	        .list();
	}
  @Override
  public List<Dishes> findByCsids(List<Integer> csids, Integer page) {
      String hql = "FROM Dishes d WHERE d.categorySecond.csid IN (:csids)";
      return getCurrentSession()
          .createQuery(hql, Dishes.class)
          .setParameterList("csids", csids)
          .setFirstResult((page-1)*6)
          .setMaxResults(6)
          .list();
  }

  @Override
  public Integer countByCsids(List<Integer> csids) {
      String hql = "SELECT COUNT(d) FROM Dishes d WHERE d.categorySecond.csid IN (:csids)";
      return ((Long) getCurrentSession()
              .createQuery(hql)
              .setParameterList("csids", csids)
              .uniqueResult()).intValue();
  }


    @Override
    public List<Dishes> findHot() {
        String hql = "from Dishes where is_hot = 1 order by date desc";
        Query<Dishes> query = this.getCurrentSession().createQuery(hql, Dishes.class);
        query.setMaxResults(6); 
        return query.list();
    }

    @Override
    public List<Dishes> findNew() {
        String hql = "from Dishes order by date desc";
        Query<Dishes> query = this.getCurrentSession().createQuery(hql, Dishes.class);
        query.setMaxResults(10);
        return query.list();
    }

    @Override
    public List<Dishes> findAll(Integer page) {
        String hql = "from Dishes";
        Query<Dishes> query = this.getCurrentSession().createQuery(hql, Dishes.class);
        query.setFirstResult((page - 1) * 6);
        query.setMaxResults(6);
        return query.list();
    }
    
   



    @Override
    public Serializable save(Dishes o) {
        return null;
    }

    @Override
    public void delete(Serializable id) {
    }

    @Override
    public void delete(Dishes o) {
    }

    @Override
    public void update(Dishes o) {
    }

    @Override
    public void saveOrUpdate(Dishes o) {
    }

    @Override
    public Dishes get(Serializable id) {
        return null;
    }

    @Override
    public List<Dishes> find(String hql) {
        return null;
    }

    @Override
    public List<Dishes> find(String hql, Map<String, Object> params) {
        return null;
    }

    @Override
    public List<Dishes> find(String hql, int page, int rows) {
        return null;
    }

    @Override
    public List<Subject> hfind2(String hql, int page, int rows) {
        return null;
    }

    @Override
    public List<Subject> hfind(String hql, int page, int rows) {
        return null;
    }

    @Override
    public List<Dishes> find(String hql, Map<String, Object> params, int page, int rows) {
        return null;
    }

    @Override
    public Integer count(String hql) {
        return null;
    }

    @Override
    public Integer count(String hql, Integer id) {
        return null;
    }

    @Override
    public Integer count(String hql, Map<String, Object> params) {
        return null;
    }

    @Override
    public int executeHql(String hql) {
        return 0;
    }

    @Override
    public int executeHql(String hql, Map<String, Object> params) {
        return 0;
    }

    @Override
    public Integer CountPageDishesFromCategory(Integer cid) {
        return null;
    }

    @Override
    public Integer CountPageDishesFromCategorySecond(Integer csid) {
        return null;
    }

    @Override
    public Integer CountDishes() {
        return null;
    }


}