package com.blog.service.impl;

import com.blog.dao.CategoryMapper;
import com.blog.service.ArticleService;
import com.blog.dao.ArticleMapper;
import com.blog.entity.Article;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("articleServiceImpl")
public class ArticleServiceImpl implements ArticleService {

    @Resource(name = "articleMapper")
    private ArticleMapper articleMapper;

    @Resource(name = "categoryMapper")
    private CategoryMapper categoryMapper;

    @Override
    public Article selectById(Integer id) {
        return articleMapper.selectByPrimaryKey(id);
    }

    @Override
    public Article selectLastArticle(Integer id) {
        return articleMapper.selectLastArticle(id);
    }

    @Override
    public Article selectNextArticle(Integer id) {
        return articleMapper.selectNextArticle(id);
    }

    @Override
    public List<Article> queryAll() {
        return articleMapper.queryAll();
    }

    @Override
    public int countAllNum() {
        return articleMapper.countAllNum();
    }

    @Override
    public boolean updateArticle(Article article) {
        return articleMapper.updateByPrimaryKeySelective(article)>0;
    }

    @Override
    public int deleteById(Integer id) {
        return articleMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int selectCount() {
        return articleMapper.countAllNum();
    }

    @Override
    public List<Article> selectByWord(String word) {
        return articleMapper.selectByWord(word);
    }

    @Override
    public boolean insert(Article article) {
        return articleMapper.insert(article)>0;
    }

    @Override
    public List<Article> selectByYear(int year) {
        return articleMapper.selectByYear(year);
    }

    @Override
    public List<Article> selectByCategory(String category) {
        int id = categoryMapper.selectArticleIdByCategory(category).getId();
        return articleMapper.selectArticleById(id);
    }
}
