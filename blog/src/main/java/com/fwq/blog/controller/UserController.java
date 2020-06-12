package com.fwq.blog.controller;

import com.fwq.blog.entity.User;
import com.fwq.blog.service.imp.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class UserController {

    @Autowired
    public UserServiceImpl userService;


    @RequestMapping("/login")
    public String login(){
        return "login";
    }



    @RequestMapping(value = "/signup")
    public String signup(HttpServletRequest request){



//        String userid = request.getParameter("userid");
//
//        String name = request.getParameter("name");
//        String psd = request.getParameter("pass");
//        String headImage = request.getParameter("headimage");
//        if("隐藏域".equals(headImage)){
//            headImage="/img/morenhead.jpg";
//        }
//
//        if(!(userid==null||name==null||psd==null)){
//            //开始注册
//            System.out.println("dd");
//        }
//
//        System.out.println(userid+name+psd+headImage);

        return "signup";
    }

    @RequestMapping("/signup/userid")
    @ResponseBody
    public ModelAndView signup_userid(HttpServletRequest request){
        String userid = request.getParameter("userid");
        User user = userService.selectByUserid(Integer.parseInt(userid));
//        System.out.println(user);
        
        Boolean status;
        if(user==null){
            //可以注册
            System.out.println("可以注册");
           status = true;
        }
        else{
            status = false;

        }

        Map<String,List> map =new  HashMap(){
            {
                put("status",status);

            }
        };

        return new ModelAndView(new MappingJackson2JsonView(), map);
    }

    @RequestMapping(value = "/user/signup")
    public String UserSignup(HttpServletRequest request){


        //获取前端输入数据

        String userid = request.getParameter("userid");
        String name = request.getParameter("name");
        String psd = request.getParameter("pass");
        String headImage = request.getParameter("headimage");
        if("隐藏域".equals(headImage)){
            headImage="/img/morenhead.jpg";
        }

        //生成Userbean

        User user = new User();
        user.setUserid(Integer.parseInt(userid));
        user.setName(name);
        user.setPsd(psd);
        user.setHeadImage(headImage);
        user.setUserType(2);

//        System.out.println(user);

        //插入数据库 注册
        Boolean flag = userService.userSignup(user);
        if(flag){
            //注册成功  存session 跳转
            System.out.println("ok");

            return "redirect:/login";


        }else{
            //注册失败
            System.out.println("no");
            return "signup";
        }



    }

    @RequestMapping("/user/login")
    public String UserLogin(HttpServletRequest request,HttpSession session,Model model){

        String userid = request.getParameter("userid");
        String psd = request.getParameter("psd");

        User user = userService.selectByuser_psd(Integer.parseInt(userid), psd);
        if(user!=null){
            //登陆成功 存session 跳转
            session.setAttribute("user",user);
            return "redirect:/";

        }
        else{
            //
            System.out.println("登陆失败！检查账号密码");
            model.addAttribute("message","登陆失败！检查账号密码");
            return "login";
        }
    }






}
