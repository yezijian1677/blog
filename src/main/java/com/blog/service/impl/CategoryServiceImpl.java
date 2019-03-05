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

    @Override
    public Category selectByCategoryId(Integer id) {
        return categoryMapper.selectByPrimaryKey(id);
    }

    @Override
    public boolean add(Category category) {
        return categoryMapper.insert(category)>0;
    }

    @Override
    public int deleteById(Integer id) {
        return categoryMapper.deleteByPrimaryKey(id);
    }

    @Override
    public boolean updateCategory(Category category) {
        return categoryMapper.updateByPrimaryKeySelective(category)>0;
    }
}
