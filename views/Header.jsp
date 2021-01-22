<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
	<div class="container-fluid">
		<a class="navbar-brand" href="./"><img src="" alt="Logo"></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
			<div>
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<c:choose>
					<c:when test="${empty sessionScope.signInInfo}">
						<li class="nav-item">
							<a class="nav-link" href="#">LogIn</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">Join</a>
						</li>
					</c:when>
					<c:otherwise>
						<li class="nav-item">
							<span class="nav-link">${sessionScope.signInId}님</span>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">MyPage</a>
						</li>
						<c:if test="${sessionScope.signInInfo.getMlevel() ne 1}">
							<li class="nav-item">
								<a class="nav-link" href="#">AdminPage</a>
							</li>
						</c:if>
						<li class="nav-item">
							<a class="nav-link" href="#">LogOut</a>
						</li>
					</c:otherwise>
				</c:choose>
			</ul>
			</div>
		</div>
	</div>
</nav>