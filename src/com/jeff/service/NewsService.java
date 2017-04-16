package com.jeff.service;

import java.util.List;

import com.jeff.model.News;

public interface NewsService {

	List<News> queryNewsById(String newsId);

	List<News> queryNewsByLabel(String newsLabel);

	List<News> queryNewsByHotAndDate(String hot);

}
