<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="pwFind.jsp">
<title>Insert title here</title>
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap-theme.css" rel="stylesheet">
<link href="../css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">
<link href="../css/plugins/social-buttons.css" rel="stylesheet">
<link href="../font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="${context}/css/user.css" rel="stylesheet">
<link
    href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200&display=swap"
    rel="stylesheet"
 />


<script src="../js/jquery-1.9.1.js"></script>
<!-- <script src="../js/bootstrap.bundle.js"></script> -->
<script src="../js/plugins/metisMenu/metisMenu.min.js"></script>

<script src="../js/sb-admin-2.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#email").keydown(function (key){
			if(key.keyCode == 13){
				retrieveUserPw();
			}

		});
	});

	function retrieveUserPw(){
		var id = $("#id").val();
		var email = $("#email").val();

		var param = {};

		param["id"] = id;
		param["email"] = email;

		var access = $("#message");

		$.ajax({
			url:"${context}/work/user/retrieveUserPw.do",
			contentType:"application/json",
			dataType:"json",
			data:param,
			success:function(result){
				access.html(result["checkMsg"]);
			}
		});
	}
</script>
</head>
<body>
<!-- 헤더 -->
	<jsp:include page="../common/top.jsp"></jsp:include>
	
	
<!-- 페이지 헤더 -->
<div class="page_header">
	 <div class="pwFind_header">
	       <div class="name">
	             <p class="comeText">비밀번호 찾기</p>
	        </div>
	  </div>
</div>


<!-- 	<div id="jumbotron" class="container">
		<div class="user-main">
			<h2><font color="black"><strong>비밀번호 찾기</strong></font></h2>
		</div>
	</div> -->	
	
	
	
<!-- 본문 -->	
	<div class="container">
		<div class="form-horizontal" style="margin-bottom: 140px;">
			<div class="col-md-4 offset-md-4" style="margin-top: 5%;">
			
				<div class="id-group">
					<label for="email" class="control-label col-md-2" style="font-weight: bold; margin-bottom: 5px;" >아이디</label>
					<div class="form-group mb-4">
						<input class="form-control" type="text" name="id" id="id" autofocus="autofocus" style="margin-bottom: 10px;"/>
					</div>
				</div>
				
				<div class="email-group2">
					<label for="email" class="control-label col-md-2" style="font-weight: bold; margin-bottom: 5px;">이메일</label>
					<div class="form-group mb-4" style="margin-bottom: 15px;">
						<input class="form-control" type="email" name="email" id="email" autofocus="autofocus"/>
					</div>
					
					 <div class="form-group d-grid gap-2 mt-4">
	                            <button type="button" class="btn btn-lg user-post-btn btn-block" name="btnSubmit" id="btnSubmit" value="확인" onclick="retrieveUserPw()">비밀번호 찾기</button>      
					</div>
									
				</div>

			</div>			
			
			<div class="form-group" id="message"></div>
		</div>
	</div>
	

<!-- 푸터  -->
	<jsp:include page="../common/foot.jsp"></jsp:include>
</body>
</html>