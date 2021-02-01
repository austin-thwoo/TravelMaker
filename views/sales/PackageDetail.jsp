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
<style>
.starR {
	background:
		url('http://miuu227.godohosting.com/images/icon/ico_review.png')
		no-repeat right 0;
	background-size: auto 100%;
	width: 30px;
	height: 30px;
	display: inline-block;
	text-indent: -9999px;
	cursor: pointer;
}

.starR.on {
	background-position: 0 0;
} 
</style>
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../Header.jsp" %>
	<div class="my-1">
		<%@ include file="../MainNav.jsp" %>
	</div>
	<div class="container">
		<h2>동남아 여행의 상세정보</h2>
		<div class="container">
			<div class="row">
				<div class="col-8">
					<img src="" border="0" alt="패키지 이미지">
				</div>
				<div class="col">
					<table class="table table-borderless w-75">
						<tr>
							<th>패키지 번호 : </th>
							<td>${packageDetail.getPNUMBER()}</td>
						</tr>
						<tr>
							<th>패키지 이름 : </th>
							<td>${packageDetail.getPNAME()}</td>
						</tr>
						<tr>
							<th>여행기간 : </th>
							<td>${packageDetail.getPPERIOD()-1}박 ${packageDetail.getPPERIOD()}일</td>
						</tr>
						<tr>
							<th>최소인원 : </th>
							<td>${packageDetail.getPMIN()}</td>
						</tr>
						<tr>
							<th>최대인원 : </th>
							<td>${packageDetail.getPMAX()}</td>
						</tr>
						<tr>
							<th>성인요금 : </th>
							<td>${packageDetail.getPADULT()}원</td>
						</tr>
						<tr>
							<th>아동요금 : </th>
							<td>${packageDetail.getPCHILD()}원</td>
						</tr>
						<tr>
							<th>유아요금 : </th>
							<td>${packageDetail.getPINFANT()}원</td>
						</tr>
					</table>
					<div class="input-group">
						<select class="form-control" id="PSSTART">
							<option value="false">옵션 선택</option>
							<c:forEach items="${packageSchedule}" var="i" varStatus="vs">
								<option value="${i.getPSSTART()}">옵션${vs.index+1} : ${fn:substring(i.getPSSTART(),0,10)} ~ ${fn:substring(i.getPSEND(),0,10)}</option>
							</c:forEach>
						</select>
					</div>
					<button class="btn btn-primary btn-md" onclick="likeInsert('${sessionScope.loginInfo.getMID()}','${packageDetail.getPNUMBER()}', this)">좋아요</button>
					<button class="btn btn-primary btn-md" onclick="cartInsert('${sessionScope.loginInfo.getMID()}', '${packageDetail.getPNUMBER()}', document.getElementById('PSSTART'), this)">장바구니</button>
					<button class="btn btn-primary btn-md" onclick="goSaleForm('${sessionScope.loginInfo.getMID()}', '${packageDetail.getPNUMBER()}', document.getElementById('PSSTART'))">결제하기</button>
				</div>
			</div>
		</div>
		<div class="row mb-1">
			${packageDetail.PINFO}
			<img src="" alt="상세정보 이미지">
		</div>
		<div class="input-group mb-1">
			<div class="starRev" >			
				<span class="starR" >1</span> 
				<span class="starR" >2</span> 
				<span class="starR">3</span>					
				<span class="starR" >4</span>
				<span class="starR" >5</span>
			</div> 
			<input type="hidden" id="RVSCORE" value="0"> 			
			<input type="text" id="RVCONTENT" class="form-control" aria-describedby="button-addon2">
			<button id="button-addon2" class="btn btn-primary" onclick="reviewInsert('${packageDetail.getPNUMBER()}', '${sessionScope.loginInfo.getMID()}')">작성</button>
		</div>
		<div class="row">
			<table class="table table-striped">
				<colgroup>
					<col width="10%">
					<col width="20%">
					<col width="60%">
					<col width="10%">
				</colgroup>
				<thead>
					<tr>
						<th>작성자</th>
						<th>점수</th>
						<th>내용</th>
						<th>작성일자</th>
					</tr>
				</thead>
				<tbody id="reviewInsertResult">
					<c:forEach items="${reviewList}" var="i">
						<tr>
							<td>${i.getMNICK()}</td>
							<td>
								<c:forEach step="1" begin="1" end="5" var="j">
									<c:choose>
										<c:when test="${j <= i.getRVSCORE()}">
											<span class="starR on"></span>
										</c:when>
										<c:otherwise>
											<span class="starR"></span>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</td>
							<td>${i.getRVCONTENT()}</td>
							<td>${fn:substring(i.getRVDATE(),5,16)}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<%@ include file="../PageUp.jsp" %>
