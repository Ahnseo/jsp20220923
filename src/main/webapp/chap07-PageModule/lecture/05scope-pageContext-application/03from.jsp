<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    

<%
//request,session,application 에 attribute 추가하는 코드 작성
//setAttribute( (String)저장할 공간 이름, (Object)모든object 올수있음. )

//
request.setAttribute("1번 저장소", "리퀘스트attribute");
session.setAttribute("1번 저장소", "세션attribute");
application.setAttribute("1번 저장소", "어플리케이션attribute");

%>
<jsp:forward page="03to.jsp"/>
