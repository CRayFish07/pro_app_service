package com.jeff.model;
// Generated 2017-3-25 10:43:49 by Hibernate Tools 4.3.5.Final

/**
 * Qs2017 generated by hbm2java
 */
public class Qs2017 implements java.io.Serializable {

	private Integer id;
	private String year;
	private String rank;
	private String univName;

	public Qs2017() {
	}

	public Qs2017(String year, String rank, String univName) {
		this.year = year;
		this.rank = rank;
		this.univName = univName;
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

}
