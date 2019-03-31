package com.blog.controller.admin;

import com.blog.dto.ArticleDTO;
import com.blog.entity.Article;
import com.blog.entity.Category;
import com.blog.service.ArticleService;
import com.blog.service.CategoryService;
import com.blog.util.JsonUtil;
import com.blog.util.RedisPoolUtil;
import com.blog.util.RedisShardedPoolUtil;
import com.fasterxml.jackson.databind.JavaType;
import com.sun.org.apache.xerces.internal.xs.StringList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.*;

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
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(HttpServletRequest request, HttpServletResponse response, @RequestParam(value = "pic", required = false) MultipartFile file){

        Article article = new Article();
        String title = request.getParameter("title");
        String keywords = request.getParameter("keywords");
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        String content = request.getParameter("content");
//        System.out.println("edmdHtml.leng="+content.length());

        String contentHTML = request.getParameter("editorhtml");
//        System.out.println("edmdHtml.leng="+contentHTML.length());

        try {
            request.setCharacterEncoding( "utf-8" );
            //获得web项目的全路径
            String rootPath = request.getSession().getServletContext().getRealPath("/static/upload/");
            //Calendar.getInstance()是获取一个Calendar对象并可以进行时间的计算，时区的指定
            Calendar date = Calendar.getInstance();
            //获得日期路径,MONTH个值的初始值是0，因此我们要用它来表示正确的月份时就需要加1。
            File dateFile = new File(date.get(Calendar.YEAR)+"/"+(date.get(Calendar.MONTH)+1)+"/"+(date.get(Calendar.DATE)));
            //获得文件最初的路径
            String originalFile = file.getOriginalFilename();
            //得到完整路径名
            File newFile = new File(rootPath+File.separator+dateFile+File.separator+originalFile);

            /*文件不存在就创建*/
            if(!newFile.getParentFile().exists()){
                newFile.getParentFile().mkdirs();
            }
            file.transferTo(newFile);
            //System.out.println("/resources/upload/"+dateFile+File.separator+originalFile);
            System.out.println(dateFile+"/"+file.getOriginalFilename());
            String url = "/static/upload/"+date.get(Calendar.YEAR)+"/"+(date.get(Calendar.MONTH)+1)+"/"+date.get(Calendar.DATE)+"/"+file.getOriginalFilename();
            /*JSON格式*/
            article.setPic(url);
        } catch (Exception e) {

        }


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
        return "redirect:list";
    }

    /**
     * 遍历所有的article 把数据组合到articleDTO
     * @param map
     * @return
     */
    @RequestMapping("/list")
    public String list(Map<String, Object> map){

        List<Article> list;
        String redisList = RedisPoolUtil.get("adminArticleList");

        if (redisList == null){
            list = articleService.queryAll();
            RedisPoolUtil.setEx("adminArticleList", JsonUtil.obj2String(list), 100);
        }else {
            list = JsonUtil.string2Obj(redisList, List.class, Article.class);
        }

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
