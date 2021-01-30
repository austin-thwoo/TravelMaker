<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
		<div class="row">
			<div class="col-3">
				<%@ include file="../AdminNav.jsp" %>
			</div>
			<div class="col justify-content-center text-start">
				<h1>상품 목록</h1>
				<table class="table table-hover text-center">
					<thead>
						<tr class="table-secondary">
							<th>번호</th>
							<th>상품이미지</th>
							<th>상품이름</th>
							<th>수정</th>
						</tr>
					</thead>
					<c:forEach items="${packageList}" var="i">
						<tr>
							<td>${i.getPNUMBER()}</td>
							<td><img alt="패키지 이미지" src="resources/packageFile/${i.getPIMG()}"></td>
							<td><a href="goPackageDetail?PNUMBER=${i.getPNUMBER()}">${i.getPNAME()}</a></td>
							<td>
								<button class="btn btn-primary btn-sm" type="button" onclick="goPackageUpdateForm('${i.getPNUMBER()}')">수정</button>
							</td>
							</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<%@ include file="../PageUp.jsp" %>
</body>
<footer>
	<%@ include file="../Footer.jsp" %>
</footer>
<script>
	function goPackageUpdateForm(PNUMBER){
		location.href = "goPackageUpdateForm?PNUMBER="+PNUMBER;
	}
</script>
</html>