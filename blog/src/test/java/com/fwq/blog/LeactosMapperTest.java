package com.fwq.blog;

import com.fwq.blog.mapper.LeacotsMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;


@RunWith(SpringRunner.class)
@SpringBootTest

public class LeactosMapperTest {
    @Autowired
    public LeacotsMapper leacotsMapper;


    @Test
    public void selectAllTest(){

        System.out.println(leacotsMapper.selectAll());

    }
}
