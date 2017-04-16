package com.jeff.dao;

import java.util.List;

import com.jeff.model.Dis;
import com.jeff.model.Major;
import com.jeff.model.Spec;
import com.jeff.model.Univ;

public interface MajorDao {

	public Major queryMajorById(String majorCode);

	public Integer findTotalCountOfMajor(String majorCode, String... args);

	public List<Univ> findAllUnivByMajor(String majorCode, int begin, int limit, String... args);

	public List<Dis> queryAllDis();

	public List<Spec> queryAllSpecByDis(String disCode);

	public List<Spec> queryAllMajorBySpec(String specCode);

	public List<Spec> queryAllMajorByDis(String disCode);

}
