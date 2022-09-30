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
	<h1>scope 객체들 (책 5장 p132)</h1>
	<%-- attribute 를 넣을수있는 객체들의 목록은
		▶ request
		▶ session
		▶ pageContext
		▶ application
	 --%>
	 
	 <%
	 pageContext.setAttribute("page1", "page attr1");
	 request.setAttribute("req1", "req attr1");
	 session.setAttribute("sess1", "sess attr1");
	 application.setAttribute("app1", "app attr1");
	 %>
	<%--
	132쪽 설명
	page 영역 (기본객체 pageContext) 
		: 하나의 jsp페이지를 처리할 때 사용되는 영역
		  type (PageContext)
		  
	request 영역 (기본객체 request)
		: 하나의 HTTP 요청을 처리할 때 사용되는 영역
		  type (HttpServletRequest)
		  
	session 영역 (기본객체 session)
		: 하나의 웹 브라우저와 관련된 영역, ex)로그인정보와 같은것들
		  type (HttpSession)
		  
	application 영역 (기본객체 application)
		: 하나의 웹 어플리케이션과 관련된 영역, ex)임시 폴더 저장과 같은것들
		  type (ServletContext)◀타입을 ServletContext 또는 application 둘다 혼용하여 사용하니까
		  ,주의해서 알아두길.
		
	--%>
	
</body>
</html>