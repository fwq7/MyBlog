package com.fwq.blog.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.fwq.blog.entity.Article;
import com.fwq.blog.entity.Comment;
import com.fwq.blog.entity.CommentBean;
import com.fwq.blog.mapper.CommentMapper;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author fwq
 * @since 2020-05-17
 */
public interface CommentService extends IService<Comment> {

    //根据article_id 查出留言
    public List<CommentBean> selectByarticleid(Integer articleid);



    //插入评论数据
    public Boolean addComment(Comment comment);



    public  List<CommentBean> selectBypage(List list, Integer p);
}
