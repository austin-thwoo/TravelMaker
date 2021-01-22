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
	<%@ include file="../Header.jsp" %>
	<div class="my-1">
		<%@ include file="../MainNav.jsp" %>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-3">
				<%@ include file="../AdminNav.jsp" %>
			</div>
			<div class="col justify-content-center">
				<div class="row">
					<div class="col text-start">
						<h1>여행객 목록</h1>
					</div>
					<div class="col text-end">
						<div class="row">
			 				<div class="col text-end">
			 					<a href="#"><img src="resources/se2/img/excel.png" width="50" height="50"></a>
			 					<a href="#"><img src="resources/se2/img/printer.png" width="50" height="50"></a>
			 				</div>
			 			</div>
					</div>
				</div>	
				<table class="table table-striped text-center">
					<tr>
						<th>패키지 넘버</th>
						<th>상품명</th>
						<th>여행기간</th>
						<th>이름</th>
						<th>영문이름</th>
						<th>생년월일</th>
						<th>이메일</th>
						<th>연락처</th>
					</tr>
					<tr>
						<td>미국001</td>
						<td>우주여행</td>
						<td>21.01.25-22.01.25</td>
						<td>임형준</td>
						<td>Lim HJ</td>
						<td>1999.09.09</td>
						<td>aa@aa.com</td>
						<td>00000000000</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<%@ include file="../PageUp.jsp" %>
</body>
<footer>
	<%@ include file="../Footer.jsp" %>
</footer>
</html>