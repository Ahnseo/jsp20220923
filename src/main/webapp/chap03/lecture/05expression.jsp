<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>1 부터 100 까지 합</h1>
	<%
	int sum = 0;
	for(int i = 1; i<= 100; i++){
		sum += i;
	}
	%>
	<%-- <% = sum %>: html 속 코드로 out.print(sum) 저장됨 --%>
	<h2> 합 : <%=sum %></h2>
	
</body>
</html>