package com.blog.controller.admin;


import com.blog.entity.Category;
import com.blog.service.CategoryService;
import com.blog.util.JsonUtil;
import com.blog.util.RedisPoolUtil;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller("categoryAdminController")
@RequestMapping("/admin/category")
public class CategoryAdminController {

    @Autowired
    private CategoryService categoryService;

    @RequestMapping("/to_add")
    public String toAdd(Map<String,Object> map){
        map.put("category", new Category());
        return "admin/addCategory";
    }
    @RequestMapping("/add")
    public String add(Category category){
        categoryService.add(category);
        return "redirect:list";
    }

    @RequestMapping("/list")
    public String list(Map<String, Object> map){
        List<Category> list;
        String categories = RedisPoolUtil.get("adminCategory");
        if (categories == null){
            list = categoryService.queryAll();
            RedisPoolUtil.setEx("adminCategory", JsonUtil.obj2String(list), 100);
        }else {
            list = JsonUtil.string2Obj(categories, List.class, Category.class);
        }

        map.put("list", list);

        return "admin/categoryList";
    }

    @RequestMapping(value = "/delete",params = "id")
    public String remove(String id){
        int id1 = Integer.parseInt(id);
        categoryService.deleteById(id1);
        return "redirect:list";
    }

    @RequestMapping(value = "/to_edit",params = "id")
    public String toEdit(Map<String,Object> map, String id){
        map.put("category", categoryService.selectByCategoryId(Integer.parseInt(id)));
        return "admin/editCategory";
    }
    @RequestMapping("/edit")
    public String edit(Category category){
        categoryService.updateCategory(category);
        return "redirect:list";
    }
}
