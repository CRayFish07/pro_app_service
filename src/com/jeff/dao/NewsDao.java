package com.jeff.dao;

import java.util.List;

import com.jeff.model.News;

public interface NewsDao {

	List<News> queryNewsById(String newsId);

	List<News> queryNewsByLabel(String newsLabel);

	List<News> queryNewsByHotAndDate(String hot);

}
