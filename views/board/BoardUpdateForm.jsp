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
	    <form action="#" method="post">
	      <div class="input-group mb-1">
	      	<select class="from-select-sm rounded-start" id="BTITLE">
	      		<option>공지</option>
	      		<option>후기</option>
	      		<option>자유</option>
	      		<option>이벤트</option>
	      	</select>
	        <input type="text" class="form-control" name="" placeholder="제목을 입력하세요." aria-describedby="BTITLE" value="기존제목">
	      </div>
	      
	    <div class="input-group mb-1">
				<!-- 크기 내 노트복 화면에 맞춘거라 다시 조절 필요 -->
				<textarea name="ir1" id="ir1" rows="20" cols="181"> 이 곳에 글을 작성해보아요~~~</textarea>

			</div>
	      
	      <!-- <div class="input-group mb-1">
	      	<input type="file" class="form-control" name="" value="기존파일" disabled="disabled">
	      </div> -->
	      <div class="text-end">
	      	<button type="submit" class="btn btn-primary">수정</button>
	      	<button type="submit" class="btn btn-danger">취소</button>
	      </div>
	      
	    </form>
	</div>
	<%@ include file="../PageUp.jsp" %>
</body>
<footer>
	<%@ include file="../Footer.jsp"%>
</footer>

</html>
<!-- 이거 경로를 잘 맞춰 줘야함 나는 이미지폴더와 같은 레벨에 se2폴더를 만들어서 넣었음  -->
<script type="text/javascript" src="resources/se2/js/HuskyEZCreator.js"
	charset="utf-8"></script>
<script>
//‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
function submitContents(elClickedObj) {
 // 에디터의 내용이 textarea에 적용된다.
 oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", [/* 이게 무엇일까...? */]);

 // 에디터의 내용에 대한 값 검증은 이곳에서
 // document.getElementById("ir1").value를 이용해서 처리한다.

 try {
     elClickedObj.form.submit();
 } catch(e) {}
</script>
<!-- 종원아 이거는 textarea밑에 있어야 오류가 안난대 html 태그 밖에 써야한대-->
<script type="text/javascript">
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
 oAppRef: oEditors,
 elPlaceHolder: "ir1",
 sSkinURI: "resources/se2/SmartEditor2Skin.html",
 fCreator: "createSEditor2"
});
</script>