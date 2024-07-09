<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산 결과</title>
</head>
<body>
	<h1>계산 결과</h1>
	<%-- JSP 주석 입니다! --%>
	<%
		// -> 스크립트릿 / 코드 실행 영역
		// 폼에서 데이터 추출
		String num1=request.getParameter("num1");
		String num2=request.getParameter("num2");
		int int1=Integer.parseInt(num1);
		int int2=Integer.parseInt(num2);
		
		int plus=int1+int2;
		int minus=int1-int2;
		int times=int1*int2;
		int div=int1/int2;
		
		// 방어적 코드 작성
		if(num1==null || num2==null || num1.trim().isEmpty() || num2.trim().isEmpty()){
			out.println("<p>앗, 숫자를 입력하지 않았습니다! 다시 입력해주세요. </p>");
		} else{
			out.println("<p> 더하기 : "+int1+" + "+int2+" = "+plus+"</p>");
			out.println("<p> 빼기 : "+int1+" - "+int2+" = "+minus+"</p>");
			out.println("<p> 곱하기 : "+int1+" * "+int2+" = "+times+"</p>");
			out.println("<p> 나누기 : "+int1+" % "+int2+" = "+div+"</p>");
		}
		
		// 계산의 결과를 스트림을 통해 내려주기
		
	%>
	<a href="caculator.html">Back</a>
</body>
</html>