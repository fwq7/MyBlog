package com.fwq.blog.controller;

import com.fwq.blog.entity.Article;
import com.fwq.blog.service.imp.ArticleServiceImpl;
import com.fwq.blog.service.imp.CategoryServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
public class IndexController {
    @Autowired
    public ArticleServiceImpl articleService;

    @Autowired
    public CategoryServiceImpl categoryService;


    @RequestMapping({"/","","index"})
    public String index(Model modle, HttpServletRequest request ){

        List<Article> articles = articleService.selectBycategory(1);

        int size = articles.size();

//        System.out.println(size);

        //获取分类集合 转递给前端页面
        modle.addAttribute("categorylist",categoryService.selectAll());
        modle.addAttribute("articleSize",size);


        //第一页文章数据返回
        List<Article> articles1 = articleService.selectBypage(articles, 1);
//        System.out.println(articles1);

        modle.addAttribute("articleLise",articles1);

        modle.addAttribute("category_id",1);

        return "index";
    }

    @RequestMapping("/category")
    //@ResponseBody
    public String category(HttpServletRequest request,Model modle){


        //List<Article> select = articleService.selectAll();
        Integer category = Integer.parseInt(request.getParameter("category"));
        List<Article> articles = articleService.selectBycategory(category);
        int size = articles.size();
//        System.out.println("数据条数："+size);


        modle.addAttribute("articleSize",size);


        //获取分类集合 转递给前端页面
        modle.addAttribute("categorylist",categoryService.selectAll());


//        System.out.println("数据类别："+category);




//        System.out.println(articles);
        modle.addAttribute("category_id",category);

        modle.addAttribute("articleLise",articleService.selectBypage(articleService.selectBycategory(category),1));





        return "index";
    }



    @RequestMapping("/page")
    @ResponseBody
    public ModelAndView  categoryBypage(HttpServletRequest request, Model modle){

        String category = request.getParameter("category");
        String page = request.getParameter("page");
//        System.out.println(category);
//        System.out.println(page);
        List<Article> articles = articleService.selectBypage(articleService.selectBycategory(Integer.parseInt(category)), Integer.parseInt(page));
//        System.out.println(articles);

        Map<String,List> map =new  HashMap(){
            {
                put("articles",articles);

            }
        };
//        JSONObject jsonObject = JSONObject.fromObject(good);
//        //将查到的对象转化为json对象，传递给前台ajax  sunccess中的data数据。

        return  new ModelAndView(new MappingJackson2JsonView(), map);

    }


}
