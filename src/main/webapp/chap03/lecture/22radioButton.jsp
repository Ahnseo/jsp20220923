<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- form>input[name="name"]+(input[type="radio"][name="location"][value="?"])*3+input:s -->
	<form action="22radioButton.jsp">
		배송지 선택하기 <br>
		<input type="text" name="name"><br>
		<input type="radio" name="location" value="home">집
		<input type="radio" name="location" value="work">회사
		<input type="radio" name="location" value="other">다른곳
		<!-- <input type="submit" value="전송"> -->
		<br><br>
		
		결제 수단 선택하기 <br>
		<!-- 현금, 카드, 무통장입금 -->
		<input type="radio" name="pay" value="cash">현금
		<input type="radio" name="pay" value="card">카드
		<input type="radio" name="pay" value="deposit">무통장 입금
		<br>
		<input type="submit" value="전송">
	</form>
	
	<%
	String name = request.getParameter("name");
	String loc = request.getParameter("location");
	String pay = request.getParameter("pay");
	
	%>
	<p>
	<%=name%>의 배송지는 <%=loc%> 입니다. <br>
	<%=name%>님의 결제 수단은<%=pay%> 입니다.
	</p>
</body>
</html>