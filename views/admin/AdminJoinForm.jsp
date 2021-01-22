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
		<div class="row justify-content-center container-fluid">
			<h1 class="text-center">AdminJoin</h1>
			<form action="#" method="POST" onsubmit="">
				<div class="col-md-4 container-fluid">
					<label for="MID" class="form-label">아이디</label>
					<div class="input-group">
						<input type="text" class="form-control" id="MID" name="" aria-describedby="idCheck" onchange="" required>
						<div class="btn btn-outline-secondary btn-md" id="idCheck" onclick="">중복확인</div>
					</div>
					<span id="idCheckResult" class="d-block"></span>
					
					<label for="MPW" class="form-label">비밀번호</label>
					<div class="input-group">
						<input type="password" class="form-control" id="MPW" name="" onkeyup="" placeholder="영문, 숫자 포함 8~20자" required>
					</div>
					<span id="pwReg" class="d-block"></span>
					
					<label for="pwCheck" class="form-label">비밀번호 확인</label>
					<div class="input-group">
						<input type="password" class="form-control" id="pwCheck" onkeyup="" required>
					</div>
					<span id="pwCheckResult" class="d-block"></span>

					<label for="MNICK" class="form-label">닉네임</label>
					<div class="input-group">
						<input type="text" class="form-control" id="MNICK" name="" required>
					</div>
					<span id="nickCheckResult" class="d-block"></span>

					<label for="MNAME" class="form-label">이름</label>
					<div class="input-group">
						<input type="text" class="form-control" id="MNAME" name="" required>
					</div>

					<label class="form-label">성별 : </label>
					<div class="form-check form-check-inline">
  						<input class="form-check-input" type="radio" name="#" id="MGENDERM" value="">
  						<label class="form-check-label" for="MGENDERM">남</label>
					</div>
					<div class="form-check form-check-inline">
  						<input class="form-check-input" type="radio" name="#" id="MGENDERF" value="">
  						<label class="form-check-label" for="MGENDERF">여</label>
					</div> <br/>

					<label for="MBIRTH" class="form-label">생년월일</label>
					<div class="input-group">
						<input type="date" class="form-control" id="MBIRTH" name="" required>
					</div>

					<label for="MPHONE" class="form-label">연락처</label>
					<div class="input-group">
						<input type="text" class="form-control" id="MPHONE" name="" placeholder="'-'제외" required>
					</div>

					<div class="mt-3 text-center">
						<input type="hidden" name="MLEVEL" value="1">
						<button type="submit" class="btn btn-primary btn-md">회원가입</button>
						<input type="reset" class="btn btn-primary btn-md" value="다시작성">
					</div>
				</div>
			</form>
		</div>
	</div>
	<%@ include file="../PageUp.jsp" %>
</body>
<footer>
	<%@ include file="../Footer.jsp" %>
</footer>
</html>