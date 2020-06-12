package com.fwq.blog;

import com.fwq.blog.entity.User;
import com.fwq.blog.mapper.UserMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;
@RunWith(SpringRunner.class)
@SpringBootTest
public class UserMapperTest {
    @Autowired
    public UserMapper userMapper;


    @Test
    public void selectByUseridTest(){

        Integer a = 13026119;
        User user = userMapper.selectByUserid(a);

//        List<User> selectall = userMapper.selectall();
        System.out.println(user);

    }


    @Test
    public void selectbyuserid_psdTest(){
        User user = userMapper.selectByuser_psd(8848, "654321");
        System.out.println(user);

    }
}
