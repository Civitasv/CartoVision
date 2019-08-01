<%--
  Created by IntelliJ IDEA.
  User: dellyx
  Date: 2019-07-31
  Time: 19:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="tags.jsp" %>
<html>
<head>
    <title>报名人数详情页</title>
    <link rel="stylesheet" type="text/css" href="${path}/quote_css/form/form.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
    <script src="https://unpkg.com/imagesloaded@4.1.4/imagesloaded.pkgd.min.js"></script>
    <script src="${path}/quote_js/form/form.js"></script>
    <script>
        $(function () {
            $.ajax({
                method: "POST",
                timeout: 5000,
                url: path + "/info/form.action",
                data: "now=" + new Date().getTime(), // 防止缓存问题
                dataType: "json",
                contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                async: false,
                success: function (data) {
                    //接收list
                    $.each(data.data, function (index, res) {
                        var xuhao = index+1;
                        var dept = res.dept==0?"地图设计部":"程序开发部";
                        $("tbody").append("<tr>\n" +
                            "            <td><p><strong>"+xuhao+"</strong></p></td>\n" +
                            "            <td><p>"+res.name+"</p></td>\n" +
                            "            <td><p>"+res.studyNum+"</p></td>\n" +
                            "            <td><p>"+res.qq+"</p></td>\n" +
                            "            <td><p>"+dept+"</p></td>\n" +
                            "            <td><p>"+res.introduction+"</p></td>\n" +
                            "        </tr>")
                    })
                },
                error: function (a) {
                    alert("error");
                }
            });
        })
    </script>
</head>
<body>
<div class="loader">
    <div class="lds-ripple">
        <div></div>
        <div></div>
    </div>
</div>

<aside class="sidebar">
    <div class="logo">
        <a href="#">+</a>
    </div>
</aside>
<header>
    <div class="header-inner">
        <h1>报名信息</h1>
    </div>
</header>
<section class="table-wrapper">
    <table>
        <thead>
        <tr>
            <th></th>
            <th class="trigger"><p>姓名</p></th>
            <th class="trigger"><p>学号</p></th>
            <th class="trigger"><p>QQ</p></th>
            <th class="trigger"><p>部门意向</p></th>
            <th class="trigger"><p>自我介绍</p></th>
        </tr>
        </thead>

        <tbody>

        </tbody>
    </table>
</section>
</body>
</html>