<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.dropdown:hover .dropdown-menu {
	display: block;
	margin-top: 0;
}
</style>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container">
		<ul class="navbar-nav me-auto mb-2 mb-lg-0">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" aria-expanded="false"> Package </a>
				<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="#">Package</a></li>
					<li><a class="dropdown-item" href="#">Review</a></li>
				</ul></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" aria-expanded="false"> Board </a>
				<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="#">Notice</a></li>
					<li><a class="dropdown-item" href="#">Humor</a></li>
					<li><a class="dropdown-item" href="#">Event</a></li>
				</ul></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#"
				id="navbarDropdown" role="button" aria-expanded="false">
					Information </a>
				<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="#">QnA</a></li>
					<li><a class="dropdown-item" href="#">Request</a></li>
				</ul></li>
		</ul>
		<form action="#" class="mb-0">
			<div class="container-fluid">
				<div class="row justify-content-end">
					<div class="input-group">
						<select class="form-select-sm rounded-start" name="" id="button-addon2">
							<option value="" selected>전체</option>
							<option value="">상품명</option>
							<option value="">게시글 제목</option>
							<option value="">작성자</option>
						</select>
						<input type="text" name="" class="form-control" aria-describedby="button-addon2">
						<button class="btn btn-outline-secondary" type="submit" id="button-addon2">검색</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</nav>