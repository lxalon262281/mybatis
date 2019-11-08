package com.example.demo.dao;

import com.example.demo.bean.Article2;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ArticleRepository extends JpaRepository<Article2, Long> {
    public List<Article2> findById(Integer id) throws Exception;
}
