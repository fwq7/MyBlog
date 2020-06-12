package com.fwq.blog.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.fwq.blog.entity.Comment;
import com.fwq.blog.entity.CommentBean;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author fwq
 * @since 2020-05-17
 */
@Mapper
public interface CommentMapper extends BaseMapper<Comment> {


    //根据article_id 查出留言
    public List<CommentBean> selectByarticleid(Integer articleid);


    public int addComment(Comment comment);

}
