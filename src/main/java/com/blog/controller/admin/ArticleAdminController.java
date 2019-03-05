package com.blog.controller.admin;

import com.blog.entity.Article;
import com.blog.service.ArticleService;
import com.blog.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.Map;

@Controller("articleAdminController")
@RequestMapping("/admin/article")
public class ArticleAdminController {

    @Autowired
    private ArticleService articleService;
    @Autowired
    private CategoryService categoryService;

    /**
     * 传递数据给add article 以及 分类数据
     * @param map
     * @return
     */
    @RequestMapping("/to_add")
    public String toAdd(Map<String,Object> map){
        map.put("labelList", categoryService.queryAll());
        return "admin/writeBlog";
    }
    @RequestMapping("/add")
    public String add(HttpServletRequest request, HttpServletResponse response){

        Article article = new Article();
        String title = request.getParameter("title");
        String keywords = request.getParameter("keywords");
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        String content = request.getParameter("content");
        String describle = request.getParameter("describle");
        Date date = new Date();
        article.setTime(date);
        article.setTitle(title);
        article.setCatagoryId(categoryId);
        article.setKeywords(keywords);
        article.setClick(0);
        article.setDescrible(describle);
        article.setContent(content);

        System.out.println(content);

        articleService.insert(article);
        return "redirect:admin/blogManage";
    }


}
