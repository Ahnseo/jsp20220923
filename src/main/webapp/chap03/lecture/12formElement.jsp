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

<form action="12formElement.jsp">
<!-- text input field -->
<!-- name attribute : 쿼리스트링을 완성할 때 사용될 파라미터 이름 -->
<input type = "text" name = "coffee"/>
<!-- submit input field -->
<input type = "submit" />
<!-- formElement를 사용하여, 어디론가 쿼리스트링이 넘어가게 한다. -->
</form>
<hr/>

<!-- latte를 작성해서 제출-> 12formElement.jsp에 coffee라는 이름이 붙어 넣어옴. -->
<%
String val = request.getParameter("coffee");
%>
coffee : <%= val %>


<p></p>
</body>
</html>