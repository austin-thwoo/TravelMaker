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
	<%@ include file="../Header.jsp"%>
	<div class="my-1">
		<%@ include file="../MainNav.jsp"%>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-3">
				<%@ include file="../MyPageNav.jsp" %>
			</div>
			<div class="col justify-content-center text-start">
				<c:choose>
					<c:when test="${state == 0}">
						<h1>내 게시글 목록</h1>
					</c:when>
					<c:when test="${state == 1}">
						<h1>내 후기 목록</h1>
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${state == 0}">
						<table class="table table-hover text-center">
							<thead>
								<tr class="table-secondary">
									<th>번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>등록일</th>
									<th>조회수</th>
									<th>추천수</th>
								</tr>
							</thead>
							<c:forEach items="${boardList}" var="i">
								<tr>
									<td>${i.getBNUMBER()}</td>
									<td><a href="#">${i.getBTITLE()}</a></td>
									<td>${i.getMNICK()}</td>
									<td>${fn:substring(i.getBDATE(),5,16)}</td>
									<td>${i.getBOARDVIEWS()}</td>
									<td>${i.getBOARDLIKE()}</td>
								</tr>
							</c:forEach>
						</table>
					</c:when>
					<c:when test="${state == 1}">
						<div class="row row-cols-1 row-cols-md-3 g-4">
							<c:forEach items="${boardList}" var="i">
								<div class="col">
									<div class="card">
										<img src="resources/boardFile/${i.getBIMG()}" class="card-img-top" alt="패키지이미지">
										<div class="card-body">
											<h5 class="card-title">${i.getBTITLE()}</h5>
											<a href="#" class="btn btn-primary">상세보기</a>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</c:when>
				</c:choose>

				<div class="row container-fluid mb-1">
					<div class="text-end">
						<button class="btn btn-primary btn-md">글쓰기</button>
					</div>
				</div>

				<div class="row container-fluid mb-1">
					<div class="input-group">
						<select name="" id="button-addon2"
							class="form-select-sm rounded-start">
							<option value="">전체</option>
							<option value="">제목</option>
							<option value="">내용</option>
							<option value="">작성자</option>
							<option value="">제목+내용</option>
						</select> <input type="text" name="" value="" class="form-control"
							aria-describedby="button-addon2">
						<button id="button-addon2" type="button"
							class="btn btn-outline-primary">검색</button>
					</div>
				</div>

				<div class="row container-fluid">
					<div class="d-flex justify-content-center">
						<nav aria-label="Page navigation example">
							<ul class="pagination">
								<li class="page-item"><a class="page-link" href="#"
									aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								</a></li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#"
									aria-label="Next"> <span aria-hidden="true">&raquo;</span>
								</a></li>
							</ul>
						</nav>
					</div>
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
