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
	<h1>세션을 유지하는 방법</h1>
	 
	<h2>1.첫 요청에 대한 응답에 쿠키를 포함해서 응답함</h2> 
	<p>[브라우저의 첫번째 요청] ▶ [서버] ▶ response Cookie: JSESSIONID=204790B4ECAC3B8A1DB4649D72CB43AA ▶ [ 다시 브라우저 ]</p>
	<p>[브라우저의 두번째 요청 부터] ▶ [서버는 같은 브라우저로 인식]</p> 
	<p>즉, session.getAttribute()또는setAttribute() 값들을 계속 활용 할수있음.</p> 
	<p> (브라우저에는 서버에서 받은 쿠키저장됨 <-> 서버에는 세션정보들이 저장되어 있음)</p>
	
	<h2>2.두번째 요청부터, '첫 응답에서 받은 쿠키를 들고 감(계속사용)' 마치, id카드처럼..</h2> 	
	
	<h2>3.첫 응답에 포함된 쿠키를 다음 요청에서 들고오면 '서버는 계속 같은 브라우저로 판단함' ..그림으로 이해하도록.</h2>
	<hr>
	<h2>4.브라우저 닫으면 쿠키 사라짐.</h2>
	
	<p>모든 브라우저를 닫고(또는 브라우저 설정 모든 쿠키 삭제) ▶ 새 브라우저를 열고, 검색주소를 소스보기
		▶직접주소입력http://localhost:8080/jsp20220923/chap10-session/lecture/01setAttribute.jsp
		▶ network,response,CookieId=뭐뭐숫자 확인해보기</p> 
	
	<p>새탭으로 ▶ 직접주소입력http://localhost:8080/jsp20220923/chap10-session/lecture/02getAttribute.jsp
		▶ session.getAttribute() 값 출력 됨 ▶ network,request,CookieId=뭐뭐숫자 확인해보기</p>
	<hr>
	
</body>
</html>