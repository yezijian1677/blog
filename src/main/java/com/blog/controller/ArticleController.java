package com.blog.controller;

import com.blog.service.ArticleService;
import com.blog.service.CategoryService;
import com.blog.service.impl.ArticleServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Calendar;
import java.util.Map;

@Controller("articleController")
@RequestMapping("/article")
public class ArticleController {

    @Autowired
    private ArticleService articleService;
    @Autowired
    private CategoryService categoryService;

    @RequestMapping("/list")
    public String list(Map<String, Object> map){
        map.put("list", articleService.queryAll());
        return "index";
    }

    @RequestMapping(value = "/to_detail", params = "id")
    public String toDetail(Map<String, Object> map, String id){
        int id1 = Integer.parseInt(id);
        map.put("detail", articleService.selectById(id1));
        return "post";
    }

    @RequestMapping(value = "/list/title")
    public String listTitle(Map<String, Object> map){
        Calendar calendar = Calendar.getInstance();
        int year = calendar.get(Calendar.YEAR);
        map.put("sub", articleService.selectByYear(year));
        map.put("nowYear", year);

        return "archive";
    }

    @RequestMapping(value = "/list/title", params = "year")
    public String listTitle(Map<String, Object> map, String year){
        int year1 = Integer.parseInt(year);
        map.put("sub", articleService.selectByYear(year1));
        map.put("nowYear", year1);
        return "archive";
    }

    @RequestMapping(value = "/list/category")
    public String listCategory(Map<String, Object> map){
        map.put("ArticleList", articleService.queryAll());
        map.put("CategoryList", categoryService.queryAll());
        System.out.print(categoryService.queryAll());

        return "tag";
    }

    @RequestMapping(value = "/list/category", params = "cate")
    public String listCategory(Map<String, Object> map, String cate){
        map.put("ArticleList", articleService.selectByCategory(cate));
        map.put("CategoryList", categoryService.queryAll());

        return "tag";
    }




}
