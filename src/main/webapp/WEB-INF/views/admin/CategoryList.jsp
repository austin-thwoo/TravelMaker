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
			<div class="col-6 justify-content-center text-start">
				<h1>상품 카테고리 목록</h1>
				<div class="list-group" id="categoryInsertResult">
					<c:forEach items="${categoryList}" var="i">
						<div class="input-group mb-1">
							<label class="list-group-item form-control" aria-describedby="${i.getCNAME()}">${i.getCNAME()}</label>
							<button class="btn btn-primary" id="${i.getCNAME()}" onclick="">수정하기</button>
						</div>
					</c:forEach>
				</div>
				<div class="row justify-content-end">
					<div class="col-5">
						<div class="input-group">
							<input class="form-control" type="text" aria-describedby="button-addon" id="CNAME">
							<button class="btn btn-primary" id="button-addon" onclick="categoryInsert()">등록하기</button>
						</div>
					</div>
				</div>
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