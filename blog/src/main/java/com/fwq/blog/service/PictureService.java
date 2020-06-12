package com.fwq.blog.service;

import com.fwq.blog.entity.Picture;

import java.util.List;

public interface PictureService {

    public List<Picture> selectAll();

    public Boolean addPicture(Picture picture);

    public  List<Picture> selectBypage(List list, Integer p);
}
