package com.fwq.blog.controller;

import com.fwq.blog.entity.Article;
import com.fwq.blog.entity.Comment;
import com.fwq.blog.entity.CommentBean;
import com.fwq.blog.entity.User;
import com.fwq.blog.service.CommentService;
import com.fwq.blog.service.imp.ArticleServiceImpl;
import com.fwq.blog.service.imp.CommentServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.beans.IntrospectionException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class detailsController {
    @Autowired
    public ArticleServiceImpl articleService;

    @Autowired
    public CommentServiceImpl commentService;

    @RequestMapping("/details")
    public String details(HttpServletRequest request, Model modle){
        //获取文章id
        Integer articleid = Integer.parseInt(request.getParameter("articleid"));
        Integer categoryid = Integer.parseInt(request.getParameter("category"));
        //根据id 查询出文章信息
        Article article = articleService.selectById(articleid,categoryid);

        //返回评论信息
        List<CommentBean> comments = commentService.selectByarticleid(articleid);//全部数据
        List<CommentBean> comments1 = commentService.selectBypage(comments, 1);//第一页数据


//        System.out.println(comments1);
//        System.out.println(comments.size());
        modle.addAttribute("count",comments.size());
        modle.addAttribute("comments",comments1);
        modle.addAttribute("article",article);



        return "details";
    }

    @RequestMapping(value = "/details/commitleacots",method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView commitLeacots(HttpServletRequest request,HttpSession session){
        //提交留言功能
        //获取前端提交数据

        Integer article_id = Integer.parseInt(request.getParameter("article_id"));
        Integer user_id = Integer.parseInt(request.getParameter("user_id"));
        String content = request.getParameter("content");
        Integer operation = Integer.parseInt(request.getParameter("operation"));
        String commentTimetime = request.getParameter("commentTimetime");

        //生成实体类
        Comment comment = new Comment();

        comment.setArticleId(article_id);
        comment.setUserId(user_id);
        comment.setOperation(operation);
        comment.setContent(content);
        comment.setCommentTime(commentTimetime);
//        System.out.println(comment);

        //插入数据库
        if(commentService.addComment(comment)){

//            System.out.println("yes");
            Object user = session.getAttribute("user");

            Map<String,List> map =new  HashMap(){
                {
                    put("comment",comment);
                    put("user",user);

                }
            };
//            System.out.println(comment);
//            System.out.println(user);
            return new ModelAndView(new MappingJackson2JsonView(), map);


        }else{

            System.out.println("no");
        }



        return null;

    }



    @RequestMapping("/leacotspage")
    @ResponseBody
    public ModelAndView  leacotsBypage(HttpServletRequest request){

        String article_id = request.getParameter("article_id");
        String page = request.getParameter("page");
        System.out.println(article_id);
        System.out.println(page);
        List<CommentBean> comments = commentService.selectBypage(commentService.selectByarticleid(Integer.parseInt(article_id)), Integer.parseInt(page));
        System.out.println(comments);

        Map<String,List> map =new  HashMap(){
            {
                put("comments",comments);

            }
        };
//        JSONObject jsonObject = JSONObject.fromObject(good);
//        //将查到的对象转化为json对象，传递给前台ajax  sunccess中的data数据。

        return  new ModelAndView(new MappingJackson2JsonView(), map);


    }



}
