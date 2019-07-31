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
            <th class="trigger"><p>部门意向</p><span>plus</span></th>
            <th class="trigger"><p>自我介绍</p></th>
        </tr>
        </thead>

        <tbody>

        <tr>
            <td><p><strong>序号</strong></p></td>
            <td><p>1</p></td>
            <td><p>胡森</p></td>
            <td><p>2017301110153</p></td>
            <td><p>2309780282</p></td>
            <td><p>地图设计部</p></td>
            <td><p>社长本尊</p></td>
        </tr>
        </tbody>
    </table>
</section>
</body>
</html>