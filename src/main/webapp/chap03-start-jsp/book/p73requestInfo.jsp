<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>request 정보</h1>
	<!-- p*9 -->
	<p>클라이언드 IP:<%= request.getRemoteAddr() %></p>
	<p>요청 정보 길이:<%= request.getContentLength() %></p>
	<p>요청 정보 인코딩:<%= request.getCharacterEncoding() %></p>
	<p>요청 정보 컨텐츠타입:<%= request.getContentType() %></p>
	<p>요청 정보 프로토콜:<%= request.getProtocol()%></p>
	<p>요청 정보 정송방식:<%= request.getMethod() %></p>
	<p>요청 URI:<%= request.getRequestURI() %></p>
	<p>컨텍스트 경로:<%= request.getContextPath() %></p>
	<p>서버 이름:<%= request.getServerName() %></p>
	<p>서버 포트:<%= request.getServerPort()%></p>

</body>
</html>