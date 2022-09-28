<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="jsp20220923.chap07.*" %>    
    
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- jsp프로젝트폴더  /src/main/java/  jsp20220923.chap07.Book.java --%>
	<%-- Book class 에는 book이름,book가격의 필드, (생성자), 메소드 있음. --%>
	<%
	Book book1 = new Book("java", 3000);
	Book book2 = new Book("html", 2000);
	
	request.setAttribute("book1", book1);
	request.setAttribute("book2", book2);
	%>
	<div>
		<jsp:include page="10sub.jsp"></jsp:include>
	</div>

</body>
</html>