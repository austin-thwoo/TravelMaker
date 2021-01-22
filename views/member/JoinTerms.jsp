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
		<%@ include file="../MainNav.jsp"%>
	</div>
	<div class="container-fluid">
		<div class="row container-fluid">
			<h1 class="text-center">가입 약관</h1>
			<form action="#" method="POST">
				<div class="container-fluid text-center">
					<h5>회원가입 약관</h5>
					<div class="input-group justify-content-center">
						<textarea rows="20" cols="100" class="textarea" style="resize: none;" readonly>여행약관 내용 이지롱</textarea>
					</div>
					<div class="text-center">
						<input type="checkbox"> 회원가입 약관에 동의합니다.
					</div>
					
					<h5>개인정보 취급(처리) 방침</h5>
					<div class="input-group justify-content-center">
						<textarea rows="20" cols="100" class="textarea" style="resize: none;" readonly>개인정보 취급 처리 내용이지로옹</textarea>
					</div>
					<div class="text-center">
						<input type="checkbox"> 개인정보취급방침에 동의합니다.
					</div>
					
					<h5>해외여행표준약관</h5>
					<div class="input-group justify-content-center">
						<textarea rows="20" cols="100" class="textarea" style="resize: none;" readonly>해외여행표준약관 내용이지로옹</textarea>
					</div>
					<div class="text-center">
						<input type="checkbox"> 해외여행표준약관 동의합니다.
					</div>
					
					<h5>국내여행표준약관</h5>
					<div class="input-group justify-content-center">
						<textarea rows="20" cols="100" class="textarea" style="resize: none;" readonly>국내여행표준약관 내용이지로옹</textarea>
					</div>
					<div class="text-center">
						<input type="checkbox"> 국내여행표준약관 동의합니다.
					</div>
					
					<div class="mt-2 text-center mb-1">	
						<input type="reset" class="btn btn-primary btn-md" value="모두 동의함">
						<button type="submit" class="btn btn-primary btn-md">회원가입</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<%@ include file="../PageUp.jsp"%>
</body>
<footer>
	<%@ include file="../Footer.jsp"%>
</footer>
</html>
