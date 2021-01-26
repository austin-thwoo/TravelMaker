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
	<%@ include file="../Header.jsp" %>
	<div class="my-1">
		<%@ include file="../MainNav.jsp" %>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-3">
				<%@ include file="../AdminNav.jsp" %>
			</div>
			<div class="col justify-content-center text-start">
				<h1>신고 게시글 목록</h1>
				<table class="table table-hover text-center">
					<thead>
						<tr class="table-secondary">
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>등록일</th>
							<th>조회수</th>
							<th>추천수</th>
							<th>신고수</th>
						</tr>
					</thead>
					<c:forEach items="${boardList}" var="i">
						<c:if test="${i.getBOARDCOMPLAINT() > 0}">
							<tr>
								<td>${i.getBNUMBER()}</td>
								<td><a href="#">${i.getBTITLE()}</a></td>
								<td>${i.getMNICK()}</td>
								<td>${fn:substring(i.getBDATE(),0,16)}</td>
								<td>${i.getBOARDVIEWS()}</td>
								<td>${i.getBOARDLIKE()}</td>
								<td><a href="#">${i.getBOARDCOMPLAINT()}</a></td>
							</tr>
						</c:if>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<%@ include file="../PageUp.jsp" %>
</body>
<footer>
	<%@ include file="../Footer.jsp" %>
</footer>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script>
	function categoryInsert(){
		$.ajax({
			type : "get",
			url : "categoryInsert",
			data : {"CNAME" : $("#CNAME").val()},
			dataType: "json",
			success: function(result){
						var htmlResult = "";
						for(var i in result){
							htmlResult += "<div class='input-group mb-1'>" +
										"<label class='list-group-item form-control' aria-describedby=" + result[i].CNAME  + ">" + result[i].CNAME + "</label>" +
										"<button class='btn btn-primary' id=" + result[i].CNAME  + " onclick=>수정하기</button>" +
									"</div>";
						}
						$("#categoryInsertResult").html(htmlResult);
					}
		});
	}
</script>
</html>