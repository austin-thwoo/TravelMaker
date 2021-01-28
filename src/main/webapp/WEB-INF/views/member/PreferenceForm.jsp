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
<header>
	
</header>
<body>
	<%@ include file="../Header.jsp" %>
	<div class="my-1">
		<%@ include file="../MainNav.jsp" %>
	</div>
	<div class="row contaniner justify-content-center">
		<div class="col-5 text-start">
			<h1>선호도 조사</h1>
			<form name="preferenceForm">
				<div class="list-group">
				  <label class="list-group-item">
				    <input class="form-check-input me-1" type="checkbox" value="">
				    	활동적
				  </label>
				  <label class="list-group-item">
				    <input class="form-check-input me-1" type="checkbox" value="">
				    	소확행
				  </label>
				  <label class="list-group-item">
				    <input class="form-check-input me-1" type="checkbox" value="">
				    	휴양
				  </label>
				  <label class="list-group-item">
				    <input class="form-check-input me-1" type="checkbox" value="">
				    	플렉스
				  </label>
				</div>
				<div class="mt-1 text-end">
					<button class="btn btn-primary btn-md">저장</button>
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