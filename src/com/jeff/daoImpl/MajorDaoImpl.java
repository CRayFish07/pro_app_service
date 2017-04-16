package com.jeff.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.jeff.dao.MajorDao;
import com.jeff.model.Dis;
import com.jeff.model.Major;
import com.jeff.model.Spec;
import com.jeff.model.Univ;

public class MajorDaoImpl implements MajorDao {

	private SessionFactory sessionFactory;

	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Major queryMajorById(String majorCode) {
		String hql = "from Major m where m.majorCode = '" + majorCode + "'";
		return (Major) getSession().createQuery(hql.toString()).list().get(0);
	}

	@Override
	public Integer findTotalCountOfMajor(String majorCode, String... args) {
		if (args.length == 0) {
			String hql = "from Bridge where majorCode = '" + majorCode + "'";
			return getSession().createQuery(hql.toString()).list().size();
		} else {
			String hql = "from Univ u where u.univProvince = '" + args[0]
					+ "' and u.univCode in(SELECT b.univCode from Bridge b WHERE b.majorCode = '" + majorCode + "')";
			return getSession().createQuery(hql.toString()).list().size();
		}
	}

	@Override
	public List<Univ> findAllUnivByMajor(String majorCode, int begin, int limit, String... args) {
		String hql = "";
		if (args.length == 0) {
			hql = "from Univ u where u.univCode in(SELECT b.univCode from Bridge b WHERE b.majorCode = '"
					+ majorCode + "')";
		} else {
			hql = "from Univ u where u.univProvince = '" + args[0]
					+ "' and u.univCode in(SELECT b.univCode from Bridge b WHERE b.majorCode = '" + majorCode + "')";	
		}
		Query query = getSession().createQuery(hql.toString());
		query.setFirstResult(begin);
		query.setMaxResults(limit);
		return query.list();
	}

	@Override
	public List<Dis> queryAllDis() {
		String hql = "from Dis";
		Query query = getSession().createQuery(hql.toString());
		return query.list();
	}

	@Override
	public List<Spec> queryAllSpecByDis(String disCode) {
		String hql = "from Spec s where s.disCode = '" + disCode + "'";
		Query query = getSession().createQuery(hql.toString());
		return query.list();
	}

	@Override
	public List<Spec> queryAllMajorBySpec(String specCode) {
		String hql = "from Major m where m.specCode = '" + specCode + "'";
		Query query = getSession().createQuery(hql.toString());
		return query.list();
	}

	@Override
	public List<Spec> queryAllMajorByDis(String disCode) {
		String hql = "from Major m where m.majorCode like '" + disCode + "%'";
		Query query = getSession().createQuery(hql.toString());
		return query.list();
	}

}
