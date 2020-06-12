package com.fwq.blog.controller;

import com.fwq.blog.entity.Article;
import com.fwq.blog.entity.Category;
import com.fwq.blog.service.ArticleService;
import com.fwq.blog.service.imp.ArticleServiceImpl;
import com.fwq.blog.service.imp.CategoryServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class ArticleController {

    @Autowired
    public ArticleServiceImpl articleService;

    @Autowired
    public CategoryServiceImpl categoryService;

    @RequestMapping("/addarticle")

    public String addarticle(Model model){

//        //获取所有分类信息 返回给前端
        List<Category> categories = categoryService.selectAll();
        System.out.println(categories);

        model.addAttribute("categories",categories);

        return "addarticle";
    }

    @RequestMapping("articlegl/add")
    public String add(HttpServletRequest request) throws ParseException {

        String title = request.getParameter("title");
        String category = request.getParameter("category");
        String article_abstract = request.getParameter("article_abstract");
        String content = request.getParameter("content");
        String time = request.getParameter("time");
        String imagepath = request.getParameter("imagepath");


        System.out.println(title);
        System.out.println(category);
        System.out.println(article_abstract);
        System.out.println(content);
        System.out.println(time);
        System.out.println(imagepath);


        Category category1 = new Category();
        category1.setCategoryid(Integer.parseInt(category));

        Article article = new Article();
        article.setTitle(title);
        article.setArticleAbstract(article_abstract);
        article.setCategory(category1);

        article.setContent(content);

        //SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        article.setTime(time);
        article.setImage(imagepath);
        System.out.println(article.toString());

        Boolean addarticleflag = articleService.addarticle(article);
        if(addarticleflag){
            //添加成

        }
        else{
            //添加失败

        }



        return "addarticle";
    }


}
