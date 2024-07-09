<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="styles.css">
<meta charset="UTF-8">
<title>결과창</title>
</head>
<body>
	<div>
		<%@ include file="header.jsp"%>
		<div class="result">
			<h3 class="title">변환 결과</h3>
		<% 
			java.text.DecimalFormat df=new java.text.DecimalFormat("###,###");
			String cm=request.getParameter("cm");
			int intNum=Integer.parseInt(cm);
			double result=(intNum/2.54);
			String printNum=df.format(result);
			if(cm==null || cm.trim().isEmpty()){
				out.println("<p> 앗, 다시 입력해주세요. </p>");
			} else {
				out.println("<p> 결과  : "+printNum+"</p>");
			}
		%>
		<button class="back"><a href="form_page.jsp">Back</a></button>
		</div>
		<%@ include file="footer.jsp"%>
		
	</div>
</body>
</html>