package com.jeff.service;

import java.util.List;

import com.jeff.model.Jiaodapaiming;
import com.jeff.model.Qs2017;
import com.jeff.model.Rank12;
import com.jeff.model.Wushulian2017;
import com.jeff.model.Xyhpaiming;
import com.jeff.util.PageBean;

public interface RankService {

	public PageBean<Rank12> querySpecRankByUniv(String univCode, Integer page);

	public PageBean<Rank12> queryUnivRankByMajor(String majorCode, Integer page);

	public List<Xyhpaiming> queryXYHRank();

	public List<Wushulian2017> queryWSLRank();

	public List<Jiaodapaiming> queryJDRank();

	public List<Qs2017> queryQSRank();

	public List<Xyhpaiming> queryAllXYHRank();

	public List<Wushulian2017> queryAllWSLRank();

	public List<Jiaodapaiming> queryAllJDRank();

	public List<Qs2017> queryAllQSRank();

	public List<Rank12> queryRankByUnivCodeAndMajorCode(String univCode, String majorCode);
		
}
