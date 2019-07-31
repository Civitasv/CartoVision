package com.carto.util;

import com.sun.istack.internal.NotNull;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class ValidatorUtil {

    private Map<String, String> result = new HashMap<>();

    private String NULLABLE = "nullable";

    public Map<String,String> validateParameter(HttpServletRequest request,@NotNull String validateContent){
        String [] rules = validateContent.split("\\|");
        for (int i=0;i<rules.length;i++){
            String[] rule = rules[i].split(":");
            String paramName = rule[0];
            String parameter = request.getParameter(paramName);
            if(!StringUtils.isEmpty(parameter)){
                if(!parameter.matches(rule[1])){
                    result.put(paramName, rule[2]);
                }
            }else{
                // 如果不是可空的话
                if(!NULLABLE.equals(rule[1])){
                    result.put(paramName, rule[2]);
                }
            }
        }
        return result;
    }

    public Map<String, String> validateFile(HttpServletRequest request,@NotNull String validateContent){
        String[] rules = validateContent.split("\\|");
        // 获取文件类型
        MultipartResolver multipartResolver = new CommonsMultipartResolver();
        if(!multipartResolver.isMultipart(request) || rules.length==0){
            // 是否为封装表单,或者是不存在验证规则
            return result;
        }
        // 开始文件类型检测
        MultipartRequest multipartRequest = (MultipartRequest)request;
        Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();
        Iterator<Map.Entry<String, MultipartFile>> iterator = fileMap.entrySet().iterator();
        while(iterator.hasNext()){
            Map.Entry<String, MultipartFile> me = iterator.next();
            if(me.getValue().getSize() > 0){
                // 有文件上传
                for (String mime:rules){
                    if(mime.equals(me.getValue().getContentType())){
                        return result;
                    }
                }
                result.put("file", "上传文件不合法");
            }
        }
        return result;
    }

}
