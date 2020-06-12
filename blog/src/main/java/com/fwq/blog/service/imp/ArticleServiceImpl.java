package com.fwq.blog.service.imp;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.fwq.blog.entity.Article;
import com.fwq.blog.mapper.ArticleMapper;
import com.fwq.blog.service.ArticleService;
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
public class ArticleServiceImpl extends ServiceImpl<ArticleMapper, Article> implements ArticleService {

    @Autowired
    public ArticleMapper articleMapper;

    @Override
    public List selectAll() {

        //System.out.println("select all");
        List<Article> articleList = articleMapper.selectAll();
        return articleList;
    }

    @Override
    public List<Article> selectBycategory(Integer category) {
        return articleMapper.selectBycategory(category);
    }


    //逻辑分页
    @Override
    public List<Article> selectBypage(List list,Integer p) {

        List aritcles = new ArrayList();
        if(list.size()<5){
            return list;
        }
        else{
            for ( int j=(p-1)*5,i= (p-1)*5;i<list.size()&&i<j+5;i++)
            {

                aritcles.add(list.get(i));
            }

        }

        return aritcles;
    }

    //根据id查找

    @Override
    public Article selectById(Integer articleid,Integer categoryid) {


        return articleMapper.selectById(articleid,categoryid);
    }


    //添加文章
    @Override
    public Boolean addarticle(Article article) {

        return articleMapper.addarticle(article)>0?true:false;
    }

}
