<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">
	<ul class="list-group mb-0 py-3 pt-md-1 mt-5">
		<li class="list-group-item mb-1">
			<button class="btn d-inline-flex align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#getting-member-collapse" aria-expanded="false">
        		Member
      		</button>
      		<div class="collapse" id="getting-member-collapse">
				<ul class="list-unstyled fw-normal pb-1 small">
					<li><a class="dropdown-item" href="#">내정보 보기</a></li>
					<li><a class="dropdown-item" href="#">내정보 수정</a></li>
					<li><a class="dropdown-item" href="#">내 비밀번호 수정</a></li>
					<li><a class="dropdown-item" href="#">탈퇴 하기</a></li>
					<li><a class="dropdown-item" href="goPointHistory?MID=${sessionScope.loginInfo.getMID()}">내 포인트</a></li>
				</ul>
			</div>
		</li>
		<li class="list-group-item mb-1">
			<button class="btn d-inline-flex align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#getting-board-collapse" aria-expanded="false">
        		Board
      		</button>
      		<div class="collapse" id="getting-board-collapse">
				<ul class="list-unstyled fw-normal pb-1 small">
					<li><a class="dropdown-item" href="#"></a></li>
					<li><a class="dropdown-item" href="#">내 리뷰보기</a></li>
					<li><a class="dropdown-item" href="myBoardList?MID=${sessionScope.loginInfo.getMID()}">내 게시글 목록</a></li>
					<li><a class="dropdown-item" href="#">내 후기 목록</a></li>
				</ul>
			</div>
		</li>
		<li class="list-group-item mb-1">
			<button class="btn d-inline-flex align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#getting-sales-collapse" aria-expanded="false">
        		Sales
      		</button>
      		<div class="collapse" id="getting-sales-collapse">
				<ul class="list-unstyled fw-normal pb-1 small">
					<li><a class="dropdown-item" href="goPreferenceList?MID=${sessionScope.loginInfo.getMID()}">선호 카테고리</a></li>
					<li><a class="dropdown-item" href="likeList?MID=${sessionScope.loginInfo.getMID()}">찜 목록</a></li>
					<li><a class="dropdown-item" href="goCartList?MID=${sessionScope.loginInfo.getMID()}">장바구니</a></li>
					<li><a class="dropdown-item" href="#">구매내역</a></li>
				</ul>
			</div>
		</li>
	</ul>
</div>