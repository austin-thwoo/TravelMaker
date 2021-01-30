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
			<div class="col justify-content-center">
				<h1>환불 신청 List</h1>
				<table border="1" bordercolor="blue" width ="100%" height="150" align = "center" >		
					<tr>
					 	<th>처리상태</th>
					 	<th>신청인 ID</th>
					 	<th>결제 금액</th>
					 	<th></th>
					 	<th></th>
					 </tr>
					 <c:forEach items="${refundlist}" var="i">
					 <tr>
					 	<c:choose>
    						<c:when test="${i.getOSTATE() eq 1}">
        				<th>처리대기</th>
    						</c:when>
						    <c:when test="${i.getOSTATE() eq 2}">
        				<th>처리완료</th>
        					</c:when>
        					<c:otherwise>
        				<th>유감이군</th>
    						</c:otherwise>

	
						</c:choose>
											 	
					 	<th>${i.getMID()}</th>
					 	<th>${i.getOAMOUNT()}</th>
					 	
					 	<th><button onclick="refundView('${i.getMID()}','${i.getPNUMBER()}','${i.getODATE()}')">상세보기</button></th>
					 	<th><input type="button" value="처리완료"></th>
					 </tr>

				 

					 </c:forEach>
				<div style="text-align:center" id="detail"></div>	 		 
				</table>
				 
				<br>
			</div>
		</div>
	</div>
	<%@ include file="../PageUp.jsp" %>
</body>
<footer>
	<%@ include file="../Footer.jsp" %>
</footer>
<script>

	function refundView(MID, PNUMBER, ODATE){
		console.log(MID)
		console.log(PNUMBER)
		console.log(ODATE)
		$.ajax({
			type:"post",
			url:"goRefundListAjax",
			data:{"MID":MID,
				"PNUMBER":PNUMBER,
				"ODATE":ODATE				
			},
			dataType:"json",
			success : function(result){
			console.log(result);
			
			 var output ="<table border='1' bordercolor='blue' width ='100%' height='150' align = 'center' >";
				output +="<tr>";
				output +="<th>신청인 ID</th>";
				output +="<th>상품 번호</th>";
				output +="<th>성인 결제</th>";
				output +="<th>아동 결제</th>";
				output +="<th>유아 결제</th>";
				output +="<th>결제 금액</th>";
				output +="<th>결제 일자</th>";
				output +="<th>출발 일자</th>";
				output +="</tr>";													
				output +="<tr>";
				output +="<th>"+result.MID+"</th>";
				output +="<th>"+result.PNUMBER+"</th>";
				output +="<th>"+result.OADULT+"</th>";
				output +="<th>"+result.OCHILD+"</th>";
				output +="<th>"+result.OINFANT+"</th>";
				output +="<th>"+result.OAMOUNT+"</th>";
				output +="<th>"+result.ODATE+"</th>";
				output +="<th>"+result.PSSTART+"</th>";
				output +="</tr>";
				output +="</table>";
				output +="";
			
				$("#detail").css("color", "green");
				$("#detail").html(output);
			},
			error: function(){
				alert("님오타났을듯 ㅋㅁㅋ")
			}
		});
	 
		
			
		
			
			
			

		
	
}


</script>

</html>
