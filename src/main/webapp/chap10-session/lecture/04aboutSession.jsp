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
	<h1>세션 아이디: <%=session.getId() %></h1>
	<h1>세션 처음만들어진 시간: <%=session.getCreationTime() %></h1>
	<h1>세션 마지막에 사용한 시간: <%=session.getLastAccessedTime() %></h1>
	<h1>새로운 새션인지: <%=session.isNew() %></h1>
	<h1>세션을 얼마나 유지해야하는지 (초 단위): <%=session.getMaxInactiveInterval() %></h1>
	<p> 유지하는 시간을 설정하는 방법 : 프로젝트파일/WEB-INF/web.xml 파일을 만들자(이클립스의 도움을 받아자 Deployment Descriptor 우클릭)</p>
	
	<a href="05invalidate.jsp"> 세션 종료 하기</a>
</body>
</html>