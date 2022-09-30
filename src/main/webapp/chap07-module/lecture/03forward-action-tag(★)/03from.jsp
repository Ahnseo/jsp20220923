<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    

	<%-- null 이 출력되지 않도록 03to.jsp에 요청을 보내고
 		03from.jsp에서 03to.jsp로 포워드하는 코드 작성--%>
 
<jsp:forward page="03to.jsp" />
 	
 		
