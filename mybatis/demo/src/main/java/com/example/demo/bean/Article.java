package com.example.demo.bean;

import lombok.Data;

import java.util.Date;

@Data
public class Article {
    private Integer id;
    private String title;
    private String summary;
    private Date createTime;
    private Date publicTime;
    private Date updateTime;
    private Integer userId;
    private Integer type;
    private Integer status;
}