<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>el Jstl</h1>
	
	<h2>객체접근 request Attribute</h2>

	<%@ page import="vo.UserVo" %>
	
	<%
	
	UserVo userVo = (UserVo)request.getAttribute("userVo");
	
	int num = (int)request.getAttribute("num");
	String str = (String)request.getAttribute("str");
	
	%>
	
	<%=userVo.getNo() %>
	<%=userVo.getName() %>
	<%=userVo.getEmail() %>
	<%=userVo.getPassword() %>
	<%=userVo.getGender() %> <br>
	
	<%=num %> <br>
	<%=str %> <br>
	
	<h3>el</h3>
	
	no = ${requestScope.userVo.no } <br>
	name = ${requestScope.userVo.name } <br>
	email = ${requestScope.userVo.email } <br>
	password = ${requestScope.userVo.password } <br>
	gender = ${requestScope.userVo.gender } <br>
	
	num = ${requestScope.num} <br>
	str = ${requestScope.str} <br>
	
	
</body>
</html>