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
	<!-- 지우고 02navbar.jsp로 
	<div>
		상단 navbar
	</div> -->
	<%-- include directive : file 속성에 작성된 파일의 내용이 복붙됨 --%>
	<%-- 실제 작성코드만 복붙이니까, jsp파일을 따로 생성하지않아.. --%>
	<%-- 액션태그와 달리, 결과값이 꼭 필요없어. --%>
	
	<%@ include file="02navbar.jsp" %>
	<div>
		main contents
	</div>
	
</body>
</html>