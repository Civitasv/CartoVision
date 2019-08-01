<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>404</title>
<meta name="description" content="">
<meta name="author" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/error_css/base.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/error_css/main.css">
</head>
<body>
	<main id="main-404-content" class="main-content-static">
	<div class="content-wrap">
		<div class="shadow-overlay"></div>
		<div class="main-content">
			<div class="row">
				<div class="col-twelve">
					<h1 class="kern-this">404 Error.</h1>
					<h2>${error}</h2>
				</div>
			</div>
		</div>
	</div>
	</main>
</body>
</html>