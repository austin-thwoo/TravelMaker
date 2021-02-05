<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
		<%@ include file="../MainNav.jsp" %>
	</div>
	<div class="container mt-2">
		<c:choose>
			<c:when test="${!empty boardCategory.getBCNAME()}">
				<h1>${boardCategory.getBCNAME()}</h1>
			</c:when>
			<c:otherwise>
				<h1>전체</h1>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${boardCategory.getBCNUMBER() != 3}">
				<table class="table table-hover text-center">
					<thead>
						<tr class="table-secondary">
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>등록일</th>
							<th>조회수</th>
							<th>추천수</th>
							<c:if test="${sessionScope.loginInfo.getMLEVEL() == 0}">
								<th>신고수</th>
								<th>상태</th>
								<th>잠금/해제</th>
							</c:if>
						</tr>
					</thead>
					<c:forEach items="${boardList}" var="i">
						<tr>
							<td>${i.getBNUMBER()}</td>
							<td><a href="goBoardDetail?BNUMBER=${i.getBNUMBER()}&MID=${sessionScope.loginInfo.getMID()}">${i.getBTITLE()}</a></td>
							<td>${i.getMNICK()}</td>
							<td>${fn:substring(i.getBDATE(),5,16)}</td>
							<td>${i.getBOARDVIEWS()}</td>
							<td>${i.getBOARDLIKE()}</td>
							<c:if test="${sessionScope.loginInfo.getMLEVEL() == 0}">
								<th>${i.getBOARDCOMPLAINT()}</th>								
								<th>
									<c:choose>
	    								<c:when test="${i.getBSTATE() eq 1}">								
											보통
										</c:when>
										<c:otherwise>
											잠김
										</c:otherwise>
								</c:choose>								
								</th>
								<th>
									<c:choose>
	    								<c:when test="${i.getBSTATE() eq 1}">								
											<input type="button" value="잠금하기" onclick="boardlock(${i.getBNUMBER})">
										</c:when>
										<c:otherwise>
											<input type="button" value="해제하기" onclick="boardunlock()">
										</c:otherwise>
								</c:choose>								
								</th>
							</c:if>
						</tr>
					</c:forEach>
				</table>
			</c:when>
			<c:otherwise>
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
			</c:otherwise>
		</c:choose>
		<div class="row container-fluid mb-1">
			<div class="text-end">
				<button class="btn btn-primary btn-md" onclick="location.href = 'goBoardInsertForm'">글쓰기</button>
			</div>
		</div>
		
		<div class="row container-fluid mb-1">
			<div class="input-group">
				<select name="" id="button-addon2" class="form-select-sm rounded-start">
					<option value="">전체</option>
					<option value="">제목</option>
					<option value="">내용</option>
					<option value="">작성자</option>
					<option value="">제목+내용</option>
				</select>
				<input type="text" name="" value="" class="form-control" aria-describedby="button-addon2">
				<button id="button-addon2" type="button" class="btn btn-outline-primary">검색</button>
			</div>
		</div>
		
		<div class="row container-fluid">
			<div class="d-flex justify-content-center">
				<nav aria-label="Page navigation example">
				  <ul class="pagination">
				    <li class="page-item">
				      <a class="page-link" href="#" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
				    <li class="page-item"><a class="page-link" href="#">1</a></li>
				    <li class="page-item"><a class="page-link" href="#">2</a></li>
				    <li class="page-item"><a class="page-link" href="#">3</a></li>
				    <li class="page-item">
				      <a class="page-link" href="#" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
				  </ul>
				</nav>
			</div>
		</div>
	</div>
	<%@ include file="../PageUp.jsp" %>
</body>
<footer>
	<%@ include file="../Footer.jsp"%>
</footer>

<script>
function boardlock(BNUMBER){
		console.log("뚜!!")
		$.ajax({
			url : "boardlock",
			type : "post",
			data : {
				"BNUMBER" : BNUMBER,
				"MID" : MID
			},
			dataType : "json",
			success : function(result){
				console.log(result)
						
				
				output= "<div class='col-1'>";
				output+="<a href='javascript:boardLikeInsert('${boardDetail.getBNUMBER()}','${sessionScope.loginInfo.getMID()}')' id='boardlike' >";
				output+="<svg xmlns='http://www.w3.org/2000/svg' width='30' height='30' fill='currentColor' class='bi bi-hand-thumbs-up' viewBox='0 0 16 16'>";
				output+="<path d='M8.864.046C7.908-.193 7.02.53 6.956 1.466c-.072 1.051-.23 2.016-.428 2.59-.125.36-.479 1.013-1.04 1.639-.557.623-1.282 1.178-2.131 1.41C2.685 7.288 2 7.87 2 8.72v4.001c0 .845.682 1.464 1.448 1.545 1.07.114 1.564.415 2.068.723l.048.03c.272.165.578.348.97.484.397.136.861.217 1.466.217h3.5c.937 0 1.599-.477 1.934-1.064a1.86 1.86 0 0 0 .254-.912c0-.152-.023-.312-.077-.464.201-.263.38-.578.488-.901.11-.33.172-.762.004-1.149.069-.13.12-.269.159-.403.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2.144 2.144 0 0 0-.138-.362 1.9 1.9 0 0 0 .234-1.734c-.206-.592-.682-1.1-1.2-1.272-.847-.282-1.803-.276-2.516-.211a9.84 9.84 0 0 0-.443.05 9.365 9.365 0 0 0-.062-4.509A1.38 1.38 0 0 0 9.125.111L8.864.046zM11.5 14.721H8c-.51 0-.863-.069-1.14-.164-.281-.097-.506-.228-.776-.393l-.04-.024c-.555-.339-1.198-.731-2.49-.868-.333-.036-.554-.29-.554-.55V8.72c0-.254.226-.543.62-.65 1.095-.3 1.977-.996 2.614-1.708.635-.71 1.064-1.475 1.238-1.978.243-.7.407-1.768.482-2.85.025-.362.36-.594.667-.518l.262.066c.16.04.258.143.288.255a8.34 8.34 0 0 1-.145 4.725.5.5 0 0 0 .595.644l.003-.001.014-.003.058-.014a8.908 8.908 0 0 1 1.036-.157c.663-.06 1.457-.054 2.11.164.175.058.45.3.57.65.107.308.087.67-.266 1.022l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.414-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.047.047.109.177.005.488a2.224 2.224 0 0 1-.505.805l-.353.353.353.354c.006.005.041.05.041.17a.866.866 0 0 1-.121.416c-.165.288-.503.56-1.066.56z'/>";
				output+="</svg>";
				output+="</a>";
				output+="<span id='likeResult'>"+result+"</span>";			
				output+="</div>";				  	
				
				
			$("#like").html(output);
				
			  									
				
			
			
			
			}
		});
	}
</script>
</html>
