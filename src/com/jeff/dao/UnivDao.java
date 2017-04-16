package com.jeff.dao;

import java.util.List;

import com.jeff.model.Bridge;
import com.jeff.model.Dis;
import com.jeff.model.Major;
import com.jeff.model.Spec;
import com.jeff.model.Univ;

public interface UnivDao {
	
	public Univ queryUnivById(String univCode);
	
	public List<Dis> queryDisOfUniv(String univCode);
	
	public List<Spec> querySpecOfUniv(String univCode,String disCode);

	public List<Major> queryMajorOfUniv(String univCode,String specCode);

	public List<Bridge> queryXueYuanById(String univCode);

	public List<Major> queryMajorOfXueYuan(String univCode, String xueyuan);

	public List<Univ> queryAllUnivByPT(String univProvince, String univType);
}
