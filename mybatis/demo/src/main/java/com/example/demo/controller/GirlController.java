package com.example.demo.controller;

import com.example.demo.bean.Girl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class GirlController {

    /*@Autowired
    private GirlRep girlRep;

    *//**
     * 查询所有女生列表
     * @return
     *//*
    @RequestMapping(value = "/girls",method = RequestMethod.GET)
    public List<Girl> getGirlList(){
        return girlRep.findAll();
    }

    *//**
     * 添加一个女生
     * @param age
     * @return
     *//*
    @RequestMapping(value = "/girls",method = RequestMethod.POST)
    public Girl addGirl(@RequestParam("age") Integer age){
        Girl girl = new Girl();
        girl.setAge(age);
        return girlRep.save(girl);
    }*/

}
