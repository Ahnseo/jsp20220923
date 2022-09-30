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
	<h1>action절대경로 : http:// 로 시작하는 경로</h1>
	<h1>42번 파일</h1>
	<%-- 42번 파일 경로
	http://localhost:8080/jsp20220923/chap03/lecture/42absolutePath.jsp
	프로토콜://host:port /path ? queryString 로 구성됨
	 --%>
	 <h3>절대 경로 :  /로 시작, port번호 다음(port번호 없을수도있다.)</h3>
	 <%-- <form action="/jsp20220923/chap03/lecture/42absolute-path.jsp"> --%>
	 
	 <form action="/jsp20220923/chap03/lecture/43absolute-path.jsp">
	 <input type="text" name="age"> <br>
	 <input type="submit" value="전송">
	 	
	 </form>
	 
	 <!-- 개발환경에 따라 절대경로를 다른 프로젝트 폴더로 바꿀수있다. -->
</body>
</html>