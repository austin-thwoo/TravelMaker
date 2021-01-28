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
<title>Main</title>
</head>
<body>
	<%@ include file="Header.jsp"%>
	<div class="my-1">
		<%@ include file="MainNav.jsp" %>
	</div>
	<div id="bestList" class="carousel slide h-50 mb-5" data-bs-ride="carousel">
		<h6>베스트 상품 목록</h6>
		<ol class="carousel-indicators">
			<li data-bs-target="#bestList" data-bs-slide-to="0" class="active"></li>
			<li data-bs-target="#bestList" data-bs-slide-to="1"></li>
			<li data-bs-target="#bestList" data-bs-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
					<rect width="100%" height="100%" fill="#777" />
				</svg>
				<div class="container">
					<div class="carousel-caption text-start">
						<h1>상품 명</h1>
						<p>상품 정보</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">보러가기</a>
						</p>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
					<rect width="100%" height="100%" fill="#777" />
				</svg>
				<div class="container">
					<div class="carousel-caption">
						<h1>상품 명</h1>
						<p>상품 정보</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">보러가기</a>
						</p>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
					<rect width="100%" height="100%" fill="#777" />
				</svg>
				<div class="container">
					<div class="carousel-caption text-end">
						<h1>상품 명</h1>
						<p>상품 정보</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">보러가기</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#bestList" role="button" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="visually-hidden">Previous</span>
		</a>
		<a class="carousel-control-next" href="#bestList" role="button" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="visually-hidden">Next</span>
		</a>
	</div>

	<div id="preferenceList" class="carousel slide h-25 mb-5" data-bs-ride="carousel">
		<h6>선호 태그별 추천 목록</h6>
		<ol class="carousel-indicators">
			<li data-bs-target="#preferenceList" data-bs-slide-to="0" class="active"></li>
			<li data-bs-target="#preferenceList" data-bs-slide-to="1"></li>
			<li data-bs-target="#preferenceList" data-bs-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
					<rect width="100%" height="100%" fill="#777" />
				</svg>
				<div class="container">
					<div class="carousel-caption text-start">
						<h1>상품 명</h1>
						<p>상품 정보</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">보러가기</a>
						</p>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
					<rect width="100%" height="100%" fill="#777" />
				</svg>
				<div class="container">
					<div class="carousel-caption">
						<h1>상품 명</h1>
						<p>상품 정보</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">보러가기</a>
						</p>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
					<rect width="100%" height="100%" fill="#777" />
				</svg>
				<div class="container">
					<div class="carousel-caption text-end">
						<h1>상품 명</h1>
						<p>상품 정보</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">보러가기</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#preferenceList" role="button" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="visually-hidden">Previous</span>
		</a>
		<a class="carousel-control-next" href="#preferenceList" role="button" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="visually-hidden">Next</span>
		</a>
	</div>

	<div id="likeList" class="carousel slide h-25 mb-5" data-bs-ride="carousel">
		<h6>좋아요 한 상품별 추천 목록</h6>
		<ol class="carousel-indicators">
			<li data-bs-target="#likeList" data-bs-slide-to="0" class="active"></li>
			<li data-bs-target="#likeList" data-bs-slide-to="1"></li>
			<li data-bs-target="#likeList" data-bs-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
					<rect width="100%" height="100%" fill="#777" />
				</svg>
				<div class="container">
					<div class="carousel-caption text-start">
						<h1>상품 명</h1>
						<p>상품 정보</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">보러가기</a>
						</p>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
					<rect width="100%" height="100%" fill="#777" />
				</svg>
				<div class="container">
					<div class="carousel-caption">
						<h1>상품 명</h1>
						<p>상품 정보</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">보러가기</a>
						</p>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
					<rect width="100%" height="100%" fill="#777" />
				</svg>
				<div class="container">
					<div class="carousel-caption text-end">
						<h1>상품 명</h1>
						<p>상품 정보</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">보러가기</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#likeList" role="button" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="visually-hidden">Previous</span>
		</a>
		<a class="carousel-control-next" href="#likeList" role="button" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="visually-hidden">Next</span>
		</a>
	</div>

	<div id="orderList" class="carousel slide h-25 mb-5" data-bs-ride="carousel">
		<h6>구매한 상품별 추천 목록</h6>
		<ol class="carousel-indicators">
			<li data-bs-target="#orderList" data-bs-slide-to="0" class="active"></li>
			<li data-bs-target="#orderList" data-bs-slide-to="1"></li>
			<li data-bs-target="#orderList" data-bs-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
					<rect width="100%" height="100%" fill="#777" />
				</svg>
				<div class="container">
					<div class="carousel-caption text-start">
						<h1>상품 명</h1>
						<p>상품 정보</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">보러가기</a>
						</p>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
					<rect width="100%" height="100%" fill="#777" />
				</svg>
				<div class="container">
					<div class="carousel-caption">
						<h1>상품 명</h1>
						<p>상품 정보</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">보러가기</a>
						</p>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
					<rect width="100%" height="100%" fill="#777" />
				</svg>

				<div class="container">
					<div class="carousel-caption text-end">
						<h1>상품 명</h1>
						<p>상품 정보</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">보러가기</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#orderList" role="button" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="visually-hidden">Previous</span>
		</a>
		<a class="carousel-control-next" href="#orderList" role="button" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="visually-hidden">Next</span>
		</a>
	</div>
	<h6>후기 목록</h6>
	<div class="row row-cols-1 row-cols-md-3 g-4">
	  <div class="col">
	    <div class="card">
	      <img src="..." class="card-img-top" alt="...">
	      <div class="card-body">
	        <h5 class="card-title">카드 제목</h5>
	        <p class="card-text">여기는 간단한 정보를 적는다. 여기는 길게 길게  길게 길게 길게 길게 길게  길게 길게 길게 길게 길게  길게 길게 길게 적으면 이렇게 늘어난다</p>
	      	<a href="#" class="btn btn-primary">상세 이동</a>
	      </div>
	    </div>
	  </div>
	  <div class="col">
	    <div class="card">
	      <img src="..." class="card-img-top" alt="...">
	      <div class="card-body">
	        <h5 class="card-title">카드 제목</h5>
	        <p class="card-text">여기는 간단한 정보를 적는다.</p>
	        <a href="#" class="btn btn-primary">상세 이동</a>
	      </div>
	    </div>
	  </div>
	  <div class="col">
	    <div class="card">
	      <img src="..." class="card-img-top" alt="...">
	      <div class="card-body">
	        <h5 class="card-title">카드 제목</h5>
	        <p class="card-text">여기는 간단한 정보를 적는다.</p>
	        <a href="#" class="btn btn-primary">상세 이동</a>
	      </div>
	    </div>
	  </div>
	  <div class="col">
	    <div class="card">
	      <img src="..." class="card-img-top" alt="...">
	      <div class="card-body">
	        <h5 class="card-title">카드 제목</h5>
	        <p class="card-text">여기는 간단한 정보를 적는다.</p>
	        <a href="#" class="btn btn-primary">상세 이동</a>
	      </div>
	    </div>
	  </div>
	  <div class="col">
	    <div class="card">
	      <img src="..." class="card-img-top" alt="...">
	      <div class="card-body">
	        <h5 class="card-title">카드 제목</h5>
	        <p class="card-text">여기는 간단한 정보를 적는다.</p>
	        <a href="#" class="btn btn-primary">상세 이동</a>
	      </div>
	    </div>
	  </div>
	  <div class="col">
	    <div class="card">
	      <img src="..." class="card-img-top" alt="...">
	      <div class="card-body">
	        <h5 class="card-title">카드 제목</h5>
	        <p class="card-text">여기는 간단한 정보를 적는다.</p>
	        <a href="#" class="btn btn-primary">상세 이동</a>
	      </div>
	    </div>
	  </div>
	</div>
	<%@ include file="PageUp.jsp" %>
</body>
<footer>
	<%@ include file="Footer.jsp"%>
</footer>
</html>
