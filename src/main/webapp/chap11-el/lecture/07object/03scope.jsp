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
	<h3> 같은 이름의 attribute가 다른영역에 있을 때 </h3>
	<h3> el의 기본객체 를 사용하여, 값을 출력할 수 있다.</h3>
	<%
	pageContext.setAttribute("attr1", "val1");
	//그런데 공교롭게도 , 우연히 
	request.setAttribute("attr1", "val2");
	%>
	<p>${attr1 }</p>
	<hr>
	
	<%-- 이때, request영역의 val2를 출력하려면, requestScope --%>
	<p>${requestScope.attr1 }</p>
	<p>${requestScope["attr1"] }</p>
</body>
</html>