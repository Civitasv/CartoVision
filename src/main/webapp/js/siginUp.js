function ajax_siginUp(formNameSelector){
    // 取得前端的所有
    if (validateForm(formNameSelector)) {
        //这里不能直接使用表单提交,使用ajax提交表单
        let result = "";
        $(formNameSelector).ajaxSubmit({
            async:false,
            dataType:"text",
            success:function(responseText){
                //后台添加成功就返回success
                if(responseText==="success"){
                    alert("报名成功!");
                    //清空报名信息
                    $(formNameSelector).resetForm();
                }else{
                    alert("报名出错!");
                }
            },
            error:function(){
                alert("XmlHttpRequest Error!");
            }
        });
    }
}

function validateForm(formNameSelector) {
    let flag = true;
    //获取regr的属性节点,要加[]
    $(formNameSelector).find("[regr]").each(function() {
        //取值
        let val = $(this).val();
        let regex = new RegExp($(this).attr("regr"));
        let tip = $(this).attr("tip");
        let name = $(this).attr("name");
        if (regex.test(val)) {
           /*
           TODO 看以后加不加这个功能
           if(name == "emp.username"){
                //发送ajax请求
                let result = validateUname($(this).val());
                if(result == "no"){
                    $(this).css("background", "#FFAC8C");
                    alert("该用户已经存在!");
                    flag = false;
                    return false;
                }else{
                    $(this).css("background", "white");
                }
            }*/
            $(this).css("background", "white");
        } else {
            $(this).css("background", "#FFAC8C");
            alert(tip);
            flag = false;
            return false;
        }
    });
    //再检验非必须项目
    $(formNameSelector).find("[reg]").each(function() {
        let val = $(this).val();
        let tip = $(this).attr("tip");
        if (val != null && $.trim(val) != "") {
            let regex = new RegExp($(this).attr("reg"));
            if (regex.test(val)) {
                $(this).css("background", "white");
            } else {
                alert(tip);
                $(this).css("background", "#FFAC8C");
                flag = false;
                return false;
            }
        }
    });
    return flag;
}