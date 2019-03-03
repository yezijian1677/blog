package com.blog.service;

import com.blog.entity.Article;

import java.util.List;

public interface ArticleService {

    Article selectById(Integer id);

    Article selectLastArticle(Integer id);

    Article selectNextArticle(Integer id);

    List<Article> queryAll();

    int countAllNum();

    boolean updateArticle(Article article);

    int deleteById(Integer id);

    int selectCount();

    List<Article> selectByWord(String word);

    boolean insert(Article article);

    List<Article> selectByYear(int year);

    List<Article> selectByCategory(String category);
}
