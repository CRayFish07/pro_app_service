package com.jeff.model;
// Generated 2017-3-25 10:43:49 by Hibernate Tools 4.3.5.Final

/**
 * Puser generated by hbm2java
 */
public class Puser implements java.io.Serializable {

	private int uid;
	private String username;
	private String password;
	private String email;
	private String addr;
	private String sex;
	private Integer state;
	private String code;

	public Puser() {
	}

	public Puser(int uid) {
		this.uid = uid;
	}

	public Puser(int uid, String username, String password, String email, String addr, String sex, Integer state,
			String code) {
		this.uid = uid;
		this.username = username;
		this.password = password;
		this.email = email;
		this.addr = addr;
		this.sex = sex;
		this.state = state;
		this.code = code;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddr() {
		return this.addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

}
