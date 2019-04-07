package com.blog.controller;

import com.blog.entity.Article;
import com.blog.service.ArticleService;
import com.blog.service.CategoryService;
import com.blog.service.impl.ArticleServiceImpl;
import com.blog.util.JsonUtil;
import com.blog.util.RedisPoolUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

@Controller("articleController")
@RequestMapping("/article")
public class ArticleController {

    @Autowired
    private ArticleService articleService;
    @Autowired
    private CategoryService categoryService;

    @RequestMapping("/list")
    public String list(Map<String, Object> map, @RequestParam(defaultValue = "1", required = true)Integer page){
        Integer pageSize = 4;
        List<Article> list;
        if (page!=null){
            PageHelper.startPage(page, pageSize);
            try {
                list = articleService.queryAll();
                PageInfo<Article> pageInfo = new PageInfo<>(list);
                map.put("page", pageInfo);
            } finally {
                PageHelper.clearPage();
            }
        } else {
            list = new ArrayList<>();
        }

        map.put("list", list);

        return "index";
    }

    /**
     * 返回文章详情
     * @param map
     * @param id
     * @return
     */
    @RequestMapping(value = "/to_detail", params = "id")
    public String toDetail(Map<String, Object> map, String id){

        int id1 = Integer.parseInt(id);
        String redisName = "ArticleDetail"+id1;
        String obj = RedisPoolUtil.get(redisName);
        Article article;

        if (obj == null){
            article = articleService.selectById(id1);
            RedisPoolUtil.setEx(redisName, JsonUtil.obj2String(article), 100);
            map.put("detail", article);
        }else {
            article = JsonUtil.string2Obj(obj, Article.class);
            map.put("detail", article);
        }

        return "post";
    }

    @RequestMapping(value = "/list/title")
    public String listTitle(Map<String, Object> map, @RequestParam(defaultValue = "2019", required = false)Integer year){

        String redisName = "ArticleDetailYear"+year;
        String obj = RedisPoolUtil.get(redisName);
        List<Article> article;

        if (obj == null){
            article = articleService.selectByYear(year);
            RedisPoolUtil.setEx(redisName, JsonUtil.obj2String(article), 100);
            map.put("sub", article);
        }else {
            article = JsonUtil.string2Obj(obj, List.class, Article.class);
            map.put("sub", article);
        }
        map.put("nowYear", year);

        return "archive";
    }

//    @RequestMapping(value = "/list/title", params = "year")
//    public String listTitle(Map<String, Object> map, String year){
//        int year1 = Integer.parseInt(year);
//        map.put("sub", articleService.selectByYear(year1));
//        map.put("nowYear", year1);
//        return "archive";
//    }

    @RequestMapping(value = "/list/category")
    public String listCategory(Map<String, Object> map, @RequestParam(defaultValue = "1", required = true)Integer page){
        Integer pageSize = 4;

        List<Article> list;
        if (page!=null){
            PageHelper.startPage(page, pageSize);
            try {
                list = articleService.queryAll();
                PageInfo<Article> pageInfo = new PageInfo<Article>(list);
                map.put("page", pageInfo);
            }finally {
                PageHelper.clearPage();
            }
        }else {
            list = new ArrayList<Article>();
        }

        map.put("ArticleList", list);
        map.put("CategoryList", categoryService.queryAll());
        return "tag";
    }

    @RequestMapping(value = "/list/category", params = "cate")
    public String listCategory(Map<String, Object> map, String cate){

        map.put("ArticleList", articleService.selectByCategory(cate));
        map.put("CategoryList", categoryService.queryAll());

        return "tag";
    }




}
