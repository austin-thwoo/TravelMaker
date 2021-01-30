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
		<h2>동남아 여행의 상세정보</h2>
		<div class="container">
			<div class="row">
				<div class="col-8">
					<img src="" border="0" alt="패키지 이미지">
				</div>
				<div class="col">
					<table class="table table-borderless w-75">
						<tr>
							<th>패키지 번호 : </th>
							<td>${packageDetail.getPNUMBER()}</td>
						</tr>
						<tr>
							<th>패키지 이름 : </th>
							<td>${packageDetail.getPNAME()}</td>
						</tr>
						<tr>
							<th>여행기간 : </th>
							<td>${packageDetail.getPPERIOD()-1}박 ${packageDetail.getPPERIOD()}일</td>
						</tr>
						<tr>
							<th>최소인원 : </th>
							<td>${packageDetail.getPMIN()}</td>
						</tr>
						<tr>
							<th>최대인원 : </th>
							<td>${packageDetail.getPMAX()}</td>
						</tr>
						<tr>
							<th>성인요금 : </th>
							<td>${packageDetail.getPADULT()}원</td>
						</tr>
						<tr>
							<th>아동요금 : </th>
							<td>${packageDetail.getPCHILD()}원</td>
						</tr>
						<tr>
							<th>유아요금 : </th>
							<td>${packageDetail.getPINFANT()}원</td>
						</tr>
					</table>
					<div class="input-group">
						<select class="form-control" name="PSSTART">
							<option>옵션 선택</option>
							<c:forEach items="${packageSchedule}" var="i" varStatus="vs">
								<option value="${i.getPSSTART()}">옵션${vs.index+1} : ${fn:substring(i.getPSSTART(),0,10)} ~ ${fn:substring(i.getPSEND(),0,10)}</option>
							</c:forEach>
						</select>
					</div>
					<button class="btn btn-primary btn-md">장바구니</button>
					<button class="btn btn-primary btn-md">결제하기</button>
				</div>
			</div>
		</div>
		<div class="row">
			${packageDetail.PINFO}
			<img src="" alt="상세정보 이미지">
		</div>
		<div class="row">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>작성자</th>
						<th>점수</th>
						<th>내용</th>
						<th>작성일자</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${reviewList}" var="i">
						<tr>
							<td>${i.getMNICK()}</td>
							<td>${i.getRVSCORE()}</td>
							<td>${i.getRVCONTENT()}</td>
							<td>${i.getRVDATE()}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<%@ include file="../PageUp.jsp" %>
</body>
<footer>
	<%@ include file="../Footer.jsp" %>
</footer>
</html>