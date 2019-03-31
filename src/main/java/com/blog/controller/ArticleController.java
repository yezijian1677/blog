package com.blog.controller;

import com.blog.entity.Article;
import com.blog.service.ArticleService;
import com.blog.service.CategoryService;
import com.blog.service.impl.ArticleServiceImpl;
import com.blog.util.JsonUtil;
import com.blog.util.RedisPoolUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
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
        /**
         * 查询redis里是否有
         */
        String redisList = RedisPoolUtil.get("articleList");

        if (page!=null){
            PageHelper.startPage(page, pageSize);
            try {
                /**
                 * 如果没有就查询，并且添加入redis
                 */
                if (redisList == null){
                    list = articleService.queryAll();
                    RedisPoolUtil.setEx("articleList", JsonUtil.obj2String(list), 100);
                }else {
                    //有的话只需要反序列化
                    list = JsonUtil.string2Obj(redisList, List.class, Article.class);
                }

                PageInfo<Article> pageInfo = new PageInfo<Article>(list);
                map.put("page", pageInfo);
            } finally {
                PageHelper.clearPage();
            }
        } else {
            list = new ArrayList<Article>();
        }

        map.put("list", list);

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
