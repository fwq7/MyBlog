package com.fwq.blog;

import com.fwq.blog.entity.Article;
import com.fwq.blog.entity.Category;
import com.fwq.blog.mapper.ArticleMapper;
import com.fwq.blog.mapper.CategoryMapper;
import com.fwq.blog.service.imp.CategoryServiceImpl;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ArticleMapperTest {
    @Autowired
    public ArticleMapper articleMapper;

    @Autowired
    public CategoryMapper categoryMapper;

    @Test
    public void TestSelect(){

        System.out.println("select all");
        List<Article> articleList = articleMapper.selectList( null );
        System.out.println(articleList);


    }
    @Test
    public void TestCategotySelectAll(){
        System.out.println(categoryMapper.selectAll());
    }




    @Test
    public void Testaddarticle(){

        Article article = new Article();

        Category category1 = new Category();

        category1.setCategoryid(Integer.parseInt("1"));

        article.setTitle("送哦怕人家");
        article.setArticleAbstract("发生过方式扣扣刚开始是");
        article.setCategory(category1);

        article.setContent("<h3 id=\"h3-settings\"><a name=\"Settings\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Settings</h3><p>发生过方式扣扣刚开始是</p>\n" +
                "<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code class=\"lang-javascript\"><span class=\"kwd\">var</span><span class=\"pln\"> testEditor </span><span class=\"pun\">=</span><span class=\"pln\"> editormd</span><span class=\"pun\">(</span><span class=\"str\">\"test-editormd\"</span><span class=\"pun\">,</span><span class=\"pln\"> </span><span class=\"pun\">{</span></code></li><li class=\"L1\"><code class=\"lang-javascript\"><span class=\"pln\">    autoHeight </span><span class=\"pun\">:</span><span class=\"pln\"> </span><span class=\"kwd\">true</span></code></li><li class=\"L2\"><code class=\"lang-javascript\"><span class=\"pun\">});</span></code></li></ol></pre>");

        //SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        article.setTime("2020-5-26 1:14:23");
        article.setImage("/img/796f1265-817c-4bbb-ab2a-14955d827f55.jp");
        System.out.println(article.toString());

        //System.out.println(article.getId());

        int flag = articleMapper.addarticle(article);
        if(flag>0){
            System.out.println("success");
        }
        else
        {
            System.out.println("fail");
        }


    }

}
