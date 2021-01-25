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
				<%@ include file="../MyPageNav.jsp"%>
			</div>
			<div class="col">
				<h2>쇼핑 리스트</h2>		
				<table class="table">
				  <thead>
				    <tr>
				      <th>상품사진</th>
				      <th>상품정보</th>
				      <th class="text-end">상품 메뉴</th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <th scope="row">꽤나 이쁜 사진</th>
				      <th> 	
				      	<table class="table table-borderless">
				      		<tr>
				      			<th>기간</th>
				      			<td>0000</td>
				      		</tr>
				      		<tr>
				      			<th>지역</th>
				      			<td>아르헨티나,뉴욕, 한국, 브라질, 조선민주주의인민공화국, 인도, 화성, 미래도시인천</td>
				      		</tr>
				      		<tr>
				      			<th>가격</th>
				      			<td>38,500원</td>
				      		</tr>
				      		<tr>
				      			<th>인원</th>
				      			<td>2명</td>
				      		</tr>
				      	</table>
					  </th>
				      <td class="text-end">
				      	<div class="btn-group-vertical">
					      	<button class="btn btn-outline-primary btn-sm">리뷰쓰러가기</button>
					      	<button class="btn btn-outline-primary btn-sm">환불하기 or 환불불가</button>
					      	<button class="btn btn-outline-primary btn-sm">상품 상세보기</button>
				      	</div>
				      </td>
				    </tr>
				  </tbody>
				</table>
				<div class="row justify-content-end text-end">
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








