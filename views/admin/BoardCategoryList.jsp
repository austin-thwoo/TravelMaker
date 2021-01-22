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
		<%@ include file="../MainNav.jsp" %>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-3">
				<%@ include file="../AdminNav.jsp" %>
			</div>
			<div class="col">
				<h2>BoardCategoriList</h2>		
				<table class="table">
				  <thead>
				    <tr>
				      <th>#</th>
				      <th>게시판 명</th>
				      <th class="text-end">상태</th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <th scope="row">1</th>
				      <td>자유게시판</td>
				      <td class="text-end">
				      	<button type="submit" class="btn btn-primary btn-md">수정</button>
				      	<button type="button" class="btn btn-primary btn-md">잠금</button>
				      </td>
				    </tr>
				    <tr>
				      <th scope="row">2</th>
				      <td>후기게시판</td>
				      <td class="text-end">
				      	<button type="submit" class="btn btn-primary btn-md">수정</button>
				      	<button type="button" class="btn btn-primary btn-md">잠금</button>
				      </td>
				    </tr>
				    <tr>
				      <th scope="row">3</th>
				      <td>ㅇㅇ게시판</td>
				      <td class="text-end">
				      	<button type="submit" class="btn btn-primary btn-md">수정</button>
				      	<button type="button" class="btn btn-primary btn-md">잠금</button>
				      </td>
				    </tr>
				  </tbody>
				</table>
				<div class="row justify-content-end text-end">
					<div class="input-group w-25">
						<input class="form-control" type="text"aria-describedby="button-addon">
						<button type="submit" class="btn btn-success" id="button-addon">등록하기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../PageUp.jsp" %>
</body>
<footer>
	<%@ include file="../Footer.jsp"%>
</footer>
</html>
