package com.fwq.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class aboutController {
    @RequestMapping("/about")
    public String about(){
        return "about";
    }
}
