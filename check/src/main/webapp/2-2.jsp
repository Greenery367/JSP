<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style class="text/css">
	.whole{
		magin:0;
		padding:0;
		display: flex-reverse;
		width: 300px;
		height: 600px;
	}
	.box{
		float: left;
		margin:0;
		padding:0;
		width: 300px;
		height: 100px;
		border: 3px solid black;
		background-color: #BC4A4A;
		display: flex;
		justify-content: center;
		align-items:center;
	}
</style>
</head>
<body>
<div class="whole">
	<div class="inner1">
			<div class="box">
				<h2>item1</h2>
			</div>
			<div class="box">
				<h2>item2</h2>
			</div>
			<div class="box">
				<h2>item3</h2>
			</div>
	</div>
</div>
</body>
</html>