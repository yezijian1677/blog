package com.blog.controller.admin;

import com.blog.dto.ArticleDTO;
import com.blog.entity.Article;
import com.blog.entity.Category;
import com.blog.service.ArticleService;
import com.blog.service.CategoryService;
import com.sun.org.apache.xerces.internal.xs.StringList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
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
        return "admin/writeArticle";
    }

    /**
     * 获取数据上传到数据库
     * @param request
     * @param response
     * @return
     */
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
        return "redirect:admin/list";
    }

    /**
     * 遍历所有的article 把数据组合到articleDTO
     * @param map
     * @return
     */
    @RequestMapping("/list")
    public String list(Map<String, Object> map){

        List<Article> list = articleService.queryAll();
        ArrayList<ArticleDTO> articleDTOArrayList = new ArrayList<ArticleDTO>();

        for (Article article: list) {
            ArticleDTO articleDTO = new ArticleDTO();
            articleDTO.setId(article.getId());
            articleDTO.setClick(article.getClick());
            articleDTO.setKeywords(article.getKeywords());
            articleDTO.setTime(article.getTime());
            articleDTO.setTitle(article.getTitle());
            articleDTO.setCategory(categoryService.selectByCategoryId(article.getCatagoryId()));

            articleDTOArrayList.add(articleDTO);
        }

        map.put("list", articleDTOArrayList);


        return "admin/articleList";
    }

    /**
     * 删除文章
     * @param id
     * @return
     */
    @RequestMapping(value = "/delete",params = "id")
    public String remove(String id){
        int id1 = Integer.parseInt(id);
        articleService.deleteById(id1);
        return "redirect:list";
    }

    @RequestMapping(value = "/to_edit",params = "id")
    public String toUpdate(String id,Map<String,Object> map){
        int id1 = Integer.parseInt(id);
        Article article = articleService.selectById(id1);
        map.put("article", article);
        map.put("category",categoryService.selectByCategoryId(article.getCatagoryId()));
        return "admin/editArticle";
    }
    @RequestMapping("/edit")
    public String edit(HttpServletRequest request, HttpServletResponse response){

        int id = Integer.parseInt(request.getParameter("id"));

        Article article = articleService.selectById(id);
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
        article.setDescrible(describle);
        article.setContent(content);


        articleService.updateArticle(article);
        return "redirect:list";
    }


}
