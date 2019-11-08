package com.example.demo.bean;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.Date;

@Data
@Entity(name = "tb_article")
public class Article2 {
    @Id
    @GeneratedValue
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