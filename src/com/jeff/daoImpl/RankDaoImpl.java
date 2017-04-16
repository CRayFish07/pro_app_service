package com.jeff.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.jeff.dao.RankDao;
import com.jeff.model.Jiaodapaiming;
import com.jeff.model.Qs2017;
import com.jeff.model.Rank12;
import com.jeff.model.Wushulian2017;
import com.jeff.model.Xyhpaiming;

public class RankDaoImpl implements RankDao {
	
	private SessionFactory sessionFactory;
	
	protected Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	/**
	 * 根据majorCode查询所有记录条数
	 */
	@Override
	public Integer findTotalCountOfSpec(String majorCode) {
		String hql = "from Rank12 r where r.specCode in(SELECT m.specCode from Major m where m.majorCode = '" + majorCode + "')";
		return getSession().createQuery(hql.toString()).list().size();
	}

	/**
	 * 根据majorCode分页查询
	 * @return univ排名结果
	 */
	@Override
	public List<Rank12> findUnivRankByPage(String majorCode, int begin, int limit) {
		String hql = "from Rank12 r where r.specCode in(SELECT m.specCode from Major m where m.majorCode = '" + majorCode + "') order by univScore desc";
		Query query = getSession().createQuery(hql.toString());
		query.setFirstResult(begin);
		query.setMaxResults(limit);
		return query.list();
	}

	/**
	 * 根据univCode查询所有记录条数
	 */
	@Override
	public Integer findTotalCountOfUniv(String univCode) {
		String hql = "from Rank12 where univCode = '" + univCode + "'";
		return getSession().createQuery(hql.toString()).list().size();
	}

	/**
	 * 根据univCode分页查询
	 * @return spec排名结果
	 */
	@Override
	public List<Rank12> findSpecRankByPage(String univCode, int begin, int limit) {
		String hql = "from Rank12 where univCode = '" + univCode + "' order by univScore desc";
		Query query = getSession().createQuery(hql.toString());
		query.setFirstResult(begin);
		query.setMaxResults(limit);
		return query.list();
	}

	@Override
	public List<Xyhpaiming> queryXYHRank() {
		String hql = "from Xyhpaiming";
		Query query = getSession().createQuery(hql.toString());
		query.setFirstResult(0);
		query.setMaxResults(20);
		return query.list();
	}

	@Override
	public List<Wushulian2017> queryWSLRank() {
		String hql = "from Wushulian2017";
		Query query = getSession().createQuery(hql.toString());
		query.setFirstResult(0);
		query.setMaxResults(20);
		return query.list();
	}

	@Override
	public List<Jiaodapaiming> queryJDRank() {
		String hql = "from Jiaodapaiming";
		Query query = getSession().createQuery(hql.toString());
		query.setFirstResult(0);
		query.setMaxResults(20);
		return query.list();
	}

	@Override
	public List<Qs2017> queryQSRank() {
		String hql = "from Qs2017";
		Query query = getSession().createQuery(hql.toString());
		query.setFirstResult(0);
		query.setMaxResults(20);
		return query.list();
	}

	@Override
	public List<Xyhpaiming> queryAllXYHRank() {
		String hql = "from Xyhpaiming";
		Query query = getSession().createQuery(hql.toString());
		return query.list();
	}

	@Override
	public List<Wushulian2017> queryAllWSLRank() {
		String hql = "from Wushulian2017";
		Query query = getSession().createQuery(hql.toString());
		return query.list();
	}

	@Override
	public List<Jiaodapaiming> queryAllJDRank() {
		String hql = "from Jiaodapaiming";
		Query query = getSession().createQuery(hql.toString());
		return query.list();
	}

	@Override
	public List<Qs2017> queryAllQSRank() {
		String hql = "from Qs2017";
		Query query = getSession().createQuery(hql.toString());
		return query.list();
	}

	@Override
	public List<Rank12> queryRankByUnivCodeAndSpecCode(String univCode, String specCode) {
		String hql = "from Rank12 where univCode = '" + univCode + "' and specCode = '" + specCode + "'";
		Query query = getSession().createQuery(hql.toString());
		return query.list();
	}
}
