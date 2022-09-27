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

	<%-- include action tag : page 속성에 있는 페이지호출 '결과가~ 삽입' --%>
	<%-- include(request, responce, 경로, out, boolean type) 메소드 실행시킴 --%>
	<%-- 파라미터에 request객체를 갖고있음을 주목하자, request메소드사용할수있잖아--%>
	<jsp:include page ="02navbar.jsp"></jsp:include>
	<div>
		main contents	
	</div>
</body>
</html>