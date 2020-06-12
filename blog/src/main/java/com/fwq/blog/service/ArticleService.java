package com.fwq.blog.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.fwq.blog.entity.Article;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author fwq
 * @since 2020-05-17
 */

public interface ArticleService extends IService<Article> {
    // 查询全部文章
    public List<Article> selectAll();

    //查询封装的文章
    //public List selectFz();


    //根据查询类别查询
    public List<Article> selectBycategory(Integer category);



    //分页查询

    public List<Article> selectBypage(List list,Integer p);



    //根据id 查找
    public Article selectById(Integer articleid,Integer categoryid);



    //添加文章
    public Boolean addarticle(Article article);
}
