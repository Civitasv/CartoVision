<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <c:set var="path" value="${pageContext.request.contextPath }"></c:set>
    <script type="text/javascript">
        var path = "${path}";
    </script>
    <script type="text/javascript" src="${path }/quote_js/jquery-3.3.1.js"></script>
    <script src="${path}/quote_js/anime.min.js"></script>
    <%--<script src="${path}/quote_js/jquery.scrollorama.js"></script>
        <script src="${path}/quote_js/jquery.lettering-0.6.1.min.js"></script>--%>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${path}/quote_css/demo.min.css">
    <link rel="stylesheet" href="${path}/css/lgallery.min.css">
    <link rel="stylesheet" type="text/css"
          href="${path }/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${path}/quote_css/buttons.css">
    <script src="${path }/bootstrap/js/bootstrap.min.js"></script>
    <script src="${path }/quote_js/echarts.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
</head>
</html>