<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h1>에러가 났어요... 큰일입니다.</h1>
	<p><%= exception.getMessage()%></p>
	<p><%= exception%></p>
</body>
</html>