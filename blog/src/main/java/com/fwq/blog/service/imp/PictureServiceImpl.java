package com.fwq.blog.service.imp;

import com.fwq.blog.entity.Picture;
import com.fwq.blog.mapper.PictureMapper;
import com.fwq.blog.service.PictureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class PictureServiceImpl implements PictureService {
    @Autowired
    public PictureMapper pictureMapper;


    @Override
    public List<Picture> selectAll() {
        return pictureMapper.selectAll();
    }

    @Override
    public Boolean addPicture(Picture picture) {
        return pictureMapper.addPicture(picture)>0?true:false;
    }

    @Override
    public List<Picture> selectBypage(List list, Integer p) {
        List pictures = new ArrayList();
        if(list.size()<6){
            return list;
        }
        else{
            for ( int j=(p-1)*6,i= (p-1)*6;i<list.size()&&i<j+6;i++)
            {

                pictures.add(list.get(i));
            }

        }
        return pictures;
    }
}
