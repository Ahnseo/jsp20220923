<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	.container{
		display: flex;
	}
	.main{
		width: 80%;
	}
	.ad{
		background-color: linen;
		width: 20%;
	}
</style>
</head>
<body>
	<div class="container">
		<div class="main">
		<a href="other1.jsp">다른페이지1 가기</a> 
		|
		<a href="other2.jsp">다른페이지2 가기</a>
			<h1>메인페이지</h1>
			<!-- ?q=뭐뭐 를 이 페이지에보내기 -->
			<form action="">
				<input type="text" name="q"> <input type="submit"
					value="검색">
			</form>
			<hr>
			<h1>Lorem ipsum dolor.</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum vel dolorum consequuntur ipsum deserunt explicabo vero sunt totam debitis nam adipisci sed illo saepe repellat reiciendis veritatis quae fugiat veniam.</p>
			<p>Totam minima earum nobis eum illo doloremque nemo sapiente dolorum tempora neque pariatur et cum ex debitis aliquid numquam distinctio autem soluta excepturi nulla eaque recusandae quos rem magnam rerum.</p>
			<p>Ut consequatur cum asperiores non impedit nostrum distinctio atque est ab eius. Tempore accusamus nemo assumenda itaque aut sit vitae aspernatur aliquam voluptates aliquid magni repellat qui nam corporis ad.</p>
			<p>Facilis illum temporibus nulla reiciendis aliquam quis a! Delectus odit natus alias dolor ipsa ullam inventore tempore nisi perferendis incidunt obcaecati perspiciatis blanditiis aperiam nam explicabo quisquam sapiente aliquid numquam.</p>
			<p>Rerum possimus ipsum officia dignissimos dicta hic quis quas sunt. Adipisci quia libero fugit reiciendis quisquam amet omnis dolore atque at aut dolorem asperiores deserunt iure vitae veritatis velit doloremque.</p>

			<%
			/* session에 담기 */
			String q = request.getParameter("q");
			if (q != null && !q.isBlank()) {
				session.setAttribute("q", q);
			}
			%>
		</div>
		<div class="ad">
			<jsp:include page="ad.jsp"></jsp:include>
		</div>
	</div>


</body>
</html>