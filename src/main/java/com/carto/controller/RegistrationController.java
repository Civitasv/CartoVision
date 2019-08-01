package com.carto.controller;

import com.carto.service.StudentService;
import com.carto.vo.Student;
import jdk.nashorn.internal.parser.JSONParser;
import org.json.JSONObject;
import org.json.JSONString;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 信息展示控制层
 */
@Controller
@RequestMapping("/info/*")
public class RegistrationController {
    @Resource
    private StudentService studentService;
    /**
     * ajax界面跳转
     * @return
     * @throws IOException
     */
    @RequestMapping("/form")
    @ResponseBody
    public String ajax_signUp(){
        List<Student> list = studentService.getAll();
        JSONObject jsonObject = new JSONObject();
        for(Student student:list){
            jsonObject.put("data",list);
        }
        return jsonObject.toString();
    }
}
