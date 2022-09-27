<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전송방식(method) : get, queryString</h1>
	<p>쿼리스트링으로 주소에 붙어서 전송됨, 길이제한이 있고, 주소란에 노출됨</p>
	
	<!-- 여태까지 안넣어도 get 기본방식 이었음. 주소 노출되는것이 장점이자 단점이기도 하다.-->
	<form action="" method="get">
		검색어1 : <input type="text" name="q1" id="">
		검색어2 : <input type="text" name="q2" id="">
		
		<input type="submit" value="전송">
	<!-- 다음장에서 post방식을 배워보자 -->	
	</form>
	</body>
</html>