package com.jeff.serviceImpl;

import java.util.List;

import com.jeff.dao.MajorDao;
import com.jeff.model.Dis;
import com.jeff.model.Major;
import com.jeff.model.Spec;
import com.jeff.model.Univ;
import com.jeff.service.MajorService;
import com.jeff.util.PageBean;

public class MajorServiceImpl implements MajorService {

	private MajorDao majorDao;
	
	public void setMajorDao(MajorDao majorDao) {
		this.majorDao = majorDao;
	}
	
	@Override
	public Major queryMajorById(String majorCode) {
		return majorDao.queryMajorById(majorCode);
	}

	@Override
	public PageBean<Univ> queryAllUnivByMajor(String majorCode, Integer page, String... args) {
		PageBean<Univ> pageBean = new PageBean<Univ>();
		
		//当前页数
		pageBean.setPage(page);
		
		//每页显示条数
		int limit = 5;
		pageBean.setLimit(limit);
		
		//查询所有记录数
		Integer totalCount = majorDao.findTotalCountOfMajor(majorCode, args);
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
		List<Univ> list = majorDao.findAllUnivByMajor(majorCode, begin, limit, args);
		pageBean.setList(list);
				
		return pageBean;	
	}

	@Override
	public List<Dis> queruAllDis() {
		return majorDao.queryAllDis();
	}

	@Override
	public List<Spec> queryAllSpecByDis(String disCode) {
		return majorDao.queryAllSpecByDis(disCode);
	}

	@Override
	public List<Spec> queryAllMajorBySpec(String specCode) {
		return majorDao.queryAllMajorBySpec(specCode);
	}

	@Override
	public List<Spec> queryAllMajorByDis(String disCode) {
		return majorDao.queryAllMajorByDis(disCode);
	}
}
