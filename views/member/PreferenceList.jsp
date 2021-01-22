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
		<%@ include file="../MyPageNav.jsp" %>
	</div>
	<div class="justify-content-center text-center">
		<h1>우리가 가지고 있는 선호도 리스트</h1>
		<table border="1" bordercolor="blue" width ="500" height="150" align = "center" >		
			<tr> <th>예)소확행, 플렉스, 휴양지, 활동</th></tr>
		</table> 
		<br>
		
		<h1>회원이 보는 자신의 선호도 리스트</h1>
		<table border="1" bordercolor="red" width ="500" height="150" align = "center" >		
			<tr> <th>예)소확행</th></tr>
		</table>
		
		<br>
		선호도: <input type="" id="">
		<button onclick="()">추가 </button>
		<button onclick="()">삭제</button>
	</div>
	<%@ include file="../PageUp.jsp" %>
</body>
<footer>
	<%@ include file="../Footer.jsp" %>
</footer>
</html>