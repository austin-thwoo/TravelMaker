<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">
	<ul class="list-group mb-0 py-3 pt-md-1 mt-5">
		<li class="list-group-item mb-1">
			<button class="btn d-inline-flex align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#getting-member-collapse" aria-expanded="false">
        		Admin
      		</button>
      		<div class="collapse" id="getting-member-collapse">
				<ul class="list-unstyled fw-normal pb-1 small">
					<li><a class="dropdown-item" href="adminPage?MID=${sessionScope.loginInfo.getMID()}">할 일 목록</a></li>
					<li><a class="dropdown-item" href="#">회원 목록</a></li>
					<li><a class="dropdown-item" href="#">관리자 목록</a></li>
				</ul>
			</div>
		</li>
		<li class="list-group-item mb-1">
			<button class="btn d-inline-flex align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#getting-board-collapse" aria-expanded="false">
        		Board
      		</button>
      		<div class="collapse" id="getting-board-collapse">
				<ul class="list-unstyled fw-normal pb-1 small">
					<li><a class="dropdown-item" href="goBoardCategoryList">게시판 카테고리 목록</a></li>
					<li><a class="dropdown-item" href="goComplaintBoardList">신고 게시글 목록</a></li>
					<li><a class="dropdown-item" href="goComplaintCommentsList">신고 댓글 목록</a></li>
					<li><a class="dropdown-item" href="#">신고 대댓글 목록</a></li>
				</ul>
			</div>
		</li>
		<li class="list-group-item mb-1">
			<button class="btn d-inline-flex align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#getting-sales-collapse" aria-expanded="false">
        		Sales
      		</button>
      		<div class="collapse" id="getting-sales-collapse">
				<ul class="list-unstyled fw-normal pb-1 small">
					<li><a class="dropdown-item" href="goCategoryList">상품 카테고리 목록</a></li>
					<li><a class="dropdown-item" href="goPackageInsertForm">상품 등록</a></li>
					<li><a class="dropdown-item" href="#">판매 관리</a></li>
					<li><a class="dropdown-item" href="goTravelerList">여행객 목록</a></li>
				</ul>
			</div>
		</li>
	</ul>
</div>