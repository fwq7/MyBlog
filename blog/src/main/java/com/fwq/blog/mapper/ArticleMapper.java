package com.fwq.blog.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.fwq.blog.entity.Article;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

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
public interface ArticleMapper extends BaseMapper<Article> {

    //查询全部
    public List<Article> selectAll();


    //查询文章页 文章信息封装（id,title,category,article_abstract,image）

    //public List<Map<String, Object>> selectFz();

    //根据分类查询
    public List<Article> selectBycategory(Integer category);


    public Article selectById(@Param("articleid")Integer articleid,@Param("categoryid")Integer categoryid);

    public int addarticle(Article article);





}
