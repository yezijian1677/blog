package com.blog.service;

import com.blog.entity.Article;
import com.blog.entity.Category;

import java.util.List;

public interface CategoryService {
    List<Category> queryAll();
    Category selectByCategoryId(Integer id);
    boolean add(Category category);
    int deleteById(Integer id);
    boolean updateCategory(Category category);
}
