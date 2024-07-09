<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- JSP 페이지의 설정을 정의하는 지시자 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>인사말을 완성하였습니다.</h1>
	<%
		// 자바 실행 코드 (=스크립트릿)
		// request 객체에서 값 추출하기
		String name=request.getParameter("name");
		if(name==null || name.trim().isEmpty()){
			out.println("<p> 앗! 당신의 이름을 먼저 입력해주세요. </p>");
		} else {
			out.println("<p>반가워, "+name+"! 나의 JSP Site에 잘 왔어~ 환영~ 방가방가</p>");
		}
	%>
	
	<!-- 다시 이전 페이지로(또는 특정 페이지로) 이동 처리 (=뒤로 가기)-->
	<a href="greet_from_page.html">Back</a>
	
	
</body>
</html>