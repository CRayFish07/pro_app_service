package com.jeff.service;

import com.jeff.model.Puser;

public interface UserService {

	public void regist(Puser puser);

	public Puser login(Puser puser);

}
