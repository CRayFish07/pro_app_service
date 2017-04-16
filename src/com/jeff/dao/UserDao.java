package com.jeff.dao;

import com.jeff.model.Puser;

public interface UserDao {

	public void save(Puser user);

	public Puser login(Puser user);

}
