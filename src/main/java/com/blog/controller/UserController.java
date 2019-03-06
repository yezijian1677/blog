package com.blog.controller;

import com.blog.dto.ArticleDTO;
import com.blog.entity.Article;
import com.blog.entity.UserLoginInfo;
import com.blog.service.AdminLoginService;
import com.blog.service.AdminService;
import com.blog.service.ArticleService;
import com.blog.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller("userController")
@RequestMapping
public class UserController {

    @Autowired
    private AdminService adminService;

    @Autowired
    private AdminLoginService adminLoginService;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private ArticleService articleService;

    @RequestMapping("/to_login")
    public String toLogin(){
        return "login";
    }

    @RequestMapping("/login")
    public String login(HttpSession session, @RequestParam String userId, @RequestParam String password, HttpServletRequest request){
        int userId1 = Integer.parseInt(userId);
        if (adminService.getById(userId1).getPassword().equals(password)) {
            session.setAttribute("user", adminService.getById(userId1));
//            System.out.println("登录成功");
            String ip=request.getRemoteAddr();
            UserLoginInfo userLoginInfo = new UserLoginInfo();
            userLoginInfo.setDate(new Date());
            userLoginInfo.setIp(ip);
            userLoginInfo.setUserId(userId1);
            int log = adminLoginService.insert(userLoginInfo);

            return "redirect:list";
        }
        return "redirect:to_login";
    }

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


    @RequestMapping("/quit")
    public String quit(HttpSession session){
        session.setAttribute("user", null);
        return "redirect:to_login";
    }

    @RequestMapping("/about")
    public String list(){
        return "about";
    }
}
