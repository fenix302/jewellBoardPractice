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
	<title>JEWELL-오시는 길</title>

	<link href="${context}/css/location2.css" rel="stylesheet">
	<link href="${context}/css/bootstrap.min.css" rel="stylesheet">
	<link href="${context}/css/bootstrap-theme.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${context}/font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<script src="${context}/js/jquery-1.9.1.js"></script>
	<script src="${context}/js/bootstrap.min.js"></script>
</head>
<body>
<!-- 헤더 -->
<jsp:include page="/common/top.jsp"></jsp:include>

<!-- 페이지 헤더 -->
<div class="page_header">
	 <div class="location_header">
	       <div class="name">
	             <p class="comeText">오시는 길</p>
	        </div>
	  </div>
</div>

<!-- 	<div class="text-center mg-t100 mg-b100">
		<h1><strong>찾아오시는 길</strong></h1>
	</div> -->
	
	
<!-- 본문 -->
	<h3><strong>서울 구로구 경인로 557 신한은행 4층</strong></h3>
	
	<div class="container">
		<div id="map" style="width:100%;height:350px; margin-bottom: 50px"></div>
		<div id="clickLatlng"></div>
	</div>
	<div class="container text-center mg-b100">
	  <div class="row">
	    <div class="col-md-6">
	      <img id="locationimg" alt="도보이미지" src="/locationImg/walking_location.svg">
	    </div>
	    <div class="col-md-6 text-left fs-15px">
			<strong>도보로 오시려면</strong> <br>
			<br><br>
			지번 : 서울 구로구 경인로 557 삼영빌딩 4층<br>
			우편번호 : 08216
	    </div>
	  </div>
	</div>
	<div class="container text-center mg-b100">
	  <div class="row">
	    <div class="col-md-6">
	      <img id="locationimg" alt="버스이미지" src="/locationImg/bus_location.svg">
	    </div>
	    <div class="col-md-6 text-left fs-15px">
			<strong>버스로 오시려면</strong> <br>
			<br><br>
			5630번 버스나 5626번 버스 이용<br>
	    </div>
	  </div>
	</div>
	<div class="container text-center mg-b100">
	  <div class="row">
	    <div class="col-md-6">
	      <img id="locationimg" alt="지하철이미지" src="/locationImg/subway_location.svg">
	    </div>
	    <div class="col-md-6 text-left fs-15px">
			<strong>지하철로 오시려면</strong> <br>
			<br><br>
			지하철 1호선 구로역 3번출구<br>
			구로역 맞은편 삼영빌딩 4층
	    </div>
	  </div>
	</div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4a3c4fcfa5a54d02d981e8713d261798"></script>
	<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = { 
	        center: new kakao.maps.LatLng(37.503068, 126.879147), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };
	
	// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	var map = new kakao.maps.Map(mapContainer, mapOption);
	
	// 지도를 클릭한 위치에 표출할 마커입니다
	var marker = new kakao.maps.Marker({ 
	    // 지도 중심좌표에 마커를 생성합니다 
	    position: map.getCenter() 
	}); 
	// 지도에 마커를 표시합니다
	marker.setMap(map);

	var iwContent = '<div style="padding:5px; font-size: 15px; text-align: center;"><b>JEWELL 본사</b><br><a href="https://map.kakao.com/link/map/JEWELL 본사,37.503068,126.879147" style="color:blue; text-decoration: none;" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/JEWELL 본사,37.503068,126.879147" style="color:blue; text-decoration: none;" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
    iwPosition = new kakao.maps.LatLng(37.503068, 126.879147); //인포윈도우 표시 위치입니다

	// 인포윈도우를 생성합니다
	var infowindow = new kakao.maps.InfoWindow({
	    position : iwPosition, 
	    content : iwContent 
	});
	  
	// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
	infowindow.open(map, marker); 
	</script>
<jsp:include page="/common/foot.jsp"></jsp:include>
</body>
</html>