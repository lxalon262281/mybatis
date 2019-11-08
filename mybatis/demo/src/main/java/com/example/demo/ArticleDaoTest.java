package com.example.demo;

import com.example.demo.bean.Article;
import com.example.demo.dao.ArticleDao;
import javafx.application.Application;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes = DemoApplication.class)
public class ArticleDaoTest {

    @Autowired
    private ArticleDao articleDao;

    @Test
    public void testInsert() {
        Article article = new Article();
        article.setTitle("测试标题");
        article.setSummary("测试摘要");
        article.setUserId(1);
        article.setStatus(1);
        article.setType(1);
        article.setCreateTime(new Date());
        article.setUpdateTime(new Date());
        article.setPublicTime(new Date());
        articleDao.insertArticle(article);
    }
}