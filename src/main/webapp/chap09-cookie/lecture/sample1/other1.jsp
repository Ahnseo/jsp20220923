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
			<!-- (h1^p*5^^hr)*3 -->
			<h1>Lorem ipsum.</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores tempora voluptate sint eius animi commodi impedit voluptas magni saepe accusamus deleniti ducimus corporis facere veniam nisi asperiores ut doloremque voluptates.</p>
			<p>Deserunt nesciunt amet totam hic quisquam aperiam ullam at est exercitationem cum ipsam aliquid quidem quaerat earum harum reprehenderit pariatur consectetur quia ipsa fugiat odit eveniet laboriosam quo ducimus nam!</p>
			<p>A minus quos debitis fugit illo cum libero quisquam mollitia veritatis quas tempore ex temporibus ratione possimus sit necessitatibus porro magni ipsa quae nihil numquam eligendi repellat! Aspernatur quibusdam quisquam.</p>
			<p>Aliquid sit odio incidunt libero dolorem omnis facilis dicta animi aperiam nemo consectetur inventore sunt iste! Cumque et deleniti quis error culpa ullam pariatur sapiente deserunt illo modi dicta enim.</p>
			<p>Voluptatibus exercitationem ut illo quos expedita temporibus unde dolore libero animi repellat. Excepturi hic explicabo illum facere eligendi ullam veritatis sapiente itaque numquam aspernatur odio reiciendis. Possimus molestias facilis dolorem!</p>
			<hr>
			<h1>Animi numquam.</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere itaque molestiae voluptatem voluptates ex. Laborum praesentium modi fugiat reiciendis saepe magnam at hic impedit ipsum incidunt perferendis sint ullam necessitatibus.</p>
			<p>Aperiam error incidunt omnis perferendis dignissimos nulla tempore accusamus quibusdam nostrum molestiae quod aliquam ducimus perspiciatis. Cum ad totam obcaecati corporis omnis vitae vel aliquid dolorem eveniet minima tenetur vero!</p>
			<p>Veniam quas pariatur beatae iste rem magni ullam modi voluptatibus mollitia sunt sequi fuga deserunt accusamus! Quasi vitae ut tenetur odit ab molestias corrupti quidem consequuntur nulla beatae modi magnam.</p>
			<p>Quo placeat iusto dolorem quasi esse. Accusantium rerum placeat omnis a perspiciatis perferendis mollitia deserunt tempore provident quam. Dicta maiores ad voluptatem animi quisquam eum atque rem. Molestiae quos excepturi.</p>
			<p>Natus totam recusandae saepe obcaecati quis nesciunt animi ex qui at numquam! Odit minima iure eos veritatis soluta doloribus labore optio asperiores fuga sint recusandae officiis temporibus sequi ducimus nostrum!</p>
			<hr>
			<h1>Sunt rem.</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis sit neque adipisci nulla omnis magnam iste. Eaque asperiores molestias unde dolorum praesentium quisquam iste natus facere non fugiat aut illum.</p>
			<p>Unde provident expedita dolore magnam ab perspiciatis doloremque quisquam quis voluptas eos aspernatur cupiditate similique nobis amet animi. Tempore maiores modi quos odit placeat deserunt molestiae architecto fugiat corporis provident?</p>
			<p>Delectus nulla perspiciatis est soluta fugit necessitatibus non? Perferendis sunt id itaque nemo magnam ut natus culpa perspiciatis repellendus pariatur rerum ea voluptas officia laborum sit necessitatibus dolore sint. Perspiciatis.</p>
			<p>Consectetur praesentium magnam repellat adipisci reprehenderit. Possimus voluptatem iusto atque ipsum nostrum eveniet ex facilis quasi consectetur asperiores illum nemo eos praesentium tempore autem quos nesciunt quod voluptatum obcaecati voluptates.</p>
			<p>Expedita sunt nisi necessitatibus laboriosam adipisci libero aliquid tempora obcaecati eius voluptatem ad vitae sit perferendis rerum deleniti nostrum doloremque modi nam quaerat eligendi quo placeat voluptas ea quos eaque.</p>
			<hr>
		</div>
		<div class="ad">
			<jsp:include page="ad.jsp" />
		</div>
	</div>
</body>
</html>