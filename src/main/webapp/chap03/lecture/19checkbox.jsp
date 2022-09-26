<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>checkBox 체크박스</h1>
	<!-- form>(input[type="checkbox"][name=""][value=""]+br)*5+input:s -->
	<form action="19checkbox.jsp">
		<input type="text" name="name" value="이름 입력란"> <br>
		<br>
		
		<input type="checkbox" name="coffee" value="아메리카노">아메리카노
		<input type="checkbox" name="coffee" value="라떼">라떼
		<input type="checkbox" name="coffee" value="카푸치노">카푸치노
		<input type="checkbox" name="coffee" value="콜드브루">콜드브루
		<input type="checkbox" name="coffee" value="아포가토">아포가토
		<br>
		
		<input type="submit" value="전송">
		<hr>
	</form>
	<%
	String name = request.getParameter("name");
	String[] coffees = request.getParameterValues("coffee");
	%>
	
	<p>
	<%= name%>님이 선택한 커피는 
	
	<%
	if (coffees != null) {
		for (String coffee : coffees) {
			out.print(coffee);
			out.print(" ");
		}
	}
	%>
	입니다.
	</p>
	
</body>
</html>