package com.blog.dao;

import com.blog.entity.Article;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("articleMapper")
public interface ArticleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Article record);

    int insertSelective(Article record);

    Article selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Article record);

    int updateByPrimaryKeyWithBLOBs(Article record);

    int updateByPrimaryKey(Article record);

    List<Article> queryAll();

    int countAllNum();

    Article selectLastArticle(Integer id);

    Article selectNextArticle(Integer id);

    List<Article> selectByWord(String word);
}