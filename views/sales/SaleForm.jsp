<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<div class="row justify-content-center">
		<div class="container col-6">
		<h2>예약하기</h2>
		<form method="post">
			<table class="table table-striped">
				<tr>
					<td>구분</td>
					<td>상품명</td>
					<td>여행기간</td>
					<td>성인</td>
					<td>아동</td>
					<td>유아</td>
					<td>가격</td>
					<td>삭제</td>
				</tr>
				<tr>
					<td>동남아</td>
					<td>보라카이</td>
					<td>2021.03.15 - 2021.03.27</td>
					<!-- 성인 -->
					<td>2</td>
					<!-- 청소년 -->
					<td>0</td>
					<!-- 유아 -->
					<td>0</td>
					<!-- 총금액 -->
					<td>5,000,000</td>
					<td><button class="btn btn-primary btn-sm">삭제</button></td>
				</tr>
				<tr>
					<td colspan="11" style="text-align: center;">총금액: 5,000,000원</td>
				</tr>
			</table>
		</form>
		<div class="col container-fluid">
			<h2>사용자 정보 입력</h2>
			<p>
				*표시는 필수 입력사항입니다.<br /> ※ 여행 대표자의 이메일 주소와 상담가능한 연락처를 입력해주세요. 자세한
				사항은 예약확정 후 요청예정이며, 정보통신망법에 의거 고객의 주민등록번호를 수집하지 않습니다.
			</p>
			<div>
				<form method="post">
					<table class="table table-striped">
						<tr>
							<td>대표자 이름</td>
							<!-- 필수입력  -->
							<td>
								<input type="text" class="form-control" id="" name="" required>
							</td>
							<td>대표자 휴대폰</td>
							<!-- 필수입력  -->
							<td>
								<input type="text" class="form-control" id="" name="" placeholder="'-'제외" required>
							</td>
							<td>대표자 이메일</td>
							<!-- 필수입력  -->
							<td>
								<input type="email" class="form-control" id="" name="" placeholder="@" required>
							</td>
						</tr>
					</table>
				</form>
			</div>
			<div>
				<form method="post">
					<table class="table table-striped">
						<tr>
							<td>여행자 정보</td>
							<td>한글이름/여권번호</td>
							<td>여권상의 영문성/만료일</td>
							<td>여권상의 영문이름/발행처</td>
							<td>성별/국적</td>
							<td>나이/여권상의 생년월일</td>
						</tr>
						<tr>
							<td>1</td>
							<td>
								<input type="text" class="form-control" id="" name="" placeholder="홍길동" required>
								<input type="text" class="form-control" id="" name="" placeholder="여권번호" required>
							</td>
							<td>
								<input type="text" class="form-control" id="" name="" placeholder="영문 성 ex) HONG" required>
								<input type="text" class="form-control" id="" name="" placeholder="여권만료일" required>
							</td>
							<td>
								<input type="text" class="form-control" id="" name="" placeholder="영문 이름 ex) KILDONG " required>
								<input type="text" class="form-control" id="" name="" placeholder="발행 처" required>
							</td>
							<td>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="#" id="MGENDERM" value="">
									<label class="form-check-label" for="MGENDERM">남</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="#" id="MGENDERF" value="">
									<label class="form-check-label" for="MGENDERF">여</label>
								</div>
								<input type="text" class="form-control" id="" name="" placeholder="국적" required>
							</td>
							<td>
								<input type="number" class="form-control" id="" name="" placeholder="나이" required>
								<input type="date" class="form-control" id="" name="" placeholder="생년월일" required>
							</td>
							</tr>
						</table>
						<button class="btn btn-primary btn-rt" id="">인원추가</button>
					</form>
				</div>
				<div class="container-fluid">
					<div class="row container-fluid">
						<h1 class="text-center">여행 약관</h1>
						<form action="#" method="POST">
							<div class="container-fluid text-center">
								<h5>해외여행 표준약관 약관</h5>
								<div class="input-group justify-content-center">
									<textarea rows="20" cols="100" class="textarea" style="resize: none;" readonly>해외여행 표준약관 내용 이지롱</textarea>
								</div>
								<div class="text-center">
									<input type="checkbox"> 해외여행 표준약관 동의합니다.
								</div>
								<h5>국내여행표준약관</h5>
								<div class="input-group justify-content-center">
									<textarea rows="20" cols="100" class="textarea" style="resize: none;" readonly>국내여행표준약관 내용이지로옹</textarea>
								</div>
								<div class="text-center">
									<input type="checkbox"> 국내여행표준약관 동의합니다.
								</div>
								<h5>개인정보 이용약관</h5>
								<div class="input-group justify-content-center">
									<textarea rows="20" cols="100" class="textarea" style="resize: none;" readonly>개인정보 이용약관</textarea>
								</div>
								<div class="text-center">
									<input type="checkbox"> 개인정보 이용약관 동의합니다.
								</div>
								<div class="mt-2 text-center mb-1">
									<input type="reset" class="btn btn-primary btn-md" value="모두 동의함">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="row col container-fluid justify-content-center">
				<div class="col-6">
					<form action="searchPassword" method="get" name="searchPasswordForm">
						<label class="form-label" for="MPW">※ 예약확인을 위한 비밀번호를 입력해주세요.</label>
						<div class="input-group mb-1">
							<input class="form-control" type="password" aria-describedby="MPW" name="">
							<button class="btn btn-primary btn-md" id="">확인</button>
						</div>
					</form>
				</div>
			</div>
			<div class="row container justify-content-center">
				<div class="col-6 text-center d-grid">
					<button class="btn btn-outline-primary btn-md" id="">계약금 결제</button>
					<button class="btn btn-outline-primary btn-md" id="">전액 결제</button>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../PageUp.jsp"%>
</body>
<footer>
	<%@ include file="../Footer.jsp"%>
</footer>
</html>