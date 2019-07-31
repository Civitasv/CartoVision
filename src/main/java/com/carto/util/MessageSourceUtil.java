package com.carto.util;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

public class MessageSourceUtil {

    public static String getSourceMessage(Object obj, String key){
        try {
            Method method = obj.getClass().getMethod("getSourceMessage", String.class);
            String validateContent = (String)method.invoke(obj, key);
            return validateContent;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static List<String> getValidateMethod(Object obj){
        List<String> list = new ArrayList<>();
        Method method = null;
        try {
            String validateContent = getSourceMessage(obj, "validateMethod");
            if(validateContent != null && validateContent.length() > 0){
                String[] rules = validateContent.split("\\|");
                for (int i=0;i<rules.length;i++){
                    list.add(rules[i]);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return list;
        }
        return list;
    }

}
