package com.jeff.action;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jeff.model.News;
import com.jeff.service.NewsService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 新闻资讯Action
 * @author Mr.sorrow
 */
public class NewsAction extends ActionSupport{
	
	private NewsService newsService;
	private Map<String, Object> newsMap = new HashMap<String, Object>();
	private String newsId;
	private String newsLabel;
	private String hot;
	
	public void setNewsId(String newsId) {
		this.newsId = newsId;
	}
	
	public void setNewsLabel(String newsLabel) {
		this.newsLabel = newsLabel;
	}

	public void setHot(String hot) {
		this.hot = hot;
	}

	public Map<String, Object> getNewsMap() {
		return newsMap;
	}
	
	public void setNewsService(NewsService newsService) {
		this.newsService = newsService;
	}
	
	/**
	 * 根据id查找news
	 * @return
	 */
	public String queryNewsById() {
		List<News> list = newsService.queryNewsById(newsId);
		newsMap.put("rows", list);
		return "newsMap";
	}
	
	/**
	 * 根据label查询最新相关news集合
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	public String queryNewsByLabel() throws UnsupportedEncodingException{
		List<News> list = newsService.queryNewsByLabel(new String(newsLabel.getBytes("iso8859-1"), "utf-8"));
		newsMap.put("rows", list);
		return "newsMap";
	}
	
	/**
	 * 查询最新热门news集合（10条）
	 * @return
	 */
	public String queryNewsByHotAndDate(){
		List<News> list = newsService.queryNewsByHotAndDate(hot);
		newsMap.put("rows", list);
		return "newsMap";
	}
}
