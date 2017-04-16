package com.jeff.service;

import java.util.List;

import com.jeff.model.CollegeScoreLine;

public interface ScoreLineService {

	List<CollegeScoreLine> queryCollegeScoreLine(String univName, String province, String artsScience, String batch);

}
