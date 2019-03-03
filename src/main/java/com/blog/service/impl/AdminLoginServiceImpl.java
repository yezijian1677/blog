package com.blog.service.impl;

import com.blog.dao.UserLoginInfoMapper;
import com.blog.entity.UserLoginInfo;
import com.blog.service.AdminLoginService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("adminLoginServiceImpl")
public class AdminLoginServiceImpl implements AdminLoginService {

    @Resource(name = "userLoginInfoMapper")
    private UserLoginInfoMapper userLoginInfoMapper;

    @Override
    public List<UserLoginInfo> selectRencent(Integer userId) {
        return userLoginInfoMapper.selectRencent(userId);
    }

    @Override
    public int insert(UserLoginInfo userLoginInfo) {
        return userLoginInfoMapper.insert(userLoginInfo);
    }

    @Override
    public int selectCountByUserId(int userId) {
        return userLoginInfoMapper.selectCountByUserId(userId);
    }
}
