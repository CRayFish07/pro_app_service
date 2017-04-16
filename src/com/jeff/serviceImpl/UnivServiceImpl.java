package com.jeff.serviceImpl;

import java.util.List;

import com.jeff.dao.UnivDao;
import com.jeff.model.Bridge;
import com.jeff.model.Dis;
import com.jeff.model.Major;
import com.jeff.model.Spec;
import com.jeff.model.Univ;
import com.jeff.service.UnivService;

public class UnivServiceImpl implements UnivService{
	
	private UnivDao univDao; 
	
	public void setUnivDao(UnivDao univDao) {
		this.univDao = univDao;
	}

	@Override
	public Univ queryUnivById(String univCode) {
		return univDao.queryUnivById(univCode);
	}

	@Override
	public List<Dis> queryDisOfUniv(String univCode) {
		return univDao.queryDisOfUniv(univCode);
	}

	@Override
	public List<Spec> querySpecOfUniv(String univCode, String disCode) {
		return univDao.querySpecOfUniv(univCode, disCode);
	}

	@Override
	public List<Major> queryMajorOfUniv(String univCode, String specCode) {
		return univDao.queryMajorOfUniv(univCode, specCode);
	}

	@Override
	public List<Bridge> queryXueYuanById(String univCode) {
		return univDao.queryXueYuanById(univCode);
	}

	@Override
	public List<Major> queryMajorOfXueYuan(String univCode, String xueyuan) {
		return univDao.queryMajorOfXueYuan(univCode, xueyuan);
	}

	@Override
	public List<Univ> queryAllUnivByPT(String univProvince, String univType) {
		return univDao.queryAllUnivByPT(univProvince, univType);
	}
	
}
