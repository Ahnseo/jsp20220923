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
	Redirect 언제 사용해?
	ex) mail.naver.com 검색 
		-> 로그인 안했으니, 로그인 페이지로 보냄 
					https://nid.naver.com/nidlogin.login?url=http%3A%2F%2Fmail.naver.com%2F
		F12(소스보기) -> network 
		mail.naver.com http state code :302  => 로그인페이지 로 이동후 http state code :200
		
</body>
</html>