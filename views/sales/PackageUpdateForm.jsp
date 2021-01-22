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
		<h2>Package Update.jsp</h2>
		<form action="#" method="post" name="" enctype="multipart/form-data">
			패키지번호 : <input type="text" name="" value="" readonly> <br>
			패키지이름 : <input type="text" name=""> <br>
			패키지기간 : <input type="number" name=""> <br>
			패키지 메인사진 : <input type="file" name=""> <br>
			패키지 내용사진 : <input type="file" name=""> <br>
			어른 가격: <input type="text" name=""> <br>
			청소년 가격: <input type="text" name=""> <br>
			아동 가격: <input type="text" name=""> <br>
			최소인원 : <input type="number" name=""> <br>
			최대인원 : <input type="number" name=""> <br>
			<button onclick="">패키지 수정 완료</button>
		</form>
	</div>
	<%@ include file="../PageUp.jsp" %>
</body>
<footer>
	<%@ include file="../Footer.jsp" %>
</footer>
</html>