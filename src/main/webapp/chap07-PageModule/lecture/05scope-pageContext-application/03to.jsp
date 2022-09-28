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
	<%
	String s1 = (String)request.getAttribute("1번 저장소");
	String s2 = (String)session.getAttribute("1번 저장소");
	String s3 = (String)application.getAttribute("1번 저장소");
	%>
	<p><%= s1 %></p> <%--null 아닌 값으로 출력하기 --%>
	<p><%= s2 %></p> <%--null 아닌 값으로 출력하기 --%>
	<p><%= s3 %></p> <%--null 아닌 값으로 출력하기 --%>
	
	<hr>
	<%-- pageContext에서 모든 영역의 객체를 가져올수? 있다. 잘 안쓰긴 하지만,,--%>
	<%
	String s4 = (String) pageContext.getAttribute("1번 저장소", pageContext.PAGE_SCOPE);
	String s5 = (String) pageContext.getAttribute("1번 저장소", pageContext.REQUEST_SCOPE);
	String s6 = (String) pageContext.getAttribute("1번 저장소", pageContext.SESSION_SCOPE);
	String s7 = (String) pageContext.getAttribute("1번 저장소", pageContext.APPLICATION_SCOPE);
	%>
	<p><%=s4%></p>
	<p><%=s5%></p>
	<p><%=s6%></p>
	<p><%=s7%></p>
	
</body>
</html>