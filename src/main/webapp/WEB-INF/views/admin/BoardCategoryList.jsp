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
	<%@ include file="../Header.jsp"%>
	<div class="my-1">
		<%@ include file="../MainNav.jsp" %>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-3">
				<%@ include file="../AdminNav.jsp" %>
			</div>
			<div class="col">
				<h2>BoardCategoriList</h2>		
				<table class="table">
				  <thead>
				    <tr>
				      <th>#</th>
				      <th>게시판 명</th>
				      <th class="text-end">상태</th>
				    </tr>
				  </thead>
				  <tbody id="boardCategoryInsertResult">
				  	<c:forEach items="${boardCategoryList}" var="i">
					    <tr>
					      <th>${i.getBCNUMBER()}</th>
					      <td>${i.getBCNAME()}</td>
					      <td class="text-end">
					      	<button class="btn btn-primary btn-md me-1">수정</button>
					      	<button class="btn btn-primary btn-md">잠금</button>
					      </td>
					    </tr>
				  	</c:forEach>
				  </tbody>
				</table>
				<div class="row justify-content-end text-end">
					<div class="input-group w-25">
						<input class="form-control" type="text"aria-describedby="button-addon" id="BCNAME">
						<button class="btn btn-primary" id="button-addon" onclick="boardCategoryInsert()">등록하기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../PageUp.jsp" %>
</body>
<footer>
	<%@ include file="../Footer.jsp"%>
</footer>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script type="text/javascript">
	function boardCategoryInsert(){
		$.ajax({
			url : "boardCategoryInsert",
			data : {"BCNAME" : $("#BCNAME").val()},
			type : "get",
			dataType : "json",
			success : function(result){
						var htmlResult = "";
						for (var i in result) {
							htmlResult += "<tr>" +
											"<th>" + result[i].BCNUMBER + "</th>" +
											"<td>" + result[i].BCNAME + "</td>" +
											"<td class='text-end'>" +
												"<button class='btn btn-primary btn-md me-1'>수정</button>" +
					    	  					"<button class='btn btn-primary btn-md'>잠금</button>" +
      										"</td>" +
    									"</tr>";
						}
						$("#boardCategoryInsertResult").html(htmlResult);
			}
		})
		.done(function(result){
			console.log(result);
		});
	}
</script>
</html>
