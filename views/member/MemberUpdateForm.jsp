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
				<%@ include file="../MyPageNav.jsp" %>
			</div>
			<div class="row col container justify-content-start">
				<div class="col-6">
					<form action="#" method="POST">
						<label for="MEMAIL" class="form-label">이메일</label>
						<div class="input-group">
							<input type="email" class="form-control" id="MEMAIL" name="" value="test@test.com" readonly="readonly">
						</div>
									
						<label for="MNAME" class="form-label">이름</label>
						<div class="input-group">
							<input type="text" class="form-control" id="MNAME" name="" value="누구인가?" readonly="readonly">
						</div>
									
						<label for="MGENDER" class="form-label">성별</label>
						<div class="input-group">
							<input type="text" class="form-control" id="MGENDER" name="" value="남" readonly="readonly">
						</div>
									
						<label for="MBIRTH" class="form-label">생년월일</label>
						<div class="input-group">
							<input type="date" class="form-control" id="MBIRTH" name="" value="2021-01-01" readonly="readonly">
						</div>
									
						<label for="MNICK" class="form-label">현재 닉네임</label>
						<div class="input-group">
							<input type="text" class="form-control" id="MNICK" name="" value="기존닉네임" readonly="readonly">
						</div>
									
						<label for="MNICK" class="form-label">변경할 닉네임</label>
						<div class="input-group">
							<input type="text" class="form-control" id="MNICK" name="" placeholder=" 변경할 닉네임을 입력">
						</div>
									
						<label for="MPHONE" class="form-label">현재 전화번호</label>
						<div class="input-group">
							<input type="text" class="form-control" id="MPHONE" name="" value="00000000000" readonly="readonly">
						</div>
									
						<label for="MPHONE" class="form-label">변경할 전화번호</label>
						<div class="input-group">
							<input type="text" class="form-control" id="MPHONE" name="" placeholder="변경할 전화번호입력">
						</div>
				
						<div class="mt-3 text-center">
							<button type="submit" class="btn btn-primary btn-md">수정</button>
						</div>
					</form>
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