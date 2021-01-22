<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../Header.jsp"%>
	<div class="my-1">
		<%@ include file="../MyPageNav.jsp"%>
	</div>
	<div class="justify-content-center text-center container">	
		<div style="border: 1px solid red; width: 100%; height: 5%;">
			<table border="2" boardercolor="red" width="100%" height="100%">
				<tr style="text-align: center;">
					<th width="10%">상품사진</th>
					<th width="70%">상품정보</th>
					<th width="20%">상품 메뉴</th>
				</tr>
			</table>
		</div>
	</div>
	<div class="justify-content-center text-center container">
		<div style="border: 0px solid red; width: 100%; height: 20%;">		
			<table border="2" boardercolor="red" width="100%" height="100%">
				<tr style="text-align: center;">
					<div>
						<th width="10%">꽤나 예쁜사진</th>
					</div>
					<div width="70%">
						<th> 기간 : 0000<br/>
							 지역 : 아르헨티나,뉴욕, 한국, 브라질, 조선민주주의인민공화국, 인도, 화성, 미래도시인천<br/>
						 	 가격 : 38,500원 <br/>
						  	 인원 : 2명
						</th>
					</div>
					<div width="20%">
						<th>
							<input type= "button" value="리뷰쓰러가기"><br/><br/>
							<input type= "button" value="환불하기 or 환불불가"><br/><br/>
						 	<input type= "button" value="상품 상세보기">
						</th>
					</div>
				</tr>
			</table>
		</div>
	</div>
	<%@ include file="../PageUp.jsp" %>
</body>
<footer>
	<%@ include file="../Footer.jsp"%>
</footer>
</html>
