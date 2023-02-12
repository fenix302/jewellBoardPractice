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

	<link href="${context}/css/location.css" rel="stylesheet">
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
	

<div class="container col-md-8">

	<div class="map_box">
            <div class="text1">
               <span class="name2">&nbsp;JEWELL&nbsp;</span>
               <p class="announce">
               <strong> ▷ 서울 구로구 경인로 557 신한은행 4층</strong><br>
                  방문 시에는 반드시 마스크를 착용해 주시고, 코로나19 방역수칙을 지켜주시기
                  바랍니다.
               </p>
            </div>
            
            <!-- 지도 -->
            <div id="map"> 
            </div>
           
            <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4a3c4fcfa5a54d02d981e8713d261798"></script>

            <script>
               var container = document.getElementById('map');
               var options = {
                  center: new kakao.maps.LatLng(37.567283765403744, 126.97895774407993),			
                  level: 3
               };

               var map = new kakao.maps.Map(container, options);

               var markerPosition = new kakao.maps.LatLng(
                  37.567283765403744,
                  126.97895774407993
               );
               var marker = new kakao.maps.Marker({
                  position: markerPosition,
               });

               marker.setMap(map);
            </script>
            <hr />
            
          
          
        <!-- 서술  -->
            <div class="text2">
               <span class="name2">&nbsp;서울시청 주차장 안내&nbsp;</span>
               <p class="announce2">
                  ▷ 주차공간이 많이 부족하오니 되도록 대중교통을 이용해 주시기 바랍니다.<br />
                  ▷ 주차정보안내시스템(<a href="http://parking.seoul.go.kr/"
                     >http://parking.seoul.go.kr/</a
                  >)에서 시청 주변 공영주차장을 확인하실 수 있습니다. <br />
                  ▷ 청사 시설물을 보호하기 위해 높이 2.3m 이상 차량은 주차장으로 진입할 수 없습니다.<br /><br />
               </p>

               <span class="name2">&nbsp;개방시간&nbsp;</span>
               <p class="announce2">
                  <strong> 평일</strong> : 08:30~21:00 <br />
                  <strong> 주말 및 공휴일</strong> : 09:00 ~21:00 (시민청 개방시간과 동일)<br />
                  <thin>
                     매월 넷째 주 수요일 '대중교통 이용의 날'은 서울시 및 산하기관, 자치구 부설
                     주차장이 폐쇄됩니다.(장애인 차량, 긴급차량 등 제외)<br />
                     서울광장 행사 등으로 인해 주차수요 과포화 및 교통 혼잡이 예상될 경우 주차장
                     이용이 제한될 수 있습니다.</thin
                  ><br />
                  <br />
               </p>

               <span class="name2">&nbsp;주차요금&nbsp;</span>
               <p class="announce2">
               		▷ 경차 : 10분당 1,000원 (평일 09:00~18:00만 부과)<br />
               		▷ 중형차 : 10분당 1,200원 (평일 09:00~18:00만 부과)
               </p>
            </div>
         </div>

</div>
	

	
	
<!-- 본문 -->
	<!-- <h3><strong>서울 구로구 경인로 557 신한은행 4층</strong></h3>
	
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
	</script> -->
<jsp:include page="/common/foot.jsp"></jsp:include>
</body>
</html>