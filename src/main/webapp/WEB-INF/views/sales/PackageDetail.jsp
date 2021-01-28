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
		<h2>동남아 여행의 상세정보</h2>
		<div class="container">
			<div class="row">
				<div class="col-8">
					<img src="" border="0" alt="패키지 이미지">
				</div>
				<div class="col">
					<table class="table table-borderless w-75">
						<tr>
							<th>패키지 번호 : </th>
							<td>1</td>
						</tr>
						<tr>
							<th>패키지 이름 : </th>
							<td>동남아 여행</td>
						</tr>
						<tr>
							<th>여행기간 : </th>
							<td>6박 7일</td>
						</tr>
						<tr>
							<th>최소인원 : </th>
							<td>5</td>
						</tr>
						<tr>
							<th>최대인원 : </th>
							<td>10</td>
						</tr>
						<tr>
							<th>성인요금 : </th>
							<td>80000원</td>
						</tr>
						<tr>
							<th>아동요금 : </th>
							<td>70000원</td>
						</tr>
						<tr>
							<th>유아요금 : </th>
							<td>50000원</td>
						</tr>
					</table>
					<div class="input-group">
						<select class="form-control">
							<option>옵션 선택</option>
							<option>옵션1 : 출발일자 ~ 종료일자</option>
							<option>옵션2 : 출발일자 ~ 종료일자</option>
							<option>옵션3 : 출발일자 ~ 종료일자</option>
							<option>옵션4 : 출발일자 ~ 종료일자</option>
							<option>옵션5 : 출발일자 ~ 종료일자</option>
						</select>
					</div>
					<a href="">장바구니</a>
					<a href="">결제하기</a>
				</div>
			</div>
		</div>
		<div class="row">
			<img src="" alt="상세정보 이미지">
		</div>
	</div>
	<%@ include file="../PageUp.jsp" %>
</body>
<footer>
	<%@ include file="../Footer.jsp" %>
</footer>
</html>