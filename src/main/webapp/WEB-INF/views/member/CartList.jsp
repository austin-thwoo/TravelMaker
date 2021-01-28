<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	<div class="container">
		<div class="row">
			<div class="col-3">
				<%@ include file="../MyPageNav.jsp" %>
			</div>
			<div class="col container-fluid">
				<h2>장바구니 목록</h2>
				<form method="post">
					<table class="table table-striped">
						<tr>
							<td>이미지</td>
							<td>상품명</td>
							<td>여행기간</td>
							<td>상태</td>
							<td>결제</td>
							<td>삭제</td>
						</tr>
						<c:forEach items="${cartList}" var="i">
							<tr>
								<td>
									<img src="resources/packageFile/${i.getPIMG()}" id="cartimage" width="100" height="80" alt="패키지이미지" />
								</td>
								<td>${i.getPNAME()}</td>
								<td>${fn:substring(i.getPSSTART(),0,10)} - ${fn:substring(i.getPSEND(),0,10)}</td>
								
								<c:if test="${i.getOSTATE()==0}">
									<td>계약금필요</td>
									<td>
										<button class="btn btn-primary btn-sm">계약금결제</button>
										<button class="btn btn-primary btn-sm">전액결제</button>
									</td>
								</c:if>
								<c:if test="${i.getOSTATE()==1}">
									<td>계약금완료</td>
									<td>
										<button class="btn btn-primary btn-sm">잔금결제하기</button>
									</td>
								</c:if>
								<td>
									<button class="btn btn-primary btn-sm">삭제</button>
								</td>
							</tr>
						</c:forEach>
					</table>
				</form>
			</div>
		</div>
	</div>
	<%@ include file="../PageUp.jsp"%>
</body>
<footer>
	<%@ include file="../Footer.jsp"%>
</footer>
</html>