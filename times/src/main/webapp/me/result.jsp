<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 결과</title>
</head>
<body>
	
	<%
		String num=request.getParameter("num");
		int realNum=Integer.parseInt(num);
		int result=realNum;
		for(int a=1; a<10; a++){
			result=realNum*a;
			out.println(realNum+" * "+a+" = "+result);
		}
	%>
</body>
</html>