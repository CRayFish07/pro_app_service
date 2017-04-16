package com.jeff.serviceImpl;

import com.jeff.dao.UserDao;
import com.jeff.model.Puser;
import com.jeff.service.UserService;
import com.jeff.util.UUIDUtils;

public class UserServiceImpl implements UserService {

	private UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public void regist(Puser puser) {
		//保存用户(设置完整用户对象属性)
		puser.setState(0);
		puser.setCode(UUIDUtils.getUUID());
		userDao.save(puser);
		
	}

	@Override
	public Puser login(Puser puser) {
		return userDao.login(puser);
	}
}
