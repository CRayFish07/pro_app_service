package com.jeff.model;
// Generated 2017-3-25 10:43:49 by Hibernate Tools 4.3.5.Final

/**
 * Xyhpaiming generated by hbm2java
 */
public class Xyhpaiming implements java.io.Serializable {

	private Integer id;
	private String univName;
	private String rank;
	private String univProvince;
	private String univCode;

	public Xyhpaiming() {
	}

	public Xyhpaiming(String univName, String rank, String univProvince, String univCode) {
		this.univName = univName;
		this.rank = rank;
		this.univProvince = univProvince;
		this.univCode = univCode;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUnivName() {
		return this.univName;
	}

	public void setUnivName(String univName) {
		this.univName = univName;
	}

	public String getRank() {
		return this.rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

	public String getUnivProvince() {
		return this.univProvince;
	}

	public void setUnivProvince(String univProvince) {
		this.univProvince = univProvince;
	}

	public String getUnivCode() {
		return this.univCode;
	}

	public void setUnivCode(String univCode) {
		this.univCode = univCode;
	}

}
