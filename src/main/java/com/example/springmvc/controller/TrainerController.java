package com.example.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TrainerController {


    @RequestMapping(value = "/trainers", method = RequestMethod.GET)
    public String viewTrainer(){
        return "trainer";
    }
}
