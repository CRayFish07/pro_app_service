package com.jeff.daoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.jeff.dao.UserDao;
import com.jeff.model.Puser;


public class UserDaoImpl implements UserDao {

private SessionFactory sessionFactory;
	
	protected Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	/**
	 * 注册、保存用户
	 */
	@Override
	public void save(Puser puser) {
		//保存用户
		getSession().save(puser);
	}

	/**
	 * 登录方法
	 */
	@Override
	public Puser login(Puser puser) {
		String hql = "from Puser where username = '"+puser.getUsername()+"' and password = '"+puser.getPassword()+"'";
		List<Puser> list = getSession().createQuery(hql.toString()).list();
		if(list.size() != 0)
			return list.get(0);
		else 
			return null;
	}

}
