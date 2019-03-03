package com.blog.service.impl;

import com.blog.dao.CategoryMapper;
import com.blog.entity.Category;
import com.blog.service.CategoryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("categoryServiceImpl")
public class CategoryServiceImpl implements CategoryService {

    @Resource(name = "categoryMapper")
    private CategoryMapper categoryMapper;


    @Override
    public List<Category> queryAll() {
        return categoryMapper.queryAllCategory();
    }
}
