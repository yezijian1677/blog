package com.blog.controller;

import com.blog.service.ArticleService;
import com.blog.service.impl.ArticleServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller("articleController")
@RequestMapping("/article")
public class ArticleController {

    @Autowired
    private ArticleService articleService;

    @RequestMapping("/list")
    public String list(Map<String, Object> map){
        map.put("list", articleService.queryAll());
        return "index";
    }


}
