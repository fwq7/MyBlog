package com.fwq.blog.controller;


import com.fwq.blog.entity.Article;
import com.fwq.blog.entity.Category;
import com.fwq.blog.entity.Picture;
import com.fwq.blog.entity.leacots;
import com.fwq.blog.service.imp.PictureServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class albumController {

    @Autowired
    public PictureServiceImpl pictureService;

    @RequestMapping("/album")
    //@ResponseBody
    //@GetMapping({"/","","index"})
    public String album(Model model){

        List<Picture> pictures = pictureService.selectAll();
        System.out.println(pictures);

        List<Picture> pictures1 = pictureService.selectBypage(pictures, 1);
        model.addAttribute("count",pictures.size());
        model.addAttribute("pictures",pictures1);


        return "album";
    }


    @RequestMapping("/album/addpicture")
    public String addpicture(){

        return "addpicture";
    }


    @RequestMapping("/album/add")
    public String add(HttpServletRequest request){
        String title = request.getParameter("title");
        String address = request.getParameter("address");
        String time = request.getParameter("time");
        String imagepath = request.getParameter("imagepath");


        Picture picture = new Picture();

        picture.setTitle(title);
        picture.setAddress(address);
        picture.setCreatetime(time);
        picture.setImage(imagepath);

//        System.out.println(picture);

        Boolean addarticleflag = pictureService.addPicture(picture);
        if(addarticleflag){
            //添加成

        }
        else{
            //添加失败

        }
        return "addpicture";
    }

    @RequestMapping("/picturepage")
    @ResponseBody
    public ModelAndView leacotsBypage(HttpServletRequest request){

        String page = request.getParameter("page");
        List<Picture> pictures = pictureService.selectBypage(pictureService.selectAll(), Integer.parseInt(page));
//        System.out.println(pictures);

        Map<String,List> map =new  HashMap(){
            {
                put("pictures",pictures);

            }
        };
        return  new ModelAndView(new MappingJackson2JsonView(), map);
    }





}
