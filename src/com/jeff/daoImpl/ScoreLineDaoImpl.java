package com.jeff.daoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.jeff.dao.ScoreLineDao;
import com.jeff.model.CollegeScoreLine;

public class ScoreLineDaoImpl implements ScoreLineDao {
	private SessionFactory sessionFactory;

	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	/**
	 * dao����ݸ�У���ơ���Դ�ء�����ơ����β�ѯ��У¼ȡ������ 
	 */
	@Override
	public List<CollegeScoreLine> queryCollegeScoreLine(String univName, String province, String artsScience,
			String batch) {
		String hql = "from CollegeScoreLine where univName='" + univName + "'and province='" + province
				+ "'and artsScience='" + artsScience + "'and batch='" + batch + "'";
		List<CollegeScoreLine> list = getSession().createQuery(hql.toString()).list();
		return list;
	}
}
