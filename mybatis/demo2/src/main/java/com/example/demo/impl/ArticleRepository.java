package com.example.demo.impl;

import com.example.demo.bean.Article;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ArticleRepository extends JpaRepository<Article, Long> {

    List<Article> findByUserId(Long userId);

    @Query("select art from com.example.demo.bean.Article art where title=:title")
    List<Article> queryByTitle(@Param("title") String title);
}
