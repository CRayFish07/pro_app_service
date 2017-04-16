package com.jeff.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jeff.model.Jiaodapaiming;
import com.jeff.model.Major;
import com.jeff.model.Qs2017;
import com.jeff.model.Rank12;
import com.jeff.model.Univ;
import com.jeff.model.Wushulian2017;
import com.jeff.model.Xyhpaiming;
import com.jeff.service.RankService;
import com.jeff.util.PageBean;
import com.opensymphony.xwork2.ActionSupport;

/**
 * ����action
 * 
 * @author Mr.sorrow
 */
public class RankAction extends ActionSupport {
	private RankService rankService;
	// page���󣺰�����ѯ���ص�list
	private PageBean<Rank12> pageBean;
	// ��ѯҳ��
	private Integer page;
	//רҵ����
	private String majorCode;
	
	private Univ university;
	private Major major ;
	private Map<String, Object> rankUnivMap = new HashMap<String, Object>();
	private Map<String, Object> rankSpecMap = new HashMap<String, Object>();
	private Map<String, Object> rankRankMap = new HashMap<String, Object>();
	private Map<String, Object> rankXYHMap = new HashMap<String, Object>();
	private Map<String, Object> rankWSLMap = new HashMap<String, Object>();
	private Map<String, Object> rankJDMap = new HashMap<String, Object>();
	private Map<String, Object> rankQSMap = new HashMap<String, Object>();
		
	public Map<String, Object> getRankWSLMap() {
		return rankWSLMap;
	}

	public Map<String, Object> getRankJDMap() {
		return rankJDMap;
	}

	public Map<String, Object> getRankQSMap() {
		return rankQSMap;
	}

	public Map<String, Object> getRankXYHMap() {
		return rankXYHMap;
	}

	public RankService getRankService() {
		return rankService;
	}

	public void setRankService(RankService rankService) {
		this.rankService = rankService;
	}

	public PageBean<Rank12> getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean<Rank12> pageBean) {
		this.pageBean = pageBean;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public void setMajorCode(String majorCode) {
		this.majorCode = majorCode;
	}

	public Univ getUniversity() {
		return university;
	}

	public void setUniversity(Univ university) {
		this.university = university;
	}

	public Major getMajor() {
		return major;
	}

	public void setMajor(Major major) {
		this.major = major;
	}

	public Map<String, Object> getRankUnivMap() {
		return rankUnivMap;
	}

	public void setRankUnivMap(Map<String, Object> rankUnivMap) {
		this.rankUnivMap = rankUnivMap;
	}

	public Map<String, Object> getRankSpecMap() {
		return rankSpecMap;
	}

	public void setRankSpecMap(Map<String, Object> rankSpecMap) {
		this.rankSpecMap = rankSpecMap;
	}

	public Map<String, Object> getRankRankMap() {
		return rankRankMap;
	}

	/**
	 * ����רҵ���루6λ�����и�У����
	 * @return
	 */
	public String queryUnivRankByMajor() {
		pageBean = rankService.queryUnivRankByMajor(this.major.getMajorCode(), page);
		List<Rank12> list = pageBean.getList();
		rankUnivMap.put("rows", list);
		return "rankUnivMap";
	}
	
	/**
	 * ���ݸ�У�������ѧ��רҵ������
	 * @return
	 */
	public String querySpecRankByUniv(){
		pageBean = rankService.querySpecRankByUniv(this.university.getUnivCode(), page);
		List<Rank12> list = pageBean.getList();
		rankSpecMap.put("rows", list);
		return "rankSpecMap";
	}
	
	/**
	 * ���ݸ�У���롢רҵ�����ѯ����
	 * @return
	 */
	public String queryRankByUnivCodeAndMajorCode(){
		List<Rank12> list = rankService.queryRankByUnivCodeAndMajorCode(this.university.getUnivCode(), majorCode);
		rankRankMap.put("rows", list);
		return "rankRankMap";
	}
	
	/**
	 * ����������У�ѻ�
	 */
	public String queryXYHRank(){
		List<Xyhpaiming> list = rankService.queryXYHRank();
		rankXYHMap.put("rows", list);
		return "rankXYHMap";
	}
	
	public String queryAllXYHRank(){
		List<Xyhpaiming> list = rankService.queryAllXYHRank();
		rankXYHMap.put("rows", list);
		return "rankXYHMap";
	}
	
	/**
	 * ����������������
	 */
	public String queryWSLRank(){
		List<Wushulian2017> list = rankService.queryWSLRank();
		rankWSLMap.put("rows", list);
		return "rankWSLMap";
	}
	
	public String queryAllWSLRank(){
		List<Wushulian2017> list = rankService.queryAllWSLRank();
		rankWSLMap.put("rows", list);
		return "rankWSLMap";
	}
	
	/**
	 * ��������������
	 */
	public String queryJDRank(){
		List<Jiaodapaiming> list = rankService.queryJDRank();
		rankJDMap.put("rows", list);
		return "rankJDMap";
	}
	
	public String queryAllJDRank(){
		List<Jiaodapaiming> list = rankService.queryAllJDRank();
		rankJDMap.put("rows", list);
		return "rankJDMap";
	}
	
	/**
	 * ����������QS
	 */
	public String queryQSRank(){
		List<Qs2017> list = rankService.queryQSRank();
		rankQSMap.put("rows", list);
		return "rankQSMap";
	}
	
	public String queryAllQSRank(){
		List<Qs2017> list = rankService.queryAllQSRank();
		rankQSMap.put("rows", list);
		return "rankQSMap";
	}
}
