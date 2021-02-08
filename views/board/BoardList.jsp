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
					
					<tbody id="ajaxboardlist">
					<c:forEach items="${boardList}" var="i" varStatus="status">
						<c:choose>
						<c:when test="${sessionScope.loginInfo.getMLEVEL() == 0}">
						
						<tr>
							<td>${i.getBNUMBER()}</td>
							<td><a href="goBoardDetail?BNUMBER=${i.getBNUMBER()}&MID=${sessionScope.loginInfo.getMID()}">${i.getBTITLE()}</a></td>
							<td>${i.getMNICK()}</td>
							<td>${fn:substring(i.getBDATE(),5,16)}</td>
							<td>${i.getBOARDVIEWS()}</td>
							<td>${i.getBOARDLIKE()}</td>
							
								<th>${i.getBOARDCOMPLAINT()}</th>								
								<th id ="stateview ${status.index}">
									<c:choose>
	    								<c:when test="${i.getBSTATE() eq 1}">								
											공개
										</c:when>
										<c:otherwise>
											잠김
										</c:otherwise>
								</c:choose>								
								</th>
								<th>
									<c:choose>
	    								<c:when test="${i.getBSTATE() eq 1}">								
											<input type="button" value="잠금하기" onclick="boardlock(${i.getBNUMBER()}, this, document.getElementById('stateview ${status.index}'))">
										</c:when>
										<c:otherwise>
											<input type="button" value="해제하기" onclick="boardunlock(${i.getBNUMBER()}, this, document.getElementById('stateview ${status.index}'))">
										</c:otherwise>
								</c:choose>								
								</th>
							
						</tr>
					 </c:when>
					 <c:otherwise>
					 <c:if test="${i.getBSTATE() eq 1}">
					 <tr>
							<td>${i.getBNUMBER()}</td>
							<td><a href="goBoardDetail?BNUMBER=${i.getBNUMBER()}&MID=${sessionScope.loginInfo.getMID()}">${i.getBTITLE()}</a></td>
							<td>${i.getMNICK()}</td>
							<td>${fn:substring(i.getBDATE(),5,16)}</td>
							<td>${i.getBOARDVIEWS()}</td>
							<td>${i.getBOARDLIKE()}</td>
						</tr>
					 
					 
					</c:if>
					 </c:otherwise>
					 
					 
				</c:choose>	
					</c:forEach>
					</tbody>
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



<script src="https://code.jquery.com/jquery-3.5.1.min.js"
	integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
	crossorigin="anonymous"></script>
<script>



function boardlock(BNUMBER, BUTTON, stateview){
		console.log("뚜!")		
		$.ajax({
			url : "boardlock",
			type : "post",
			data : {
				"BNUMBER" : BNUMBER				
			},
			dataType : "text",
			
			success : function(result){ 
				
			
				BUTTON.value = "해제하기";
				BUTTON.onclick = function(){
					boardunlock(BNUMBER,BUTTON,stateview);
				};
				stateview.innerHTML="잠김"; 
			},
			error: function(result){
				console.log("시르패")
			}
		});
	}
	
	
function boardunlock(BNUMBER, BUTTON, stateview){
	console.log("뚜!")		
	$.ajax({
		url : "boardlock",
		type : "post",
		data : {
			"BNUMBER" : BNUMBER				
		},
		dataType : "text",
		
		success : function(result){
			
			
			BUTTON.value = "잠금하기";
			BUTTON.onclick = function(){
			boardlock(BNUMBER,BUTTON,stateview);
			};
			stateview.innerHTML="공개"; 
			 
			 
		},
		error: function(result){
			console.log("시르패")
		}
	});
}
	
</script>
</html>
