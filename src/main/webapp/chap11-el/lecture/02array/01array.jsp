<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>attrbute 값타입이 배열일 때</h3>
	<% 
	String[] arr1 = {"hurk","ironman","spiderman"};
	request.setAttribute("heros", arr1);
	%>
	<hr>
	<p>${heros }</p>
	<p>${heros[0] }</p>
	<p>${heros[1] }</p>
	<p>${heros[2] }</p>
	
	<%-- OutOfException 발생 안하고, 출력을 안하네 ! 오 . 좋네 이거. --%>
	<p>${heros[3] }</p>
	
</body>
</html>