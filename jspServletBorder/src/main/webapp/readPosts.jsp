<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 목록</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
<%@ include file="header.jsp"%>
</head>
<body>
<div class="read-main">
		<h2>게시글 목록</h2>
	<%
		ResultSet rs = (ResultSet)request.getAttribute("resultSet");
		if(rs!=null){
			while(rs.next()){
			%>
			
			<div class="box">
				<h2><a href="view-post?boardId=<%= rs.getInt("id")%>"><%= rs.getString("title")%></h2>
				<p><%= rs.getString("content") %></p>
				<p><%= rs.getString("created_at") %></p>
				<form action="delete-post" method="get">
							<input type="hidden" name="boardId" value="<%= rs.getInt("id") %>">
							<button type="submit">삭제</button>
				</form>
			</div>
				<% } %>
		<% } else { %>
			<p>작성된 게시글이 하나도 없습니다.</p>
		<% } %>
		
</div>
		<div>
		<%@ include file="footer.jsp"%>
		</div>
</body>
</html>