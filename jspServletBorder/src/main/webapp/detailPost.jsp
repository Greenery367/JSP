<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세보기 화면</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
<%@ include file="header.jsp"%>
</head>
<body>
<div class="main">
	<h2>상세보기 화면</h2>
	<%
		ResultSet rs = (ResultSet) request.getAttribute("resultSet");
		while(rs.next()){
	%>
		<h3><%= rs.getString("title") %></h3>
		<p><%= rs.getString("content") %></p>	
		<p><small>작성일 : <%= rs.getString("created_at") %></small></p>	
		
		<!--  수정 폼  -->
		<h3>게시글 수정</h3>
		<form action="update-post" method="post">
			<input type="hidden" name="borardId" value="<%=rs.getInt("id") %>">
			<label for="title">제목 : </label>
			<input type="text" id="title" name="title" value="<%=rs.getString("title")%>">
			<br><br>
			<label for="content">내용 : </label>
			<input type="text" id="content" name="content" value="<%=rs.getString("content")%>">
			<br><br>
			<button type="submit">수정하기</button>
		</form>
		
	<%
		}
	%>
</div>
	
	<div>
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>