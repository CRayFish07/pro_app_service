package com.jeff.action;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jeff.model.Dis;
import com.jeff.model.Major;
import com.jeff.model.Spec;
import com.jeff.model.Univ;
import com.jeff.service.MajorService;
import com.jeff.service.RankService;
import com.jeff.util.PageBean;
import com.opensymphony.xwork2.ActionSupport;

public class MajorAction extends ActionSupport {
	private MajorService majorService;
	private RankService rankService;
	private Major major;
	
	//��ѯרҵ�ഫ��
	private String disCode;
	//��ѯרҵ����
	private String specCode;
	// ��ҳ��ѯ����
	private Integer page;
	// ǰ̨��ʾ������ҳ������
	private Integer rankTotalCount;
	private Integer univTotalCount;
	private String province;

	private Map<String, Object> allUnivMap = new HashMap<String, Object>();
	private Map<String, Object> allDisMap = new HashMap<String, Object>();
	private Map<String, Object> allSpecMap = new HashMap<String, Object>();
	private Map<String, Object> allMajorMap = new HashMap<String, Object>();

	public void setProvince(String province) {
		this.province = province;
	}

	public Integer getRankTotalCount() {
		return rankTotalCount;
	}

	public Integer getUnivTotalCount() {
		return univTotalCount;
	}

	public void setRankService(RankService rankService) {
		this.rankService = rankService;
	}

	public Map<String, Object> getAllUnivMap() {
		return allUnivMap;
	}

	public void setAllUnivMap(Map<String, Object> allUnivMap) {
		this.allUnivMap = allUnivMap;
	}

	public Map<String, Object> getAllDisMap() {
		return allDisMap;
	}

	public void setAllDisMap(Map<String, Object> allDisMap) {
		this.allDisMap = allDisMap;
	}

	public Map<String, Object> getAllSpecMap() {
		return allSpecMap;
	}

	public void setAllSpecMap(Map<String, Object> allSpecMap) {
		this.allSpecMap = allSpecMap;
	}

	public Map<String, Object> getAllMajorMap() {
		return allMajorMap;
	}

	public void setDisCode(String disCode) {
		this.disCode = disCode;
	}

	public void setSpecCode(String specCode) {
		this.specCode = specCode;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Major getMajor() {
		return major;
	}

	public void setMajor(Major major) {
		this.major = major;
	}

	public void setMajorService(MajorService majorService) {
		this.majorService = majorService;
	}

	/**
	 * ����code����רҵ
	 * @throws UnsupportedEncodingException 
	 */
	public String queryMajorById() throws UnsupportedEncodingException {
		this.major = majorService.queryMajorById(this.major.getMajorCode());
		this.univTotalCount = majorService.queryAllUnivByMajor(this.major.getMajorCode(), 1).getTotalCount();
		this.rankTotalCount = rankService.queryUnivRankByMajor(this.major.getMajorCode(), 1).getTotalCount();
		return "major";
	}

	/**
	 * ����code�������п����У��ҳ��ʾ
	 * 
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	public String queryAllUnivByMajor() throws UnsupportedEncodingException {
		PageBean<Univ> pageBean = new PageBean<Univ>();
		//ʡ�ݲ�ѯ�����ӻ��߲���
		if(province == null){
			pageBean = majorService.queryAllUnivByMajor(this.major.getMajorCode(), page);
			this.univTotalCount = pageBean.getTotalCount();
		}else {
			pageBean = majorService.queryAllUnivByMajor(this.major.getMajorCode(), page,
					new String(province.getBytes("iso8859-1"), "utf-8"));
			this.univTotalCount = pageBean.getTotalCount();
		}
		List<Univ> list = pageBean.getList();
		allUnivMap.put("rows", list);
		allUnivMap.put("total", pageBean.getTotalCount());
		return "allUnivMap";
	}
	
	/**
	 * ��ѯ����ѧ������0->2
	 * @return ѧ����json����
	 */
	public String queryAllDis(){
		List<Dis> list = majorService.queruAllDis();
		allDisMap.put("rows", list);
		return "allDisMap";
	}
	
	/**
	 * ��ѯ����רҵ����2->4
	 * @return רҵ��json
	 */
	public String queryAllSpecByDis(){
		List<Spec> list = majorService.queryAllSpecByDis(disCode);
		allSpecMap.put("rows", list);
		return "allSpecMap";
	}
	
	/**
	 * ��ѯרҵ2->6
	 * @return רҵjson
	 */
	public String queryAllMajorByDis(){
		List<Spec> list = majorService.queryAllMajorByDis(disCode);
		allMajorMap.put("rows", list);
		return "allMajorMap";
	}
	
	/**
	 * ��ѯרҵ4->6
	 * @return רҵjson
	 */
	public String queryAllMajorBySpec() {
		List<Spec> list = majorService.queryAllMajorBySpec(specCode);
		allMajorMap.put("rows", list);
		return "allMajorMap";
	}
}
