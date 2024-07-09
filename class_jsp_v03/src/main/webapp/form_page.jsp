<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<div>
	<%@ include file="header.jsp"%>
		<div class="main">
			<h3 class="title">cm를 인치로 변환</h3>
			<form action="result.jsp" method="POST">
				<input type="text" id="cm" required="required" name="cm">
				<button class="button" type="submit">변환</button>
			</form>
		</div>
	<%@ include file="footer.jsp"%>
</div>

</body>
</html>