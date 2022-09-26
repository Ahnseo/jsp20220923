<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("utf-8");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1></h1>
	<form action="" method="post">
		이름 : <input type="text" name="name">
		이메일 : <input type="email" name="email">
		암호 : <input type="password" name="pw">
		주소 : <input type="text" name="address">
		
		<input type="submit" value="가입">
	</form>
	<hr>
	<%-- 앞으로 한글 안 깨지게 하려면, window->preference-> template-> JSPfile template-> 
		New JSP file (html 5) 클릭-> <% request.setCharacterEncoding("utf-8"); %> 작성 저장 
	--%>
	<%
	/* request.setCharacterEncoding("utf-8"); */
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String pw = request.getParameter("pw");
	String address = request.getParameter("address");
	
	System.out.println(pw);
	%>
	<p>이름 : <%=name %></p>
	<p>이메일 : <%=email %></p>
	<p>암호 : 표시되지 않음.</p>
	<p>주소 : <%=address %></p>
	
</body>
</html>