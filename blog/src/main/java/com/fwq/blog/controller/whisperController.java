package com.fwq.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class whisperController {

    @RequestMapping("/whisper")
    public String whisper(){
        return "whisper";
    }
}
