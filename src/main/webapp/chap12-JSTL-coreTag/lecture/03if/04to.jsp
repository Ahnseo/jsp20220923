<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
														<%-- var 속성 적용 --%>
														<%-- scope 속성 적용--%>
	<c:if test="${ empty param.num1 || empty param.num1 }" var="emptyAll" scope="page">
		<h1>두 수를 입력해주세요</h1>
	</c:if>


	<%-- num1, num2 모두 값이 있을때 더한값 출력 --%>
	
	<%-- 	<c:if test="${ not empty param.num1&&not empty param.num1 }"> --%>
	<c:if test="${ not emptyAll }" >
		<h1>${param.num1 + param.num2 }</h1>
	</c:if>
	
	
	<br>
	
	<a href="04from.jsp">돌아가기</a>
</body>
</html>