<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.container {
		display: flex;
	}
	.main {
		width: 80%;
	}
	.ad {
		width: 20%;
		background-color: linen;
	}
</style>
</head>
<body>
	<div class="container">
		<div class="main">
			<h1>메인 페이지</h1>
			<a href="other1.jsp">다른페이지1 가기</a> 
			|
			<a href="other2.jsp">다른페이지2 가기</a>
			<form action="">
				검색: <input type="text" name="q" >
				<input type="submit" value="검색">
			</form>
			<hr>
			<%
			String q = request.getParameter("q");
			if(q != null && !q.isBlank()){
			%>
				<h3> <%= q %>의 검색결과입니다.</h3>

			<%
				//String k = q; 인데.. 한글 인식하기위해 -> 인코딩코드 추가
				String k = URLEncoder.encode(q,"utf-8");
				Cookie cookie = new Cookie("k", k);
				//cookie.setMaxAge(24*60*60); //초단위읽기 1Day 동안 쿠키 유지 
				cookie.setPath(request.getContextPath());// 경로 지정 하기, 지정경로 포함해서 하위 폴더까지 cookie를 인식한다.
				response.addCookie(cookie);
			} 
			%>
		</div>
		<div class="ad">
			<jsp:include page="ad.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>