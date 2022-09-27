<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>라디오 버튼 : 하나의 버튼으로 하나만 연결</h1>
	<!-- form>+input[name="?"]+(input[type="checkbox"][name="coffee"][value="?"])*3+(input[type="radio"][name="location"][value="?"])*3+input:s -->
	<form action="">
		<input type="text" name="?">
		<input type="checkbox" name="coffee" value="americano">
		<input type="checkbox" name="coffee" value="latte">
		<input type="checkbox" name="coffee" value="coldbrew">
		<hr>
		<input type="radio" name="location" value="?">
		<input type="radio" name="location" value="?">
		<input type="radio" name="location" value="?">
		<br>
		<input type="submit" value="전송">
	</form>
</body>
</html>