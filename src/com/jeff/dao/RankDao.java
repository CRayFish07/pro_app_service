package com.jeff.dao;

import java.util.List;

import com.jeff.model.Jiaodapaiming;
import com.jeff.model.Qs2017;
import com.jeff.model.Rank12;
import com.jeff.model.Wushulian2017;
import com.jeff.model.Xyhpaiming;

public interface RankDao {

	public Integer findTotalCountOfSpec(String specCode);

	public List<Rank12> findUnivRankByPage(String specCode, int begin, int limit);

	public Integer findTotalCountOfUniv(String univCode);

	public List<Rank12> findSpecRankByPage(String univCode, int begin, int limit);

	public List<Xyhpaiming> queryXYHRank();

	public List<Wushulian2017> queryWSLRank();

	public List<Jiaodapaiming> queryJDRank();

	public List<Qs2017> queryQSRank();

	public List<Xyhpaiming> queryAllXYHRank();

	public List<Wushulian2017> queryAllWSLRank();

	public List<Jiaodapaiming> queryAllJDRank();

	public List<Qs2017> queryAllQSRank();

	public List<Rank12> queryRankByUnivCodeAndSpecCode(String univCode, String specCode);

}
