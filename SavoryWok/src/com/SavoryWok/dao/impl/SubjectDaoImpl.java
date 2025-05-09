package com.SavoryWok.dao.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import com.SavoryWok.dao.DishesDao;
import com.SavoryWok.dao.SubjectDao;
import com.SavoryWok.entity.Dishes;
import com.SavoryWok.entity.Subject;

@Repository("subjectDao")
@SuppressWarnings("all")
public class SubjectDaoImpl extends BaseDaoImpl<Subject> implements SubjectDao {
	
	@Resource
	private SessionFactory sessionFactory;
	
	
	public Subject findById(Integer pid){
		Subject subject = (Subject)this.sessionFactory.getCurrentSession().
				createQuery("from Subject where pid = ?").
				setParameter(0, pid).uniqueResult();
		return subject;
	}
	


	
	final String selecthql2 = "select s.pid,s.image,s.is_hot,"
			 + "s.pdate,s.pdesc,s.pname,s.pcontent ";
	
   
	
	public Integer CountPageSubjectFromCategory2(Integer caid) {
		String hql= "select count(*) from Subject s,Themes c,Subthemes cs";
		hql+=" where s.subthemes.casid = cs.casid and cs.themes.caid = c.caid and c.caid = ?";
		return count(hql, caid);
		
	}
	public Integer CountPageSubjectFromCategorySecond2(Integer casid){
		String hql = "select count(*) from Subject s ,Subthemes cs ";
		hql += "where s.subthemes.casid = cs.casid and cs.casid = ?";
		return count(hql, casid);
	}
	
	public Integer CountSubject() {
		String hql = "select count(*) from Subject";
		return count(hql);
	}
			
	public List<Subject> findByCategorySecondCategoryCid2(Integer caid,
			Integer page) {
		String hql = selecthql2 + "from Subject s,Themes c, Subthemes cs ";
		hql += "where s.subthemes.casid = cs.casid and cs.themes.caid = c.caid and c.caid = ?";
		return Query2(caid, page, hql);
	}
	public List<Subject> findByCategorySecondCsid2(Integer casid, Integer page) {
		String hql = selecthql2 + "from Subject s ,Subthemes cs ";
		hql += "where s.subthemes.casid = cs.casid and cs.casid = ?";
		return Query2(casid, page, hql);
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
	public List<Subject> findHHot() {
		String hql = "from Subject s where s.is_hot = 1 ";
		hql += "order by s.pdate desc";
		int rows = 9;
		return hfind(hql,1,rows);
	}
	public Subject findTwo(Integer pid) {
		String hql = "from Subject s where s.pid = ?";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, pid);
		return (Subject)query.uniqueResult(); 
	}
	public List<Subject> findNew2() {
		String hql = "from Subject s ";
		hql += "order by s.pid";
		int rows = 10;
		return hfind2(hql,1,rows);
	}
	
	public List<Subject> findAll2(Integer page) {
		String hql = "from Subject";
		int rows = 12;
		int page1 = page;
		return hfind(hql,page1,rows);
	}

	
	
	
}
