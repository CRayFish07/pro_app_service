package com.jeff.serviceImpl;

import java.util.List;

import com.jeff.dao.RankDao;
import com.jeff.model.Jiaodapaiming;
import com.jeff.model.Qs2017;
import com.jeff.model.Rank12;
import com.jeff.model.Wushulian2017;
import com.jeff.model.Xyhpaiming;
import com.jeff.service.RankService;
import com.jeff.util.PageBean;

public class RankServiceImpl implements RankService {

	private RankDao rankDao;

	public void setRankDao(RankDao rankDao) {
		this.rankDao = rankDao;
	}

	@Override
	public PageBean<Rank12> queryUnivRankByMajor(String majorCode, Integer page) {
		PageBean<Rank12> pageBean = new PageBean<Rank12>();
		//当前页数
		pageBean.setPage(page);
		
		//每页显示条数
		int limit = 5;
		pageBean.setLimit(limit);
		
		//查询所有记录数
		Integer totalCount = rankDao.findTotalCountOfSpec(majorCode);
		pageBean.setTotalCount(totalCount);
		
		//总页数
		int totalPage = 0;
		if(totalCount % limit == 0){
			totalPage = totalCount / limit;
		}else {
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		
		//学校排名结果数据集合
		int begin = (page - 1) * limit;
		List<Rank12> list = rankDao.findUnivRankByPage(majorCode, begin, limit);
		pageBean.setList(list);
		
		return pageBean;
	}

	@Override
	public PageBean<Rank12> querySpecRankByUniv(String univCode, Integer page) {
		PageBean<Rank12> pageBean = new PageBean<Rank12>();
		//当前页数
		pageBean.setPage(page);
		
		//每页显示条数
		int limit = 5;
		pageBean.setLimit(limit);
		
		//查询所有记录数
		Integer totalCount = rankDao.findTotalCountOfUniv(univCode);
		pageBean.setTotalCount(totalCount);
		
		//总页数
		int totalPage = 0;
		if(totalCount % limit == 0){
			totalPage = totalCount / limit;
		}else {
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		
		//学校排名结果数据集合
		int begin = (page - 1) * limit;
		List<Rank12> list = rankDao.findSpecRankByPage(univCode, begin, limit);
		pageBean.setList(list);
		
		return pageBean;
	}

	@Override
	public List<Xyhpaiming> queryXYHRank() {
		return rankDao.queryXYHRank();
	}

	@Override
	public List<Wushulian2017> queryWSLRank() {
		return rankDao.queryWSLRank();
	}

	@Override
	public List<Jiaodapaiming> queryJDRank() {
		return rankDao.queryJDRank();
	}

	@Override
	public List<Qs2017> queryQSRank() {
		return rankDao.queryQSRank();
	}

	@Override
	public List<Xyhpaiming> queryAllXYHRank() {
		return rankDao.queryAllXYHRank();
	}

	@Override
	public List<Wushulian2017> queryAllWSLRank() {
		return rankDao.queryAllWSLRank();
	}

	@Override
	public List<Jiaodapaiming> queryAllJDRank() {
		return rankDao.queryAllJDRank();
	}

	@Override
	public List<Qs2017> queryAllQSRank() {
		return rankDao.queryAllQSRank();
	}

	@Override
	public List<Rank12> queryRankByUnivCodeAndMajorCode(String univCode, String majorCode) {
		String specCode = majorCode.substring(0, 4);
		return rankDao.queryRankByUnivCodeAndSpecCode(univCode, specCode);
	}
}
