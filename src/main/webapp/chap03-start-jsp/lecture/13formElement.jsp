<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>formElement 사용자의 입력란 만들기</h1>

<form action="13formElement.jsp">
<!-- 여러개의 text input field -->
<!-- name attribute : 쿼리스트링을 완성할 때 사용될 파라미터 이름 -->
<input type = "text" name = "coffee"/> <br/>
<input type = "text" name = "q"/> <br/>
<input type = "text" name = "loction"/> <br/>

<!-- submit input field -->
<input type = "submit"/>
<!-- formElement를 사용하여, 어디론가 쿼리스트링이 넘어가게 한다. -->
</form>
<hr/>
<%
String val = request.getParameter("coffee");
String q = request.getParameter("q");
String loction = request.getParameter("loction");
%>
coffee : <%= val %>, <%= q %>잔, <%= loction %>


</body>
</html>