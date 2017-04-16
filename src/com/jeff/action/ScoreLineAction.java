package com.jeff.action;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jeff.model.CollegeScoreLine;
import com.jeff.service.ScoreLineService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 分数线action
 * @author Mr.sorrow
 */

public class ScoreLineAction extends ActionSupport {
	private ScoreLineService scoreLineService;
	private CollegeScoreLine collegeScoreLine;

	private Map<String, Object> scoreLineMap = new HashMap<String, Object>();

	public CollegeScoreLine getCollegeScoreLine() {
		return collegeScoreLine;
	}

	public void setCollegeScoreLine(CollegeScoreLine collegeScoreLine) {
		this.collegeScoreLine = collegeScoreLine;
	}

	public void setScoreLineService(ScoreLineService scoreLineService) {
		this.scoreLineService = scoreLineService;
	}

	public Map<String, Object> getScoreLineMap() {
		return scoreLineMap;
	}

	/**
	 * 根据高校名称、生源地、文理科、批次查询高校录取分数线 
	 * @return
	 * @throws UnsupportedEncodingException
	 */
	public String queryCollegeScoreLine() throws UnsupportedEncodingException {
		List<CollegeScoreLine> list = scoreLineService.queryCollegeScoreLine(
				new String(this.collegeScoreLine.getUnivName().getBytes("iso8859-1"), "utf-8"),
				new String(this.collegeScoreLine.getProvince().getBytes("iso8859-1"), "utf-8"),
				new String(this.collegeScoreLine.getArtsScience().getBytes("iso8859-1"), "utf-8"),
				new String(this.collegeScoreLine.getBatch().getBytes("iso8859-1"), "utf-8"));
		scoreLineMap.put("rows", list);
		return "scoreLineMap";
	}
}
