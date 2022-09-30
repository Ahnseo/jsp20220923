<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- song배열의 아무값이나 출력되도록 코드작성 --%>
	<% 
	List<String> songList = List.of("Love call","you & me","baby baby");
	request.setAttribute("song", songList);
	%>
	<hr>
	<p>${song[0] }</p>
	<p>${song[1] }</p>
	<p>${song[2] }</p>
	
</body>
</html>