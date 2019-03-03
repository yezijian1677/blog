package com.blog.service.impl;

import com.blog.dao.UserMapper;
import com.blog.entity.User;
import com.blog.service.AdminService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("adminServiceImpl")
public class AdminServiceImpl implements AdminService {

    @Resource(name = "userMapper")
    private UserMapper userMapper;

    @Override
    public User getById(Integer id) {
        return userMapper.selectByPrimaryKey(id);
    }
}
