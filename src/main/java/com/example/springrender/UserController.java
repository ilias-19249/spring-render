package com.example.springrender;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController{

    @GetMapping("/hello")
    public String hello(){
        return "Hellooo user";
    }

    @GetMapping("/user")
    public String bonjour(){
        return "Hellooo user";
    }

}


