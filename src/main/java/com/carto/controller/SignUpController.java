package com.carto.controller;

import com.carto.service.StudentService;
import com.carto.vo.Student;
import org.springframework.context.MessageSource;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Locale;

/**
 * 报名控制层
 */
@Controller
@RequestMapping("/signUp/*")
public class SignUpController {

    @Resource
    private StudentService studentService;

    @Resource
    private MessageSource messageSource;

    public String getSourceMessage(String key) {
        return messageSource.getMessage(key, null, Locale.getDefault());
    }

    /**
     * ajax界面跳转
     * @param student
     * @param response
     * @return
     * @throws IOException
     */
    @RequestMapping("ajax_signUp")
    public ModelAndView ajax_signUp(Student student, HttpServletResponse response) throws IOException{
        studentService.saveStudent(student);
        response.getWriter().print("success");
        return null;
    }

}
