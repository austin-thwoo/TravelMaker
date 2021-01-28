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
	<div class="container">
		<div class="row">
			<div class="col-3">
				<%@ include file="../MyPageNav.jsp"%>
			</div>
			<div class="col-6 container-fluid">
				<h2>예약정보</h2>
				<form method="post">
					<table class="table table-striped">
						<tr>
							<td>상품명</td>
							<td>다낭/호이안/바나산 5일 #노쇼핑#스페셜특전#가이드경비포함 #가족맞춤여행 #하얏트리젠시/쉐라톤그랜드</td>
						</tr>
						<tr>
							<td>여행기간</td>
							<td>2021.07.01~2021.07.05 / 3박 5일</td>
						</tr>
						<tr>
							<td>항공편</td>
							<td>한국출발 : 2021.07.01 (목) 18:40 / 항공편 : KE0463 <br />한국도착 :
								2021.07.05 (월) 05:25 / 항공편 : KE0464
							</td>
						</tr>
					</table>
				</form>
				<hr />
				<div class="col container-fluid">
					<h2>예약자 정보</h2>
					<p>
						*표시는 필수 입력사항입니다.<br/>
						※ 여행 대표자의 이메일 주소와 상담가능한 연락처를 입력해주세요. 자세한 사항은 예약확정 후 요청예정이며, 정보통신망법에 의거 고객의 주민등록번호를 수집하지 않습니다.
					</p>
					<div>
						<form method="post">
							<table class="table table-striped">
								<tr>
									<td>
										<input type="text" class="form-control" id="" name="" placeholder="한글성명  ex)홍길동" required>
										<input type="text" class="form-control" id="" name="" placeholder="법정생년월일  ex)19911223" required>
										<input type="text" class="form-control" id="" name="" placeholder="이메일 주소 ex) Hong@naver.com" required>
										<input type="email" class="form-control" id="" name="" placeholder="휴대폰 번호 ex) 01012345678" required>
									</td>
								</tr>
							</table>
						</form>
					</div>
					<hr />
					<h2>인원 정보</h2>
					<form method="post">
						<table class="table table-striped">
							<tr>
								<td>성인</td>
								<td>아동</td>
								<td>유아</td>

							</tr>
							<tr>
								<!-- 성인 -->
								<td>
									<a class="text-decoration-none" href="?pnumber=${cart.pnumber }">
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
  											<path d="M7.247 11.14L2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z" />
										</svg>
									</a>
									1
									<a class="text-decoration-none" href="javascript:checkQty('${cart.pnumber }',${cart.qty })">
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-up-fill" viewBox="0 0 16 16">
  											<path d="M7.247 4.86l-4.796 5.481c-.566.647-.106 1.659.753 1.659h9.592a1 1 0 0 0 .753-1.659l-4.796-5.48a1 1 0 0 0-1.506 0z" />
										</svg>
									</a>
								</td>
								<!-- 아동 -->
								<td>
									<a class="text-decoration-none" href="?pnumber=${cart.pnumber }">
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
  											<path d="M7.247 11.14L2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z" />
										</svg>
									</a>
									5
									<a class="text-decoration-none" href="javascript:checkQty('${cart.pnumber }',${cart.qty })">
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-up-fill" viewBox="0 0 16 16">
  											<path d="M7.247 4.86l-4.796 5.481c-.566.647-.106 1.659.753 1.659h9.592a1 1 0 0 0 .753-1.659l-4.796-5.48a1 1 0 0 0-1.506 0z" />
										</svg>
									</a>
								</td>
								<!-- 유아 -->
								<td>
									<a class="text-decoration-none" href="?pnumber=${cart.pnumber }">
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
  											<path d="M7.247 11.14L2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z" />
										</svg>
									</a>
									3
									<a class="text-decoration-none" href="javascript:checkQty('${cart.pnumber }',${cart.qty })">
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-up-fill" viewBox="0 0 16 16">
  											<path d="M7.247 4.86l-4.796 5.481c-.566.647-.106 1.659.753 1.659h9.592a1 1 0 0 0 .753-1.659l-4.796-5.48a1 1 0 0 0-1.506 0z" />
										</svg>
									</a>
								</td>
							</tr>
							<tr>
								<td>9,269,900원</td>
								<td>3,320,000원</td>
								<td>1,000,000원</td>
							</tr>
						</table>
					</form>
					<hr/>
					<div>
						<h2>여행자 정보</h2>
						<form method="post">
							<h5>성인1</h5>
							<table class="table table-striped">
								<tr>
									<td>성명(한글)</td>
									<td>
										<input type="text" class="form-control" id="" name="" placeholder="한글성명  ex)홍길동" required>
									</td>
									<td colspan="2"></td>
								</tr>
								<tr>
									<td>생년월일</td>
									<td>
										<input type="text" class="form-control" id="" name="" placeholder="법정생년월일  ex)19911223" required>
									</td>
									<td>성별</td>
									<td>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="#" id="MGENDERM" value="">
											<label class="form-check-label" for="MGENDERM">남</label>
										</div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="#" id="MGENDERF" value="">
										<label class="form-check-label" for="MGENDERF">여</label>
										</div>
									</td>
								</tr>
								<tr>
									<td>영문 성</td>
									<td>
										<input type="text" class="form-control" id="" name="" placeholder="영문 성 ex) HONG" required>
									</td>
									<td>영문이름</td>
									<td>
										<input type="text" class="form-control" id="" name="" placeholder="영문 이름 ex) KILDONG " required>
									</td>
								</tr>
								<tr>
									<td>휴대폰 번호</td>
									<td>
										<input type="email" class="form-control" id="" name="" placeholder="휴대폰 번호 ex) 01012345678" required>
									</td>
									<td>이메일 주소</td>
									<td>
										<input type="text" class="form-control" id="" name="" placeholder="이메일 주소 ex) Hong@naver.com" required>
									</td>
								</tr>
							</table>
							<h5>아동1</h5>
							<table class="table table-striped">
								<tr>
									<td>성명(한글)</td>
									<td>
										<input type="text" class="form-control" id="" name="" placeholder="한글성명  ex)홍길동" required>
									</td>
									<td colspan="2"></td>
								</tr>
								<tr>
									<td>생년월일</td>
									<td>
										<input type="text" class="form-control" id="" name="" placeholder="법정생년월일  ex)19911223" required>
									</td>
									<td>성별</td>
									<td>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="#" id="MGENDERM" value="">
											<label class="form-check-label" for="MGENDERM">남</label>
										</div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="#" id="MGENDERF" value="">
											<label class="form-check-label" for="MGENDERF">여</label>
										</div>
									</td>
								</tr>
								<tr>
									<td>영문 성</td>
									<td>
										<input type="text" class="form-control" id="" name="" placeholder="영문 성 ex) HONG" required>
									</td>
									<td>영문이름</td>
									<td>
										<input type="text" class="form-control" id="" name="" placeholder="영문 이름 ex) KILDONG " required>
									</td>
								</tr>
							</table>
							<h5>유아1</h5>
							<table class="table table-striped">
								<tr>
									<td>성명(한글)</td>
									<td>
										<input type="text" class="form-control" id="" name="" placeholder="한글성명  ex)홍길동" required>
									</td>
									<td colspan="2"></td>
								</tr>
								<tr>
									<td>생년월일</td>
									<td>
										<input type="text" class="form-control" id="" name="" placeholder="법정생년월일  ex)19911223" required>
									</td>
									<td>성별</td>
									<td>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="#" id="MGENDERM" value="">
											<label class="form-check-label" for="MGENDERM">남</label>
										</div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="#" id="MGENDERF" value="">
											<label class="form-check-label" for="MGENDERF">여</label>
										</div>
									</td>
								</tr>
								<tr>
									<td>영문 성</td>
									<td>
										<input type="text" class="form-control" id="" name="" placeholder="영문 성 ex) HONG" required>
									</td>
									<td>영문이름</td>
									<td>
										<input type="text" class="form-control" id="" name="" placeholder="영문 이름 ex) KILDONG " required>
									</td>
								</tr>
							</table>
						</form>
					</div>
					<hr />
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
					<hr />
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
				<hr />
				<div class="row col container-fluid justify-content-center">
					<button class="btn btn-primary btn-md" id="">예약하기</button>
				</div>
			</div>
			<div class="col-3">
				<div class="border p-1">
					<h2>상품 결제 정보</h2>
					<table>
						<tr>
							<td>최종결제금액</td>
							<td>성인 1</td>
							<td>아동 0</td>
							<td>유아 3</td>
						</tr>
						<tr>
							<td colspan="4">계약금 69,900원</td>
						</tr>
						<tr>
							<td colspan="4">총 액 12,269,900원</td>
						</tr>

						<tr>
							<td colspan="4">유류할증료&제세공과금 포함</td>
						</tr>
						<tr>
							<td colspan="2"><button class="btn btn-primary btn-md" id="">계약금결제</button></td>
							<td colspan="2"><button class="btn btn-primary btn-md" id="">전액결제</button></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../PageUp.jsp"%>
</body>
<footer>
	<%@ include file="../Footer.jsp"%>
</footer>
<script>
	function checkQty(pnumber, qty) {
		if (qty != 1) {
			location.href = "?pnumber=" + pnumber
		}
	}
</script>

<script>
	$(function() {
		var offset = $("#sidebar").offset();
		var topPadding = 300;
		$(window).scroll(function() {
			if ($(window).scrollTop() > offset.top) {
				$("#sidebar").stop().animate({
					marginTop : $(window).scrollTop() - offset.top + topPadding
				});
			} else {
				$("#sidebar").stop().animate({
					marginTop : 0
				});
			}
			;
		});
	});
</script>
</html>