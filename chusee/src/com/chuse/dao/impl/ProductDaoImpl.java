package com.chuse.dao.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.chuse.dao.ProductDao;
import com.chuse.entity.Product;
import com.chuse.entity.Subject;

@Repository("productDao")
@SuppressWarnings("all")
public class ProductDaoImpl extends BaseDaoImpl<Product> implements ProductDao {

    @Override
    public List<Product> findByCategorySecondCategoryCid(Integer cid, Integer page) {
        String hql = "select p from Product p " +
                     "join p.categorySecond cs " +
                     "join cs.categories c " +
                     "where c.cid = :cid";
        Query<Product> query = this.getCurrentSession().createQuery(hql, Product.class);
        query.setParameter("cid", cid);
        query.setFirstResult((page - 1) * 12); // 分页起始位置
        query.setMaxResults(12); // 每页大小
        return query.list();
    }

    @Override
    public Integer countByCategorySecondCategoryCid(Integer cid) {
        String hql = "select count(p) from Product p " +
                     "join p.categorySecond cs " +
                     "join cs.categories c " +
                     "where c.cid = :cid";
        return ((Long) this.getCurrentSession().createQuery(hql)
                          .setParameter("cid", cid)
                          .uniqueResult()).intValue();
    }

    @Override
    public List<Product> findByCategorySecondCsid(Integer csid, Integer page) {
        String hql = "select p from Product p " +
                     "join p.categorySecond cs " +
                     "where cs.csid = :csid";
        Query<Product> query = this.getCurrentSession().createQuery(hql, Product.class);
        query.setParameter("csid", csid);
        query.setFirstResult((page - 1) * 12); // 分页起始位置
        query.setMaxResults(12); // 每页大小
        return query.list();
    }

    @Override
    public Integer countByCategorySecondCsid(Integer csid) {
        String hql = "select count(p) from Product p " +
                     "join p.categorySecond cs " +
                     "where cs.csid = :csid";
        return ((Long) this.getCurrentSession().createQuery(hql)
                          .setParameter("csid", csid)
                          .uniqueResult()).intValue();
    }

    @Override
    public Product findOne(Integer pid) {
        return this.getCurrentSession().get(Product.class, pid);
    }
    
    @Autowired
    private SessionFactory sessionFactory;

    protected Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }
    
 // 修改后的查询方法（核心）
    @Override
    public Product findWithSteps(Integer pid) {
        String hql = "SELECT p FROM Product p LEFT JOIN FETCH p.steps WHERE p.pid = :pid";
        return getCurrentSession()
                .createQuery(hql, Product.class)
                .setParameter("pid", pid)
                .uniqueResult();
    }


    @Override
    public List<Product> findHot() {
        String hql = "from Product where is_hot = 1 order by pdate desc";
        Query<Product> query = this.getCurrentSession().createQuery(hql, Product.class);
        query.setMaxResults(6); // 查询最热的6条商品
        return query.list();
    }

    @Override
    public List<Product> findNew() {
        String hql = "from Product order by pdate desc";
        Query<Product> query = this.getCurrentSession().createQuery(hql, Product.class);
        query.setMaxResults(10); // 查询最新的10条商品
        return query.list();
    }

    @Override
    public List<Product> findAll(Integer page) {
        String hql = "from Product";
        Query<Product> query = this.getCurrentSession().createQuery(hql, Product.class);
        query.setFirstResult((page - 1) * 12); // 分页起始位置
        query.setMaxResults(12); // 每页大小
        return query.list();
    }

    // 其他方法保持空实现
    @Override
    public Serializable save(Product o) {
        return null;
    }

    @Override
    public void delete(Serializable id) {
    }

    @Override
    public void delete(Product o) {
    }

    @Override
    public void update(Product o) {
    }

    @Override
    public void saveOrUpdate(Product o) {
    }

    @Override
    public Product get(Serializable id) {
        return null;
    }

    @Override
    public List<Product> find(String hql) {
        return null;
    }

    @Override
    public List<Product> find(String hql, Map<String, Object> params) {
        return null;
    }

    @Override
    public List<Product> find(String hql, int page, int rows) {
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
    public List<Product> find(String hql, Map<String, Object> params, int page, int rows) {
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
    public Integer CountPageProductFromCategory(Integer cid) {
        return null;
    }

    @Override
    public Integer CountPageProductFromCategorySecond(Integer csid) {
        return null;
    }

    @Override
    public Integer CountProduct() {
        return null;
    }
}