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
					<li><a class="dropdown-item" href="#">JobList</a></li>
					<li><a class="dropdown-item" href="#">MemberList</a></li>
					<li><a class="dropdown-item" href="#">AdminList</a></li>
				</ul>
			</div>
		</li>
		<li class="list-group-item mb-1">
			<button class="btn d-inline-flex align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#getting-board-collapse" aria-expanded="false">
        		Board
      		</button>
      		<div class="collapse" id="getting-board-collapse">
				<ul class="list-unstyled fw-normal pb-1 small">
					<li><a class="dropdown-item" href="#">BoardCategoryList</a></li>
					<li><a class="dropdown-item" href="#">BoardComplaint</a></li>
					<li><a class="dropdown-item" href="#">CommentsComplaint</a></li>
					<li><a class="dropdown-item" href="#">RecommentsComplaint</a></li>
				</ul>
			</div>
		</li>
		<li class="list-group-item mb-1">
			<button class="btn d-inline-flex align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#getting-sales-collapse" aria-expanded="false">
        		Sales
      		</button>
      		<div class="collapse" id="getting-sales-collapse">
				<ul class="list-unstyled fw-normal pb-1 small">
					<li><a class="dropdown-item" href="#">PackageInsert</a></li>
					<li><a class="dropdown-item" href="#">SalesManagement</a></li>
					<li><a class="dropdown-item" href="#">TravelerInfoList</a></li>
				</ul>
			</div>
		</li>
	</ul>
</div>