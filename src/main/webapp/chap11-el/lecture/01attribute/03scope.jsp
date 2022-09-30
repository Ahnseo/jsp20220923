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
	<h1> 4개의 영역으로 el코드 사용해보기 </h1>
	<% 
	pageContext.setAttribute("pageAttr1", "pageValue1");
	request.setAttribute("reqAttr1", "reqValue1");
	session.setAttribute("sessAttr1", "sessValue1");
	application.setAttribute("appAttr1", "appValue1");		
	%>
	<hr>
	<p>${pageAttr1 }</p>
	<p>${reqAttr1 }</p>
	<p>${sessAttr1 }</p>
	<p>${appAttr1 }</p>
	
	
	
	<%-- 없는 attribute를 부르면, 출력안됨 . (null 아님.) --%>
	<p>${pageAttrrrrrr1 }</p>
	<p>${reqAttrrrrrr1 }</p>
	<p>${sessAttrrrr1 }</p>
	<p>${appAttrrrr1 }</p> 
	
	
</body>
</html>