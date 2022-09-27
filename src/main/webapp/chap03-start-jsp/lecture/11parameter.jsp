<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>파라미더</h1>
<%
String val1 = request.getParameter("q"); //q의 value 얻기
%>
<p><%= val1 %></p>
<!--주소창에 q값을 설정해보자
 http://localhost:8080/jsp20220923/chap03/lecture/11parameter.jsp?q=bts -->


<p><%= request.getParameter("w") %></p>

<!--주소창에 w값을 설정해보자
http://localhost:8080/jsp20220923/chap03/lecture/11parameter.jsp?w=rock -->

<!-- & 으로 연결하기 
http://localhost:8080/jsp20220923/chap03/lecture/11parameter.jsp?q=bts&w=rock -->
</body>
</html>