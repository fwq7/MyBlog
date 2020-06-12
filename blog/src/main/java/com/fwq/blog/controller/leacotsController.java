package com.fwq.blog.controller;

import com.fwq.blog.entity.Comment;
import com.fwq.blog.entity.CommentBean;
import com.fwq.blog.entity.leacots;
import com.fwq.blog.service.imp.leactosServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class leacotsController {
    @Autowired
    public leactosServiceImpl leactosService;

    @RequestMapping("/leacots")
    public String leacots(Model model){

        List<leacots> leacotlist = leactosService.selectAll();
//        System.out.println(leacotlist.size());

        List<leacots> leacots = leactosService.selectBypage(leacotlist, 1);
//        System.out.println(leacots);

        model.addAttribute("leacots",leacots);
        model.addAttribute("count",leacotlist.size());
        return "leacots";
    }

    @RequestMapping("/leacotpage")
    @ResponseBody
    public ModelAndView leacotsBypage(HttpServletRequest request){
        String page = request.getParameter("page");
        List<leacots> leacots = leactosService.selectBypage(leactosService.selectAll(), Integer.parseInt(page));
//        System.out.println(leacots);
        Map<String,List> map =new  HashMap(){
            {
                put("leacots",leacots);

            }
        };
        return  new ModelAndView(new MappingJackson2JsonView(), map);
    }


    @RequestMapping(value = "/leacots/commitleacots",method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView commitLeacots(HttpServletRequest request, HttpSession session){

        //提交留言功能
        //获取前端提交数据


        Integer user_id = Integer.parseInt(request.getParameter("user_id"));
        String content = request.getParameter("content");
        Integer operation = Integer.parseInt(request.getParameter("operation"));
        String commentTimetime = request.getParameter("commentTimetime");

        //生成实体类
        //Comment comment = new Comment();
        leacots ls = new leacots();


        ls.setUserId(user_id);
        ls.setOperation(operation);
        ls.setContent(content);
        ls.setCommentTime(commentTimetime);
//        System.out.println(ls);

        //插入数据库
        if(leactosService.addLeacot(ls)){

            System.out.println("yes");
            Object user = session.getAttribute("user");

            Map<String,List> map =new  HashMap(){
                {
                    put("leacot",ls);
                    put("user",user);

                }
            };
//            System.out.println(ls);
//            System.out.println(user);
            return new ModelAndView(new MappingJackson2JsonView(), map);

        }else{

            System.out.println("no");
        }
        return null;

    }




}
