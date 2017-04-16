package com.jeff.serviceImpl;

import java.util.List;

import com.jeff.dao.ScoreLineDao;
import com.jeff.model.CollegeScoreLine;
import com.jeff.service.ScoreLineService;

public class ScoreLineServiceImpl implements ScoreLineService {
	private ScoreLineDao scoreLineDao;
	
	public void setScoreLineDao(ScoreLineDao scoreLineDao) {
		this.scoreLineDao = scoreLineDao;
	}

	@Override
	public List<CollegeScoreLine> queryCollegeScoreLine(String univName, String province, String artsScience,
			String batch) {
		return scoreLineDao.queryCollegeScoreLine(univName, province, artsScience, batch);
	}
}
