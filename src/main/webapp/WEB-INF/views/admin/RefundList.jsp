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
			<div class="col justify-content-center">
				<h1>환불 신청 List</h1>
				<table border="1" bordercolor="blue" width ="100%" height="150" align = "center" >		
					<tr>
					 	<th>처리 현황</th>
					 	<th>신청인</th>
					 	<th>결제 수단</th>
					 	<th>결제 금액</th>
					 	<th>환불 사유</th>
					 	<th>결제 정보</th>
					 	<th></th>
					 </tr>
					 <tr>
					 	<th>처리 대기</th>
					 	<th>하현수</th>
					 	<th>카드 / 기업은행</th>
					 	<th>10,000</th>
					 	<th>탈주</th>
					 	<th><input type="button" value="상세보기"></th>
					 	<th><input type="button" value="처리완료"></th>
					 </tr>
					 <tr>
					 	<th>처리 완료</th>
					 	<th>하현수</th>
					 	<th>현 금</th>
					 	<th>10,000</th>
					 	<th>욕 설</th>
					 	<th><input type="button" value="상세보기"></th>
					 	<th><input type="button" value="처리완료"></th>
					 </tr>		 
				</table> 
				<br>
			</div>
		</div>
	</div>
	<%@ include file="../PageUp.jsp" %>
</body>
<footer>
	<%@ include file="../Footer.jsp" %>
</footer>
</html>
