package com.fwq.blog.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.fwq.blog.entity.Article;
import com.fwq.blog.entity.Picture;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface PictureMapper extends BaseMapper<Article> {

    public List<Picture> selectAll();

    public int addPicture(Picture picture);


}
