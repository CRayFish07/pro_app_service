package com.jeff.serviceImpl;

import java.util.List;

import com.jeff.dao.NewsDao;
import com.jeff.model.News;
import com.jeff.service.NewsService;

public class NewsServiceImpl implements NewsService {

	private NewsDao newsDao;
	
	public void setNewsDao(NewsDao newsDao) {
		this.newsDao = newsDao;
	}

	@Override
	public List<News> queryNewsById(String newsId) {
		return newsDao.queryNewsById(newsId);
	}

	@Override
	public List<News> queryNewsByLabel(String newsLabel) {
		return newsDao.queryNewsByLabel(newsLabel);
	}

	@Override
	public List<News> queryNewsByHotAndDate(String hot) {
		return newsDao.queryNewsByHotAndDate(hot);
	}

}
