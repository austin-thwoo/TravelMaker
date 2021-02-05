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
				<div class="col-10 justify-content-center text-center">
					<form action="packageUpdate" method="post" name="packageuploadform" enctype="multipart/form-data">
						<div class="container-fluid text-start mb-1">
							<label class="form-label" for="PNAME">패키지이름</label>
							<div class="input-group">
								<input class="form-control" type="text" id="PNAME" name="PNAME" value="${packageDetail.getPNAME()}">
							</div>
		
							<label class="form-label" for="PPREIOD">패키지기간</label>
							<div class="input-group">
								<input class="form-control" type="number" id="PPREIOD" name="PPERIOD" value="${packageDetail.getPPERIOD()}">
							</div>
		
							<label class="form-label" for="PIMG">패키지사진</label>
							<div class="input-group">
								<input class="form-control" type="file" id="PIMG" name="PIMG" accept="image/*" value="기존 이미지" disabled="disabled">
							</div>
	
							<label class="form-label" for="PADULT">어른요금</label>
							<div class="input-group">
								<input class="form-control" type="text" id="PADULT" name="PADULT" value="${packageDetail.getPADULT()}">
							</div>
		
							<label class="form-label" for="PCHILD">아동요금</label>
							<div class="input-group">
								<input class="form-control" type="text" id="PCHILD" name="PCHILD" value="${packageDetail.getPCHILD()}">
							</div>
		
							<label class="form-label" for="PINFANT">유아요금</label>
							<div class="input-group">
								<input class="form-control" type="text" id="PINFANT" name="PINFANT" value="${packageDetail.getPINFANT()}">
							</div>
		
							<label class="form-label" for="PMIN">최소인원</label>
							<div class="input-group">
								<input class="form-control" type="number" id="PMIN" name="PMIN" value="${packageDetail.getPMIN()}">
							</div>
		
							<label class="form-label" for="PMAX">최대인원</label>
							<div class="input-group">
								<input class="form-control" type="number" id="PMAX" name="PMAX" value="${packageDetail.getPMAX()}">
							</div>
		
							<label class="form-label" for="PINFO">패키지상세</label>
							<div class="input-group">
								<textarea name="PINFO" id="editor1" rows="20" cols="100">${packageDetail.getPINFO()}</textarea>
							</div>
						</div>
						<input type="hidden" name="PNUMBER" value="${packageDetail.getPNUMBER()}">
						<button class="btn btn-primary btn-md" type="submit">수정완료</button>
						<button class="btn btn-primary btn-md" type="reset">취소</button>
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
<script type="text/javascript" src="resources/ckeditor/ckeditor.js"></script>
<script type="text/javascript">
	$(function(){
		CKEDITOR.replace('editor1',{
			width : '800px',
			height : '600px',
			filebrowserImageUploadUrl: './fileUpload'
		});
        
        
        CKEDITOR.on('dialogDefinition', function( ev ){
            var dialogName = ev.data.name;
            var dialogDefinition = ev.data.definition;
         
            switch (dialogName) {
                case 'image': //Image Properties dialog
                    //dialogDefinition.removeContents('info');
                    dialogDefinition.removeContents('Link');
                    dialogDefinition.removeContents('advanced');
                    break;
            }
        });
        
    });
    function submitContents() {
    	editor.updateElement();
         try {
             document.getElementById("boardInsertform").submit();
         } catch(e) {}
    }
</script>
</html>
