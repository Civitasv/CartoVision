package com.carto.interceptor;

import com.carto.util.MessageSourceUtil;
import com.carto.util.ValidatorUtil;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

public class MyInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        HandlerMethod handlerMethod = (HandlerMethod) o;
        //1.拼凑key
        String actionName = handlerMethod.getBeanType().getSimpleName();
        String methodName = handlerMethod.getMethod().getName();
        String key = actionName + "." + methodName + ".rules";
        if(!MessageSourceUtil.getValidateMethod(((HandlerMethod) o).getBean()).contains(key)){
            // 不需要进验证的方法
            return true;
        }
        //2.获取验证内容
        //这里采用反射的形式，对每一个Action调用其getSourceMessage的方法,是考虑到了每个Action注入的MessageSource对象不一致
        String validateContent = MessageSourceUtil.getSourceMessage(((HandlerMethod) o).getBean(), key);
        //3.开始验证
        ValidatorUtil validatorUtil = new ValidatorUtil();
        // 验证参数
        validatorUtil.validateParameter(httpServletRequest, validateContent);
        // 验证文件类型
        String fileValidateContent = MessageSourceUtil.getSourceMessage(((HandlerMethod) o).getBean(), "mimeType");
        Map<String, String> message = validatorUtil.validateFile(httpServletRequest, fileValidateContent);
        if(message.size() > 0){
            // 有错误信息,后面可以改成ajax的实现
            httpServletRequest.setAttribute("error", message);
            httpServletRequest.getRequestDispatcher("/error404.jsp")
                    .forward(httpServletRequest, httpServletResponse);
            return false;
        }
        return true; //这里设置为true，false就表示截停
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {
    }

}
