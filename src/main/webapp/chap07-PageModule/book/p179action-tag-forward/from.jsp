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
	이 페이지는 from.jsp 가 생성한 것입니다.
	
			 <%--page="to.jsp" : /로 시작안하는 상대 경로 <= 같은 폴더 안  --%>
	<jsp:forward page="to.jsp"></jsp:forward>
</body>
</html>