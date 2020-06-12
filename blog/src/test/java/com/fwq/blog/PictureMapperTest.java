package com.fwq.blog;

import com.fwq.blog.entity.Picture;
import com.fwq.blog.mapper.PictureMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class PictureMapperTest {
    @Autowired
    public PictureMapper pictureMapper;

    @Test
    public void addPictureTest(){
        Picture picture = new Picture();
        picture.setTitle("武汉长江大桥一日游");
        picture.setAddress("湖北武汉");
        picture.setCreatetime("2020-5-29 22:29:44");
        picture.setImage("/img/32443dd5-8e10-4ce4-871f-744080c839c0.jpg");

        int i = pictureMapper.addPicture(picture);

        System.out.println(i);

    }
}
