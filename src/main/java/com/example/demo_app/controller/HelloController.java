package com.example.demo_app.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
    @GetMapping("/hello")
    public String hello() {
        return "Hello - from spring appln. ";
    }

    @GetMapping("/bye")
    public String bye(){
        return "bye -- from spring appln";
    }
    @GetMapping("/")
    public String temp(){
        return "this is the home page";
    }
}
