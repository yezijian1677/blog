package com.blog.controller;

import com.blog.entity.UserLoginInfo;
import com.blog.service.AdminLoginService;
import com.blog.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;

@Controller("userController")
@RequestMapping
public class UserController {

    @Autowired
    private AdminService adminService;

    @Autowired
    private AdminLoginService adminLoginService;

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

            return "redirect:article/list";
        }
        return "redirect:to_login";
    }

    @RequestMapping("/quit")
    public String quit(HttpSession session){
        session.setAttribute("user", null);
        return "redirect:to_login";
    }
}
