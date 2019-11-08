package com.example.demo.controller;

import com.example.demo.bean.Article2;
import com.example.demo.dao.ArticleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/article")
public class ArticleController {
    @RequestMapping("queryAll")
    @ResponseBody
    public List<Article2> queryAll(){
        List<Article2> list = new ArrayList<Article2>();
        list = articleRepository.findAll();
        return list;
    }

    @RequestMapping("queryById")
    @ResponseBody
    public List<Article2> queryById()throws Exception{
        List<Article2> list = new ArrayList<Article2>();
        list = articleRepository.findById(1);
        return list;
    }

    @Autowired
    private ArticleRepository articleRepository;
}