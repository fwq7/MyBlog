package com.fwq.blog.controller;

import com.fwq.blog.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class getsessionController {

    @RequestMapping("/getsession")
    @ResponseBody
    public ModelAndView getSession(HttpSession session){

        User user =(User)session.getAttribute("user");

        Map<String,List> map =new  HashMap(){
            {
                put("user",user);

            }
        };
        return new ModelAndView(new MappingJackson2JsonView(), map);

    }
}
