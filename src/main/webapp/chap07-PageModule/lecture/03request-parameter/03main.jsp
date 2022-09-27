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
	<%-- 요청 url : 03main.jsp?name=jimi --%>
	<div>
		메인 컨텐츠!
		<form action="">
			<input name="name" value="jimi">
			<input type="submit" value="전송"> <br>
		</form>
		name: <%= request.getParameter("name") %> <br>
		age: <%= request.getParameter("age") %> <br>
	</div>

	<br>

			<!-- 
			즉, 06sub.jsp파일의 request.getParameter("age")는
			05main.jsp파일의 name=value 의 한 쌍으로 정의 됨. 
			
			request.getParameter("name")는 
			05main.jsp파일의 name=value 를 상속받음.
			-->
	<div>
		<jsp:include page="03sub.jsp">
			
			<jsp:param name="age" value="30" />
		</jsp:include>
	</div>
	
	<br>
	
	<!-- sub.jsp 호출 후, 위에 age 정보가 남지 않는다. -->
	<div>
		sub.jsp 호출 후, 위에 age 정보가 남지 않는다.<br>
		age: <%= request.getParameter("age") %> <br>
	</div>
	
</body>
</html>