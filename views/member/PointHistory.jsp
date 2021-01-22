<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../Header.jsp"%>
	<div class="my-1">
		<%@ include file="../MyPageNav.jsp"%>
	</div>
	<div class="justify-content-center text-center container">
	<h1>PointHistory</h1>
		<div class="row">
			<table class="table table-striped text-center">
				<tr>
					<th>슈퍼마리오님</th>
					<th>잔액 10,00p</th>
				</tr>
				<tr>
					<th>미사용 포인트 쿠폰</th>
					<th>1000P x 3</th>
				</tr>
				<tr>
					<th>총 잔액</th>
					<th>13,000P</th>
				</tr>
				<tr>
					<th>현재까지 받은 총Point</th>
					<th>20,000</th>
				</tr>
			</table>
		</div>
		<div class="row">
			<table class="table table-striped text-center">
				<tr>
					<th>적립+</th>
					<th>동남아 7일 버섯먹방 여행</th>
					<th>1000P</th>
				</tr>
				<tr>
					<th>사용+</th>
					<th>대한민국 5일 김치먹방 여행</th>
					<th>1000P</th>
				</tr>
				<tr>
					<th>적립+</th>
					<th>유럽 15일 치즈먹방 여행</th>
					<th>2000P</th>
				</tr>
			</table>
		</div>
	</div>
	<%@ include file="../PageUp.jsp" %>
</body>
<footer>
	<%@ include file="../Footer.jsp"%>
</footer>
</html>
