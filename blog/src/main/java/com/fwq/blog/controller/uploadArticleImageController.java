package com.fwq.blog.controller;


import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Controller
public class uploadArticleImageController {

    @RequestMapping(value = "/upload/articleimage", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView uploadArticleImage(HttpServletRequest request) throws IOException {


//        System.out.println("image");

        //获取前端上传的图片
        MultipartRequest mrequest = (MultipartRequest) request;
        MultipartFile mfile = mrequest.getFile("file");

        //获取默认图片
        String imagepath = request.getParameter("imagepath");



        //文件上传的地址
        String path = ResourceUtils.getURL("classpath:static").getPath() + "/img";
        String realPath = path.replace('/', '\\').substring(1, path.length());

        System.out.println(realPath);

        UUID uuid  =  UUID.randomUUID();
        String s = UUID.randomUUID().toString();

        String filename = s+ ".jpg";


        //限制文件上传的类型
        String contentType = mfile.getContentType();
        if ("image/jpeg".equals(contentType) || "image/jpg".equals(contentType)) {
            File file = new File(realPath, filename);

            //完成文件的上传
            mfile.transferTo(file);
            System.out.println("图片上传成功!");
            String path01 = "/img/" + filename;

            System.out.println(path01);

            Map<String,String> map =new  HashMap(){
                {
                    put("imagepath",path01);

                }
            };
            return new ModelAndView(new MappingJackson2JsonView(), map);
        }
        else {

            Map<String,String> map =new  HashMap(){
                {
                    put("imagepath",imagepath);

                }
            };

            System.out.println("上传失败！");
            return new ModelAndView(new MappingJackson2JsonView(), map);
        }




    }
}
