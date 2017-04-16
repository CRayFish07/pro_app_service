package com.jeff.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.jeff.dao.NewsDao;
import com.jeff.model.News;

public class NewsDaoImpl implements NewsDao {

	private SessionFactory sessionFactory;

	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	public List<News> queryNewsById(String newsId) {
		String hql = "from News where newsId = " + newsId + "";
		Query query = getSession().createQuery(hql.toString());
		return query.list();
	}

	@Override
	public List<News> queryNewsByLabel(String newsLabel) {
		String hql = "from News where newsLabel = '" + newsLabel + "' order by newsDate desc";
		Query query = getSession().createQuery(hql.toString());
		return query.list();
	}

	@Override
	public List<News> queryNewsByHotAndDate(String hot) {
		String hql = "from News where hot = '" + hot + "' order by newsDate desc";
		Query query = getSession().createQuery(hql.toString());
		query.setFirstResult(0);
		query.setMaxResults(10);
		return query.list();
	}
}
