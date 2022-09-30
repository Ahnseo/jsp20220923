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
	<%-- 
		<jsp:param name="" value=""/>으로 
		모듈화된 query string (?name=value)을 
		URL에 필요한 만큼 추가할 수 있게 된다.
	 --%>
	
	<div>
		메인 컨텐츠
	</div>

		<%-- <jsp:include tag 안에 작성 --%>	
		<%--name=value 쌍의 파라미터가 request에 포함됨 --%>
	<jsp:include page="01sub.jsp">
		<jsp:param name="age" value="30" />
	</jsp:include>

</body>
</html>