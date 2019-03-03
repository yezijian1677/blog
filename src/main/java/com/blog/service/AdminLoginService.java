package com.blog.service;

import com.blog.entity.UserLoginInfo;

import java.util.List;

public interface AdminLoginService {

    List<UserLoginInfo> selectRencent(Integer userId);

    int insert(UserLoginInfo userLoginInfo);

    int selectCountByUserId(int userId);
}
