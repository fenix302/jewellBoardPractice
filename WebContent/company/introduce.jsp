<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="description" content="sellBuyListR.jsp">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>JEWELL 소개</title>

	<link href="${context}/css/location.css" rel="stylesheet">
	<link href="${context}/css/bootstrap.min.css" rel="stylesheet">
	<link href="${context}/css/bootstrap-theme.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${context}/font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<script src="${context}/js/jquery-1.9.1.js"></script>
	<script src="${context}/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="/common/top.jsp"></jsp:include>
	<div id="body"></div>
	<script src="${context}/js/jquery.tubular.1.0.js"></script>
	<script type="text/javascript">
		$("document").ready(function() {
			$('#body').tubular({videoId: 'V8K6g5cHXLs'});
		});
	</script>
</body>
</html>