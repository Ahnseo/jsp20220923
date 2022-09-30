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
	<form action=""> 
	이름: <input type="text" name="nameParam" >
			<input type="submit" value="등록">
	</form>
	<a href="other1.jsp">다른 페이지 가기</a>
	
	<%
		String nameParam = (String)request.getParameter("nameParam");
		if(nameParam !=null && !nameParam.trim().isEmpty()){ //nameParam가 있으면,
			session.setAttribute("userName", nameParam); //nameParam를 ->userName으로 담는다.
		}
		
		String userName = (String)session.getAttribute("userName");
		if(userName == null){
			userName = "guest";
		}else{
	%>
		<h1><%=userName  %>님 반갑습니다.</h1>
	<%	
		}
	%>
	
</body>
</html>