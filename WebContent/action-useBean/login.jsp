<%@page import="com.jsp.dto.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<%-- <%!

	class LoginRequest{
		private String id;
		private String pwd;
		
		public void setId(String id){
			this.id = id;
		}
		
		public String getId(){
			return this.id;
		}
		
		public void setPwd(String pwd){
			this.pwd = pwd;
		}
		
		public String getPwd(){
			return this.pwd;
		}
	}

%> --%>

<%-- <%
	자바로 따지면 useBean은 해당과 같다
	LoginRequest loginReq = new LoginRequest();
	loginReq.setId(request.getParameter("id");
	loginReq.setPwd(request.getParameter("pwd");
%> --%>

<jsp:useBean id="loginReq" class="com.jsp.request.LoginRequest">
	
</jsp:useBean>
<jsp:setProperty property="*" name="loginReq"/>

<%-- <jsp:setProperty property="id" name="loginReq" value='<%=request.getParameter("id") %>'/>
<jsp:setProperty property="pwd" name="loginReq" value='<%=request.getParameter("pwd") %>'/> --%>

<%
	MemberVO member = loginReq.toMemberVO();
	member.setName("홍길동");
	member.setPhone("010-1234-4567");
	member.setAddress("대전혁신도시 중구 대흥동");
	
	session.setAttribute("loginUser", member);
	session.setMaxInactiveInterval(10);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	아이디 : <%=loginReq.getId() %><br/>
	패스워드 : <%=loginReq.getPwd() %><br/>
	<button type="button" onclick="location.href='main.jsp';">메인가기</button>
</body>
</html>