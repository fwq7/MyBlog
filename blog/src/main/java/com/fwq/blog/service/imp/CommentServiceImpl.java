package com.fwq.blog.service.imp;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.fwq.blog.entity.Comment;
import com.fwq.blog.entity.CommentBean;
import com.fwq.blog.mapper.CommentMapper;
import com.fwq.blog.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author fwq
 * @since 2020-05-17
 */
@Service
public class CommentServiceImpl extends ServiceImpl<CommentMapper, Comment> implements CommentService {

    @Autowired
    public CommentMapper commentmapper;

    //根据article_id 查出留言
    @Override
    public List<CommentBean> selectByarticleid(Integer articleid) {

        return commentmapper.selectByarticleid(articleid);
    }

    //插入留言
    @Override
    public Boolean addComment(Comment comment) {
        return commentmapper.addComment(comment)>0?true:false;
    }



    @Override
    public List<CommentBean> selectBypage(List list, Integer p) {
        List comments = new ArrayList();
        if(list.size()<5){
            return list;
        }
        else{
            for ( int j=(p-1)*5,i= (p-1)*5;i<list.size()&&i<j+5;i++)
            {

                comments.add(list.get(i));
            }

        }
        return comments;
    }
}
