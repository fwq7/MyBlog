package com.fwq.blog.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.fwq.blog.entity.Article;
import com.fwq.blog.entity.leacots;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface LeacotsMapper extends BaseMapper<Article> {

    public List<leacots> selectAll();

    public int addLeacot(leacots ls);
}
