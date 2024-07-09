<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션을 읽어보는 페이지</title>
</head>
<body>
	<h2>세션 읽기</h2>
	<%
		// *예외 처리 하는 법
		// 1. 삼항 연산자
		// 2. if else
		// 3. try-catch 사용 가능
		
		// 오류 처리가 안 나서 어떤 오류를 처리해야할지 모르겠다....
		// 세션이 있는지 없는지에 대한 오류인가??
		try{
			String username=(String)session.getAttribute("username");
			int age=(int)session.getAttribute("age");
			
			if(username!=null){
				out.println("<p>안녕 "+username);
				out.println("나이는 "+age+" 이네요!</p>");
			} else {
				out.println("세션 설정이 되지 않았습니다.");
			}
		} catch(Exception e) {
			response.sendRedirect("setSession.jsp");
		}
		
		
	%>
</body>
</html>