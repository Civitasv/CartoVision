package com.carto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/Cartovision/*")
public class WebController {

    @RequestMapping("/index")
    public ModelAndView enterIndex(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/index.jsp");
        return modelAndView;
    }

    @RequestMapping("/home")
    public ModelAndView enterHome(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/home.jsp");
        return modelAndView;
    }
}
