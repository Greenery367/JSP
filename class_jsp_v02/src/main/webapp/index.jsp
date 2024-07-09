<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 기본 태그 예제</title>
</head>
<body>
	<h1>JSP 기본 태그 예제</h1>
	<%-- 스크립트 릿: 현재 시간을 java 코드로 가져와서 출력해보자. --%>
	<p>현재 시간 : <% 
		java.util.Date now=new java.util.Date();
		// 한국 시간 형식으로 포맷 설정하기
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String formattedDate = sdf.format(now);
		out.println(formattedDate);
	%>
	</p>
	
	<%--표현식: 임의의 숫자를 생성하여 출력 --%>
	<p>임의의 숫자 : <%= new Random().nextInt(100)%></p>
	
	<%--표현식: 사용자 정의 메서드 출력 --%>
	<p><%= getWelcomeMessage("홍길동- 허균") %></p>
	
	<%--선언문: 사용자 정의 메서드 선언 --%>
	<%!
		public String getWelcomeMessage(String name){
			return "환영합니다. "+name+"!!!";
	}
	%>
	
	<%
		Integer visitCount=(Integer)application.getAttribute("visitCount");
		if(visitCount==null){
			visitCount=1;
		} else{
			visitCount+=1;
		}
		
		application.setAttribute("visitCount", visitCount);
	%>
	
	<p> 현재 페이지 방문 횟수 : <%=visitCount %></p>
	
	<%
		int second=new java.util.Date().getSeconds();
		String bgColor;
	
		if(second<20){
			bgColor="#FFDDC1";
		} else if(second<40){
			bgColor="#FFFFC1";
		} else {
			bgColor="#C1FFC1";
		}
	%>
	
	<style>
		body{
			background-color: <%=bgColor%>;
		}
	</style>
	
</body>
</html>