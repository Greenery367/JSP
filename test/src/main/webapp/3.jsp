<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>세션 무효화 하기</h2>
	<%
		if(session.getAttribute("username")!=null){
			
			session.invalidate();
			out.println("<p>세션이 성공적으로 무효화되었습니다.</p>");
		} else {
			out.println("<p>무효화에 실패했습니다.</p>");
		}
	%>
</body>
</html>