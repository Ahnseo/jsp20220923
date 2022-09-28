<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    


<%-- 첫 요청을 06from.jsp로 보냈을 때 06to.jsp에서 null이 출력되지 않도록 코드 수정 --%>
<%
response.sendRedirect("06to.jsp?address=서울&email=ahnseoj@gmail.com");
%>
<%-- 한글은 인코딩해서 넣어야함 다음 파일에서 설명--%>

