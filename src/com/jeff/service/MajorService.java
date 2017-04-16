package com.jeff.service;

import java.util.List;

import com.jeff.model.Dis;
import com.jeff.model.Major;
import com.jeff.model.Spec;
import com.jeff.model.Univ;
import com.jeff.util.PageBean;

public interface MajorService {

	public Major queryMajorById(String majorCode);

	public PageBean<Univ> queryAllUnivByMajor(String majorCode, Integer page, String... province);

	public List<Dis> queruAllDis();

	public List<Spec> queryAllSpecByDis(String disCode);

	public List<Spec> queryAllMajorBySpec(String specCode);

	public List<Spec> queryAllMajorByDis(String disCode);

}
