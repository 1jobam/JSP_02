<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
	Date today = new Date();
	String todayStr = new SimpleDateFormat("yyyy-MM-dd").format(today);
	out.println(todayStr);
%>
<br/>
<fmt:formatDate value="<%=today %>" pattern="yyyy-MM-dd HH:mm:ss" var="today"/>
<br/>
${today }
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

</body>
</html>