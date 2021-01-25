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
		<%@ include file="../MainNav.jsp"%>
	</div>
	<div class="container">
		<form action="boardInsert" method="post" id="boardInsertform" enctype="multipart/form-data">
			<div class="input-group mb-1">
				<select class="from-select-sm rounded-start" id="BTITLE" name="BCNUMBER">
					<option value="1">공지</option>
					<option value="2">자유</option>
					<option value="3">후기</option>
				</select>
				<input type="text" class="form-control" name="BTITLE" placeholder="제목을 입력하세요." aria-describedby="BTITLE">
			</div>
			<div class="input-group mb-1">
				<textarea name="BCONTENT" id="ir1" rows="20" cols="181"></textarea>
			</div>
	      	<div class="input-group mb-1">
	      		<input type="file" class="form-control" name="BIMGFILE" accept="image/*">
	      	</div>
			<div class="text-end">
				<input type="hidden" name="MID" value="${sessionScope.loginInfo.getMID()}">
				<button class="btn btn-primary" onclick="submitContents()">작성</button>
			</div>
		</form>
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
             document.getElementById("boardInsertform").submit();
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