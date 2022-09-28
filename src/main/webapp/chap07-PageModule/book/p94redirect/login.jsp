<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    


<!-- 요청 해보기 ?memberId=madvirus  => 인덱스 페이지로 이동  -->
<%
	String id = request.getParameter("memberId");

	// 로그인 성공   ?memberId=madvirus  => 인덱스 페이지로 이동
	if(id !=null&& id.equals("madvirus")){
		response.sendRedirect("index.jsp");
	
	// 로그인실패
	}else{
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 실패</title>
</head>
<body>

	잘못된 아이디입니다.

</body>
</html>
<% 	
	}
%>