<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="path" value="${pageContext.request.contextPath }"></c:set>
<script type="text/javascript">
	var path = "${path}";
</script>
<link rel="stylesheet" type="text/css"
	href="${path }/bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="${path }/outerjs/jquery-3.3.1.js"></script>
<script src="${path }/bootstrap/js/bootstrap.min.js"></script>
<script src="${path }/outerjs/echarts.js"></script>

</head>
</html>