<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	try{
		String name=(String)session.getAttribute("username");
		int age=(int)session.getAttribute("age");
		
		if(name!=null){
			out.println("<p> 어서오세요, "+name+"님!");
			out.println("올해로 "+age+"세 이시군요! </p>");
		} else {
			out.println("<p> 아직 세션이 설정되지 않았습니다.</p>");
		}	
	} catch (Exception e) {
		response.sendRedirect("1.jsp");
	}
	%>
	
</body>
</html>