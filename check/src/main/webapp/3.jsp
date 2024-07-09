<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style class="text/css">
	body{
	}
	.blue{
		display: flex;
		align-items: center;
		justify-content: center; 
		width: 300px;
		height: 300px;
		background-color: cyan;
		border: 1px solid #BC4A4A;
		border-radius: 40px;
	}
	.yellow{
	width: 150px;
	height: 150px;
	background-color: #FCD39D;
	border-radius:20px;
	display: flex;
		align-items: center;
		justify-content: center; 
	}
	.text{
		color:#BC4A4A;
		font-weight: bold;
	}
</style>
</head>
<body>
<div class="blue">
	<div class="yellow">
		<p class="text">item child</p>
	</div>
</div>
</body>
</html>