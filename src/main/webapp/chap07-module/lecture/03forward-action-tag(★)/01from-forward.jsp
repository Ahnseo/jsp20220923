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
	<%-- forward : 다른 서블릿으로 처리 요청 (흐름 요청) 변경
				그래서, 다른 서블리이 최종 응답하게 됨. 
				forward라는 단어의 기능에 더 집중하자 --%>
	
	<h1>01from-forward.jsp</h1>
	<jsp:forward page="01to.jsp"></jsp:forward>
	
	
	<%-- <jsp:forward> 액션 태그를 실행하면,
	    이 페이지 01from-forward.jsp 가 
	    생성했던 출력 결과는 모두 제거된다. --%>
	
</body>
</html>