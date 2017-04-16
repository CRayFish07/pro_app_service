package com.jeff.dao;

import java.util.List;

import com.jeff.model.CollegeScoreLine;

public interface ScoreLineDao {

	List<CollegeScoreLine> queryCollegeScoreLine(String univName, String province, String artsScience, String batch);

}
