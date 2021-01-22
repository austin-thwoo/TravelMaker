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
	        <textarea class="form-control" id="content" name="" rows="20" style="resize: none;">기존내용</textarea>
	      </div>
	      
	      <div class="input-group mb-1">
	      	<input type="file" class="form-control" name="" value="기존파일" disabled="disabled">
	      </div>
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
