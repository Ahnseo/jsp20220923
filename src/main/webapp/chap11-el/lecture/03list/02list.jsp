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
	<%--list 로 attribute 코드작성 --%>
	<%-- attribute 속에 attribute --%>
	<% 
	java.util.List<String> songList = java.util.List.of("Love call","you & me","baby baby");
	request.setAttribute("song", songList);
	request.setAttribute("attr0", 0);
	request.setAttribute("a", 1);
	request.setAttribute("z", 2);
	request.setAttribute("str2", "2");
	request.setAttribute("string2", "two");
	%>
	<hr>
	<p>${song[0] }</p>
	<p>${song[attr0] }</p>
	<p>${song[a] }</p>
	<p>${song[z] }</p>
	<p>${song[str2] }</p>
	<%--<p>${song[string2] }</p> : Exception 발생  --%>
	
</body>
</html>