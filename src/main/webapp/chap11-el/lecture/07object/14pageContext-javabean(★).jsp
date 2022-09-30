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
	<%-- JEE api pageContext 검색해보면, get뭐뭐뭐() 는 뭐뭐뭐property 가 이미 존재함. --%>
	<h3>el + pageContext + javabean프로퍼티 활용</h3>
	<p>${pageContext.errorData }</p>
	<p>${pageContext.request }</p>
	<p>${pageContext.response }</p>
	<p>${pageContext.servletContext }</p>
	
	<hr>
	<p><%= request.getContextPath() %></p>
	<p>${pageContext.request.contextPath }</p>
	
	<hr>
	<%-- el을 사용해서 request의 getLocalport(),getLocalName() 호출 결과 출력 --%>
	<p>${pageContext.request.localPort }</p>
	<p>${pageContext.request.localName }</p>
	
</body>
</html>