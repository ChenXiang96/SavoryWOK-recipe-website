
package com.chuse.dao.impl;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.hibernate.query.Query;
import org.hibernate.hql.internal.ast.HqlASTFactory;
import org.springframework.stereotype.Repository;

import com.chuse.dao.ProductDao;
import com.chuse.entity.Product;
import com.chuse.entity.Subject;



@Repository("productDao")
@SuppressWarnings("all")
public class ProductDaoImpl extends BaseDaoImpl<Product> implements ProductDao{
	
	final String selecthql = "select p.pid,p.image,p.is_hot,"
	 + "p.pdate,p.pdesc,p.pname,p.pcontent ";
	

			
	
	public Integer CountPageProductFromCategory(Integer cid) {
		String hql = "select count(*) from Product p, Category c, CategorySecond cs ";
		hql += "where p.categorySecond.csid = cs.csid and cs.category.cid = c.cid and c.cid = ?";
		return count(hql, cid);
	}
	
	public Integer CountPageSubjectFromCategory2(Integer caid) {
		String hql= "select count(*)from Subject s,Category2 c,CategorySecond2 cs";
		hql+="where s.categorySecond2.casid = cs.casid and cs.category2.caid = c.caid and c.caid = ?";
		return count(hql, caid);
		
	}

	public Integer CountPageProductFromCategorySecond(Integer csid) {
		String hql = "select count(*) from Product p ,CategorySecond cs ";
		hql += "where p.categorySecond.csid = cs.csid and cs.csid = ?";
		return count(hql, csid);
	}
	public Integer CountPageSubjectFromCategorySecond2(Integer casid){
		String hql = "select count(*) from Subject s ,CategorySecond2 cs ";
		hql += "where s.categorySecond2.casid = cs.casid and cs.casid = ?";
		return count(hql, casid);
	}
	
	public Integer CountProduct() {
		String hql = "select count(*) from Product";
		return count(hql);
	}
	
	public Integer CountSubject() {
		String hql = "select count(*) from Subject";
		return count(hql);
	}

	public List<Product> findByCategorySecondCategoryCid(Integer cid,
			Integer page) {
		String hql = selecthql + "from Product p,Category c, CategorySecond cs ";
		hql += "where p.categorySecond.csid = cs.csid and cs.category.cid = c.cid and c.cid = ?";
		return Query(cid, page, hql);
	}
	
	public List<Subject> findByCategorySecondCategoryCid2(Integer caid,
			Integer page) {
		String hql = selecthql + "from Subject s,Category2 c, CategorySecond2 cs ";
		hql += "where s.categorySecond2.casid = cs.casid and cs.category2.caid = c.caid and c.caid = ?";
		return Query2(caid, page, hql);
	}
	
	public List<Product> findByCategorySecondCsid(Integer csid, Integer page) {
		String hql = selecthql + "from Product p ,CategorySecond cs ";
		hql += "where p.categorySecond.csid = cs.csid and cs.csid = ?";
		return Query(csid, page, hql);
	}
	public List<Subject> findByCategorySecondCsid2(Integer casid, Integer page) {
		String hql = selecthql + "from Subject s ,CategorySecond2 cs ";
		hql += "where s.categorySecond2.casid = cs.casid and cs.casid = ?";
		return Query2(casid, page, hql);
	}
    

	private List<Product> Query(Integer csid, Integer page,String hql){
		int rows = 12;
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, csid);
		List list= query.setFirstResult((page - 1) * rows).setMaxResults(rows).list();
		
		List<Product> products = new ArrayList<Product>();
		Iterator iter = list.iterator();
		while(iter.hasNext()){
			Object[] obj = (Object[])iter.next();
			Product product = new Product();
			int pid = (Integer)obj[0];
			product.setPid(pid);
			product.setImage((String)obj[1]);
			product.setIs_hot((Integer) obj[2]);
			
            product.setPdate((Date) obj[3]);
			product.setPdesc((String) obj[4]);
			product.setPname((String) obj[5]);
			product.setPcontent((String) obj[6]);

		
			products.add(product);
		}
		return products;
	}
	
	private List<Subject> Query2(Integer casid, Integer page,String hql){
		int rows = 12;
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, casid);
		List list= query.setFirstResult((page - 1) * rows).setMaxResults(rows).list();
		
		List<Subject> subjects = new ArrayList<Subject>();
		Iterator iter = list.iterator();
		while(iter.hasNext()){
			Object[] obj = (Object[])iter.next();
			Subject subject = new Subject();
			int pid = (Integer)obj[0];
			subject.setPid(pid);
			subject.setImage((String)obj[1]);
			subject.setIs_hot((Integer) obj[2]);
			
            subject.setPdate((Date) obj[3]);
			subject.setPdesc((String) obj[4]);
			subject.setPname((String) obj[5]);
			subject.setPcontent((String) obj[6]);

		
			subjects.add(subject);
		}
		return subjects;
	}
	

	
	
	
	public List<Product> findHot() {
		String hql = "from Product p where p.is_hot = 1 ";
		hql += "order by p.pdate desc";
		int rows = 9;
		return find(hql,1,rows);
	}
	
	
	public List<Subject> findHHot() {
		String hql = "from Subject s where s.is_hot = 1 ";
		hql += "order by s.pdate desc";
		int rows = 9;
		return hfind(hql,1,rows);
	}
	


	public Product findOne(Integer pid) {
		String hql = "from Product p where p.pid = ?";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, pid);
		return (Product)query.uniqueResult(); 
	}
	public Subject findTwo(Integer pid) {
		String hql = "from Subject s where s.pid = ?";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, pid);
		return (Subject)query.uniqueResult(); 
	}
	public List<Product> findNew() {
		String hql = "from Product p ";
		hql += "order by p.pdate desc";
		int rows = 10;
		return find(hql,1,rows);
	}

	public List<Product> findAll(Integer page) {
		String hql = "from Product";
		int rows = 12;
		int page1 = page;
		return find(hql,page1,rows);
	}



	public List<Subject> findAll2(Integer page) {
		String hql = "from Subject";
		int rows = 12;
		int page1 = page;
		return hfind(hql,page1,rows);
	}





}
