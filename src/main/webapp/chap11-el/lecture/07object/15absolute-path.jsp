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
	<h1> 상대경로 </h1>
	<a href="14pageContext-javabean(★).jsp"> 상대경로로 14pageContext.jsp 이동</a>
	<br>
	
	<h1> 절대 경로 작성 </h1>
	<%= request.getContextPath() %> 
	<br>
	path: /jsp20220923/src/main/webapp/chap11-el/lecture/07object/14pageContext-javabean(★).jsp <br> 
	
	/src/main/webapp 를 생략하는 이유 : 톰캣이 프로젝트를 압축-> "/src/main/webapp" -> "/ 폴더" 하나로 만들어버림 <br> 
	  
	<a href="<%=request.getContextPath() %>/chap11-el/lecture/07object/14pageContext-javabean(★).jsp">이전 방식으로 절대경로 14pageContext.jsp 이동</a>
	<br>
	<a href="${pageContext.request.contextPath }/chap11-el/lecture/07object/14pageContext-javabean(★).jsp">el코드 절대경로 14pageContext.jsp 이동</a>
	
</body>
</html>