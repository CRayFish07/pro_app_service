package com.jeff.model;
// Generated 2017-3-25 10:43:49 by Hibernate Tools 4.3.5.Final

/**
 * Wushulian2017 generated by hbm2java
 */
public class Wushulian2017 implements java.io.Serializable {

	private Integer id;
	private String year;
	private String rank;
	private String univName;
	private String univCode;
	private String univProvince;

	public Wushulian2017() {
	}

	public Wushulian2017(String year, String rank, String univName, String univCode, String univProvince) {
		this.year = year;
		this.rank = rank;
		this.univName = univName;
		this.univCode = univCode;
		this.univProvince = univProvince;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getYear() {
		return this.year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getRank() {
		return this.rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

	public String getUnivName() {
		return this.univName;
	}

	public void setUnivName(String univName) {
		this.univName = univName;
	}

	public String getUnivCode() {
		return this.univCode;
	}

	public void setUnivCode(String univCode) {
		this.univCode = univCode;
	}

	public String getUnivProvince() {
		return this.univProvince;
	}

	public void setUnivProvince(String univProvince) {
		this.univProvince = univProvince;
	}

}
