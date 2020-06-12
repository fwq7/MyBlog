package com.fwq.blog.service;

import com.fwq.blog.entity.CommentBean;
import com.fwq.blog.entity.leacots;

import java.util.List;

public interface LeactosService {


    public List<leacots> selectAll();

    public  List<leacots> selectBypage(List list, Integer p);


    public Boolean addLeacot(leacots ls);
}
