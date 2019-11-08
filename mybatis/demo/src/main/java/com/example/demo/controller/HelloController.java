package com.example.demo.controller;

import com.example.demo.bean.AuthorSettings;
import com.example.demo.bean.GirlProperties;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    /*@Autowired
    private AuthorSettings authorSettings;
    @Value("${book.name}")
    private String bookNmae;
    @Value("${book.author}")
    private String bookAuthor;

    @RequestMapping("/longxiao")
    public String index() {
        return "bookName is " + authorSettings.getName() + " bookAuthor is " + authorSettings.getAge();
    }*/

    @Autowired
    private GirlProperties girlProperties;

    @RequestMapping(value = {"/hello","/hi"},method = RequestMethod.GET)
    public String sayHi() {
        return "hi " + girlProperties.getName() + "----" + girlProperties.getAge();
    }

}