</body>
<footer>
	<%@ include file="../Footer.jsp" %>
</footer>
<script type="text/javascript">
	function goSaleForm(MID, PNUMBER, PSSTART){
		if(PSSTART.options[PSSTART.selectedIndex].value != "false"){
			location.href = "goSaleForm?MID="+MID+"&PNUMBER="+PNUMBER+"&PSPNUMBER="+PNUMBER+"&PSSTART="+PSSTART.options[PSSTART.selectedIndex].value;
		}else{
			alert("옵션을 선택해 주세요");
		}
	}
	
	$('.starRev span').click(function() {
		$(this).parent().children('span').removeClass('on');
		$(this).addClass('on').prevAll('span').addClass('on');		
		$("#RVSCORE").val($(this).text());
		console.log($("#RVSCORE").val());
		return false;	
	});
	
	function reviewInsert(PNUMBER, MID) {
		$.ajax({
			url : "reviewInsert",
			type : "post",
			data : {
				"PNUMBER" : PNUMBER,
				"MID" : MID,
				"RVSCORE" : $("#RVSCORE").val(),
				"RVCONTENT" : $("#RVCONTENT").val()
			},
			dataType : "json",
			success : function(result) {
				var htmlResult = "";

				for ( var i in result) {
					htmlResult += "<tr>" +
									"<td>" + result[i].MNICK + "</td>" +
									"<td>";
					for (var j = 1; j <= 5; j++) {
						if(j <= result[i].RVSCORE){
							htmlResult += "<span class='starR on'></span>";
						}else{
							htmlResult += "<span class='starR'></span>";
						}
					}
					htmlResult += 	"</td>" +
									"<td>" + result[i].RVCONTENT + "</td>" +
									"<td>" + result[i].RVDATE.substring(5, 16) + "</td>" +
								"</tr>";
				}
				$("#RVCONTENT").val("");
				$('.starRev').children('span').removeClass('on');
				$("#reviewInsertResult").html(htmlResult);
			}
		});
	}
	
	function likeInsert(MID, PNUMBER, button){
		$.ajax({
			url : "likeInsert",
			type : "post",
			data : {
				"PNUMBER" : PNUMBER,
				"MID" : MID
			},
			dataType : "Text",
			success : function(result){
				if (result == 1) {
					button.onclick = function(){
						likeDelete(MID, PNUMBER, button);
					};
					button.innerHTML = "좋아요 취소";
				}
			}
		});
	}
	
	function likeDelete(MID, PNUMBER, button){
		$.ajax({
			url : "likeDelete",
			type : "post",
			data : {
				"PNUMBER" : PNUMBER,
				"MID" : MID
			},
			dataType : "Text",
			success : function(result){
				if (result == 1) {
					button.onclick = function(){
						likeInsert(MID, PNUMBER, button);
					};
					button.innerHTML = "좋아요";
				}
			}
		});
	}
	
	function cartInsert(MID, PNUMBER, PSSTART, button){
		if(PSSTART.options[PSSTART.selectedIndex].value != "false"){
			$.ajax({
				url : "cartInsert",
				type : "post",
				data : {
					"MID" : MID,
					"PNUMBER" : PNUMBER,
					"PSPNUMBER" : PNUMBER,
					"PSSTART" : PSSTART.options[PSSTART.selectedIndex].value
				},
				dataType : "Text",
				success : function(result){
					if (result == 1) {
						button.onclick = function(){
							cartDelete(MID, PNUMBER, PSSTART, button);
						};
						button.innerHTML = "장바구니 취소";
					}
				}
			});
		}else{
			alert("옵션을 선택해 주세요");
		}
	}
	
	function cartDelete(MID, PNUMBER, PSSTART, button){
		if(PSSTART.options[PSSTART.selectedIndex].value != "false"){
			$.ajax({
				url : "cartDelete",
				type : "post",
				data : {
					"MID" : MID,
					"PNUMBER" : PNUMBER,
					"PSPNUMBER" : PNUMBER,
					"PSSTART" : PSSTART.options[PSSTART.selectedIndex].value
				},
				dataType : "Text",
				success : function(result){
					if (result == 1) {
						button.onclick = function(){
							cartInsert(MID, PNUMBER, PSSTART, button);
						};
						button.innerHTML = "장바구니";
					}
				}
			});
		}else{
			alert("옵션을 선택해 주세요");
		}
	}
</script>
</html>