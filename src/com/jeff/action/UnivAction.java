package com.jeff.action;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jeff.model.Bridge;
import com.jeff.model.Dis;
import com.jeff.model.Major;
import com.jeff.model.Spec;
import com.jeff.model.Univ;
import com.jeff.service.RankService;
import com.jeff.service.UnivService;
import com.opensymphony.xwork2.ActionSupport;

public class UnivAction extends ActionSupport {

	private UnivService univService;
	private RankService rankService;

	// 总页数
	private Integer totalCount;
	private Univ university;
	private Dis dis;
	private Spec spec;
	private Bridge bridge;
	private List<Dis> univDis;
	private Map<String, Object> specMap = new HashMap<String, Object>();
	private Map<String, Object> majorMap = new HashMap<String, Object>();
	private Map<String, Object> xueyuanMap = new HashMap<String, Object>();
	private Map<String, Object> allUnivMap = new HashMap<String, Object>();

	// 查询参数
	private String univProvince;
	private String univType;

	public void setUnivProvince(String univProvince) {
		this.univProvince = univProvince;
	}

	public void setUnivType(String univType) {
		this.univType = univType;
	}

	public List<Dis> getUnivDis() {
		return univDis;
	}

	public void setUnivDis(List<Dis> univDis) {
		this.univDis = univDis;
	}

	public Bridge getBridge() {
		return bridge;
	}

	public void setBridge(Bridge bridge) {
		this.bridge = bridge;
	}

	public Spec getSpec() {
		return spec;
	}

	public void setSpec(Spec spec) {
		this.spec = spec;
	}

	public Univ getUniversity() {
		return university;
	}

	public void setUniversity(Univ university) {
		this.university = university;
	}

	public void setUnivService(UnivService univService) {
		this.univService = univService;
	}

	public Map<String, Object> getSpecMap() {
		return specMap;
	}

	public Map<String, Object> getMajorMap() {
		return majorMap;
	}

	public Map<String, Object> getXueyuanMap() {
		return xueyuanMap;
	}

	public Map<String, Object> getAllUnivMap() {
		return allUnivMap;
	}

	public Dis getDis() {
		return dis;
	}

	public void setDis(Dis dis) {
		this.dis = dis;
	}

	public Integer getTotalCount() {
		return totalCount;
	}

	public void setRankService(RankService rankService) {
		this.rankService = rankService;
	}

	/**
	 * 根据univ_code查找学校
	 * 
	 * @return
	 */
	public String queryUnivById() {
		this.university = univService.queryUnivById(this.university.getUnivCode());
		this.univDis = univService.queryDisOfUniv(this.university.getUnivCode());
		this.totalCount = rankService.querySpecRankByUniv(this.university.getUnivCode(), 1).getTotalCount();
		return "college";
	}

	/**
	 * 根据univ_code dis_code(13个学科门类 2) 查找专业小类
	 * 
	 * @return
	 */
	public String querySpecOfUniv() {
		List<Spec> list = univService.querySpecOfUniv(this.university.getUnivCode(), this.dis.getDisCode());
		specMap.put("rows", list);
		return "specMap";
	}

	/**
	 * 根据univ_code spec_code(专业小类 4) 查找具体专业
	 * 
	 * @return
	 */
	public String queryMajorOfUniv() {
		List<Major> list = univService.queryMajorOfUniv(this.university.getUnivCode(), this.spec.getSpecCode());
		majorMap.put("rows", list);
		return "majorMap";
	}

	/**
	 * 根据univ_code查找学校所有学院
	 * 
	 * @return
	 */
	public String queryXueYuanById() {
		List<Bridge> list = univService.queryXueYuanById(this.university.getUnivCode());
		xueyuanMap.put("rows", list);
		return "xueyuanMap";
	}

	/**
	 * 根据univ_code xueyuan 查找具体专业
	 * 
	 * @return
	 * @throws UnsupportedEncodingException
	 */
	public String queryMajorOfXueYuan() throws UnsupportedEncodingException {
		List<Major> list = univService.queryMajorOfXueYuan(this.university.getUnivCode(),
				new String(this.bridge.getXueyuan().getBytes("iso8859-1"), "utf-8"));
		majorMap.put("rows", list);
		return "majorMap";
	}

	/**
	 * 根据所在地、高校类型 查询高校
	 * 
	 * @return
	 * @throws UnsupportedEncodingException
	 */
	public String queryAllUnivByPT() throws UnsupportedEncodingException {
		List<Univ> list = univService.queryAllUnivByPT(new String(univProvince.getBytes("iso8859-1"), "utf-8"),
				new String(univType.getBytes("iso8859-1"), "utf-8"));
		allUnivMap.put("rows", list);
		return "allUnivMap";
	}
}