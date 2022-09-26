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
	<h1>action : 경로</h1>
	<%-- '프로토콜'로 시작하면 외부 경로 --%>
	<%--
	네이버
	https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=bts
	 --%>
	 <form action="https://search.naver.com/search.naver">
	 네이버 : <input type="text" name="query" value="bts"> <br>
	 <input type="submit" value="이동">
	 </form>
	 <hr>
	 
	 <%--
	구글
	https://www.google.com/search?q=bts&rlz=1C1YTUH_koKR1021KR1021&oq=bts&aqs=chrome.0.0i355i433i512j46i433i512j0i131i433i512j0i3j0i131i433i512l2j0i3l3j0i512.1049j0j15&sourceid=chrome&ie=UTF-8
	 --%>
	 <form action="https://www.google.com/search">
	 구글 : <input type="text" name="q" value="bts"> <br>
	 <input type="submit" value="이동">
	 </form>
	 <hr>
	 
	  <%--
	다음
	https://search.daum.net/search?w=tot&DA=YZR&t__nil_searchbox=btn&sug=&sugo=&sq=&o=&q=bts
	 --%>
	 <form action="https://search.daum.net/search">
	 다음 : <input type="text" name="q" value="bts"> <br>
	 <input type="submit" value="이동">
	 </form>
	 <hr>
</body>
</html>