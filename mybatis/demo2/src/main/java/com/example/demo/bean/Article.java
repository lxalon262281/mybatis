package com.example.demo.bean;


import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.Date;

@Entity(name = "tb_article")
@Data
public class Article {
    @Id
    @GeneratedValue
    private Long id;
    private String title;
    private String summary;
    private Date createTime;
    private Date publicTime;
    private Date updateTime;
    private Long userId;
    private Integer status;
}