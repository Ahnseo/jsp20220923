<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, jsp20220923.chap07.*" %>
    
    
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<%-- request에 attribute 추가해서 13sub.jsp에 null 출력되지 않도록 하기 --%>

<%
Map<String,Book> bookMap = new HashMap<>();
bookMap.put("book1", new Book("java", 3000));
bookMap.put("book2", new Book("css", 5000));

request.setAttribute("books", bookMap);
%>


<jsp:include page="12sub.jsp"></jsp:include>

</body>
</html>