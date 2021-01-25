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
<div class="row justify-content-center">
	<div class="col-3">
	<div class="container">
	<h4>BoardCategoriUpdate</h4>
	    <form action="/updateProc" method="post">
	      <div class="form-group">
	        <label for="subject">수정할 카테고리</label>
	        <input type="text" class="form-control" id="subject" name="subject" value="">
	      </div>
	    
	      <input type="hidden" name="bno" value=""/><br>
	      <button type="submit" class="btn btn-primary">수정</button>
	      <button type="submit" class="btn btn-primary">취소</button>
	    </form> 
	     </div>
	     </div>
	</div>
</body>

</html>
