<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="sysdate" class="java.util.Date" />
<fmt:formatDate value='${sysdate}' pattern='yyyyMMdd' var="sysdate"/>
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
				  	<c:forEach items="${shoppingList}" var="i">
					    <tr>
					      <th><img alt="상품 이미지" src="resources/packageFile/${i.getPIMG()}"></th>
					      <th> 	
					      	<table class="table table-borderless">
					      		<tr>
					      			<th>기간</th>
					      			<td>${fn:substring(i.getPSSTART(),0,10)} ~ ${fn:substring(i.getPSEND(),0,10)}</td>
					      		</tr>
					      		<tr>
					      			<th>지역</th>
					      			<td>${i.getPLONAME()}</td>
					      		</tr>
					      		<tr>
					      			<th>가격</th>
					      			<td>${i.getOADULT() * i.getPADULT() + i.getOCHILD() * i.getPCHILD() + i.getOINFANT() * i.getPINFANT()}</td>
					      		</tr>
					      		<tr>
					      			<th>인원</th>
					      			<td>${i.getOADULT() + i.getOCHILD() + i.getOINFANT()}명</td>
					      		</tr>
					      	</table>
						  </th>
					      <td class="text-end">
					      	<div class="btn-group-vertical">
						      	<button class="btn btn-outline-primary btn-sm">리뷰쓰러가기</button>
								<c:choose>
									<c:when test="${i.getPSSTART() > sysdate}">
										<button class="btn btn-outline-primary btn-sm">환불하기 or 환불불가</button>
									</c:when>
								</c:choose>
						      	<button class="btn btn-outline-primary btn-sm">상품 상세보기</button>
					      	</div>
					      </td>
					    </tr>
				  	</c:forEach>
				  </tbody>
				</table>
			</div>
		</div>
	</div>
	<%@ include file="../PageUp.jsp" %>
</body>
<footer>
	<%@ include file="../Footer.jsp"%>
</footer>
</html>








