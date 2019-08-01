package com.carto.controller;


import com.carto.service.StudentService;
import com.carto.vo.Student;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

    @Resource
    StudentService studentService;


    // 有哪个角色就表示那个角色有访问的权限
    @Secured(value = {"ROLE_ADMIN"})
    @RequestMapping("all_members")
    public ModelAndView all_members(){
        List<Student> all = studentService.getAll();
        ModelAndView modelAndView = new ModelAndView("registration");
        modelAndView.addObject("all", all);
        return modelAndView;
    }

}
