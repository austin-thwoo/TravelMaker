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
	crossorigin="anonymous">	
	</script>
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../Header.jsp"%>
	<div class="my-1">
		<%@ include file="../MainNav.jsp"%>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-3">
				<%@ include file="../AdminNav.jsp"%>
			</div>
			<div class="col row">
				<div class="col-10 justify-content-center">
					<form action="packageInsert" method="post" id="packageInsertform" enctype="multipart/form-data">
						<div class="container-fluid text-start mb-1">
							<label class="form-label" for="PNAME">패키지이름</label>
							<div class="input-group">
								<input class="form-control" type="text" id="PNAME" name="PNAME">
							</div>
	
							<label class="form-label" for="PPREIOD">패키지기간</label>
							<div class="input-group">
								<input class="form-control" type="number" id="PPERIOD" name="PPERIOD">
							</div>
	
							<label class="form-label" for="PIMG">패키지사진</label>
							<div class="input-group">
								<input class="form-control" type="file" id="PIMGFILE" name="PIMGFILE" accept="image/*">
							</div>
	
							<label class="form-label" for="PADULT">어른요금</label>
							<div class="input-group">
								<input class="form-control" type="text" id="PADULT" name="PADULT">
							</div>
	
							<label class="form-label" for="PCHILD">아동요금</label>
							<div class="input-group">
								<input class="form-control" type="text" id="PCHILD" name="PCHILD">
							</div>
	
							<label class="form-label" for="PINFANT">유아요금</label>
							<div class="input-group">
								<input class="form-control" type="text" id="PINFANT" name="PINFANT">
							</div>
	
							<label class="form-label" for="PMIN">최소인원</label>
							<div class="input-group">
								<input class="form-control" type="number" id="PMIN" name="PMIN">
							</div>
	
							<label class="form-label" for="PMAX">최대인원</label>
							<div class="input-group">
								<input class="form-control" type="number" id="PMAX" name="PMAX">
							</div>
	
							<label class="form-label" for="PINFO">패키지상세</label>
							<div class="input-group mb-3">
								<textarea name="PINFO" id="ir1" rows="20" cols="99"></textarea>
							</div>
							
							<div class="text-center">
								<button class="btn btn-primary btn-md" type="button" onclick="submitContents()">저장</button>
								<button class="btn btn-primary btn-md" type="reset">취소</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../PageUp.jsp"%>
</body>
<footer>
	<%@ include file="../Footer.jsp"%>
</footer>
<script type="text/javascript" src="resources/se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script>
	function submitContents() {
		oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
 		try {
 			document.getElementById("packageInsertform").submit();
 		} catch(e) {}
	}
	
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
 		oAppRef: oEditors,
 		elPlaceHolder: "ir1",
 		sSkinURI: "resources/se2/SmartEditor2Skin.html",
 		fCreator: "createSEditor2"
	});
</script>
</html>