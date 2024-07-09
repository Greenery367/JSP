<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String username="홍길동";
	int age=21;
	
	session.setAttribute("username",username);
	session.setAttribute("age", age);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 화면</title>
</head>
<body>
	<h1>메인 화면</h1>
	<a href="2.jsp">나의 세션 확인하기</a>
	<a href="3.jsp">나의 세션 지우기</a>
</body>
</html>