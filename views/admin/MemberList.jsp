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
		<%@ include file="../AdminNav.jsp" %>
	</div>
	<div class="justify-content-center text-center">
		<h1>MemberList</h1>
		<table class="table table-striped">
			<tr>
				<th>아이디</th>
				<th>닉네임</th>
				<th>이름</th>
				<th>연락처</th>
				<th>성별</th>
				<th>상태</th>
				<th>가입일</th>
				<th>신고된 게시글 수</th>
				<th>신고된 댓글 수</th>
				<th>정지 횟수</th>
				<th>정지</th>
			</tr>
			<tr>
				<td><a href="#">testID</a></td>
				<td>testNick</td>
				<td>테스트</td>
				<td>00000000000</td>
				<td>남</td>
				<td>활동</td>
				<td>2021-01-20 00:00:00</td>
				<td><a href="#">6</a></td>
				<td><a href="#">15</a></td>
				<td>0</td>
				<td><button class="btn btn-primary btn-md">정지</button></td>
			</tr>
		</table>
	</div>
	<%@ include file="../PageUp.jsp" %>
</body>
<footer>
	<%@ include file="../Footer.jsp" %>
</footer>
</html>