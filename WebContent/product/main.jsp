<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="description" content="main.jsp">

    <link
    href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200&display=swap"
    rel="stylesheet"
 />
    <link rel="stylesheet" href="${context}/css/main.css">
    <script src="${context}/js/jquery-1.9.1.js"></script>

    <!-- owl.carousel -->
    <link rel="stylesheet" href="${context}/css/owl.carousel.min.css">
    <script src="${context}/js/owl.carousel.min.js"></script>

    <!-- popup -->
    <script src="${context}/js/jquery.cookie.js"></script>
    <script>
        $(function () {
           //쿠키("popup")의 값이 'none'이면 id 값이 인 요소를 숨김니다.
           if ($.cookie('popup') == 'none') {
              $('#modal').hide();
           }
           var $expireChk = $('#expireChk');
           $('.closeBtn').on('click', closePop);
           function closePop() {
              if ($expireChk.is(':checked')) {
                 $.cookie('popup', 'none', {expires: 3, path: '/'});
              }
              $('#modal').fadeOut('fast');
           }
        });
    </script>

    <title>JEWELL</title>
</head>







<c:set var="loginUrl">${context}/user/login.jsp</c:set>

<c:set var="earUrl1">${context}/work/product/retrieveProduct.do?productCode=E0026</c:set>
<c:set var="neckUrl1">${context}/work/product/retrieveProduct.do?productCode=N0016</c:set>
<c:set var="ringUrl1">${context}/work/product/retrieveProduct.do?productCode=R003</c:set>
<c:set var="braceletUrl1">${context}/work/product/retrieveProduct.do?productCode=B0035</c:set>
<c:set var="earUrl2">${context}/work/product/retrieveProduct.do?productCode=E0023</c:set>
<c:set var="neckUrl2">${context}/work/product/retrieveProduct.do?productCode=N0012</c:set>
<c:set var="ringUrl2">${context}/work/product/retrieveProduct.do?productCode=R001</c:set>
<c:set var="braceletUrl2">${context}/work/product/retrieveProduct.do?productCode=B0029</c:set>

<c:set var="productManageUrl">${context}/work/product/retrieveProductListForManage.do</c:set>
<c:set var="statisticsForProductUrl">${context}/work/sell/retrieveStatisticsForProduct.do</c:set>
<c:set var="statisticsForStockUrl">${context}/work/product/retrieveStatisticsForStock.do?productCategoryCd=R</c:set>








<body>
<jsp:include page="../common/top.jsp"></jsp:include>

  <c:if test="${sessionScope.grade != 'A'}">
    <!-- 팝업 -->
    <div id="modal">
        <div class="modal_up">
            <div class="uptitle">
               <span class="pop_title">
                   JEWELL 설날 연휴영업 안내
               </span>
            </div>
            <div class="upbody">
               <span class="pop_announce">
                    2023년 설 연휴 기간 영업 일정을 안내해드립니다. <br><br><br>
               </span> 

               <span class="pop_day_title">                
                    - 연휴 기간 영업 일정 - <br>
               </span>
               1월 20일 (금) - 정상 운영<br>
               1월 23일,24일 (월,화) - 휴무<br>
               1월 25일(수) - 정상 운영<br><br>
               

               <span class="pop_announce">               
                    매장 방문 및 이용에 참고 부탁드리며,<br>
                    행복하고 즐거운 설 연휴 되시길 바랍니다.<br>
                    감사합니다.
               </span>
            </div>
            <p class="closewrap">
                <input type="checkbox" name="expireChk" id="expireChk" />
                <label for="expireChk">3일동안 이 창 열지 않기</label>
                <button class="closeBtn">닫기</button>
            </p>
        </div>
    </div>


    <!-- 배너 -->
    <div class="con">
        <div class="banner">
            <div class="owl-carousel">
                <div class="banner_img"> <img src="/css/images/banner_01.png" alt="#"> </div>
                <div class="banner_img"> <img src="/css/images/banner_02.png" alt="#"> </div>
                <div class="banner_img"> <img src="/css/images/banner_03.png" alt="#"> </div>
                <div class="banner_img"> <img src="/css/images/banner_04.png" alt="#"> </div>
                <!-- 이미지 배너 사이즈 맞게 수정 예정 -->
            </div>


            <script>
                var owl = $('.owl-carousel');
                owl.owlCarousel({
                    items:1,
                    loop:true,
                    margin:0,
                    autoplay:true,
                    autoplayTimeout:3000,
                    autoplayHoverPause:true
                });
            </script>
        </div>


        <!-- 콘텐츠-BEST -->
        <div class="content">
            <div class="best_group">
                <div class="group_name">
                    <p class="con_name">BEST</p>
                </div>

                <div class="inner_group">
                    <div class="item1">
	                    <div class="img">
	                       <a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${earUrl1}')" ><img src="${context}/earImg/ear06.jpg" ></a>
	                    </div>
                        <div class="item">
                            <a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${earUrl1}')" ><p class="item_name">3chain drop earring</p></a>
                            <p class="item_ann">각기 다른 세가지 체인이 믹스되어 찰랑거리며 반짝이는 것이 포인트인 드롭 귀걸이</p>
                        </div>
                    </div>

                    <div class="item2">
	                    <div class="img">
	                       <a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${neckUrl1}')" ><img src="${context}/neckImg/neck06.jpg" ></a>
	                    </div>
                        <div class="item">
                            <a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${neckUrl1}')" ><p class="item_name">14k 라운드 콤비 목걸이</p></a>
                            <p class="item_ann">섬세한 디테일이 돋보이는 두개의 링이 콤비로 제작된 목걸이</p>
                        </div>
                    </div>

                    <div class="item3">
	                    <div class="img">
	                       <a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${ringUrl1}')" ><img src="${context}/ringImg/ring03.jpg" ></a>
	                    </div>
                        <div class="item">
                            <a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${ringUrl1}')" ><p class="item_name">탄생석 하트 체인반지</p></a>
                            <p class="item_ann">빛나는 당신의 일상 속 나만의 탄생석을 입힌 작은 별</p>
                        </div>
                    </div>

                    <div class="item4">
	                    <div class="img">
	                       <a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${braceletUrl1}')" ><img src="${context}/braceletImg/bracelet07.jpg" ></a>
	                    </div>
                        <div class="item">
                            <a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${braceletUrl1}')" ><p class="item_name">Slim ballchain Bracelet (믹스체인/골드)</p></a>
                            <p class="item_ann">로맨틱함으로 룩에 포인트를 줄 수 있는 아이템</p>
                        </div>
                    </div>
                </div>                
                
            </div>
            

            <!-- 콘텐츠-관심있는 제품 -->
            <div class="best_group">
                <div class="group_name">
                    <p class="con_name">관심있는 상품</p>
                </div>

                <div class="inner_group">
                    <div class="item1">
	                    <div class="img">
	                       <a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${earUrl2}')" ><img src="${context}/earImg/ear03.jpg" ></a>
	                    </div>
                        <div class="item">
                            <a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${earUrl2}')" ><p class="item_name">blueberries</p></a>
                            <p class="item_ann">실버 볼이 지닌 구 형태의 조형성과 반지가 가진 원의 조합을 떠올리며 진행한 디자인</p>
                        </div>
                    </div>

                    <div class="item2">
	                    <div class="img">
	                       <a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${neckUrl2}')" ><img src="${context}/neckImg/neck02.jpg" ></a>
	                    </div>
                        <div class="item">
                            <a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${neckUrl2}')" ><p class="item_name">애비로드 실버 목걸이</p></a>
                            <p class="item_ann">레이스 체인과 모던 클래식한 커브 체인을 두 줄 믹스로 레이어드한 목걸이</p>
                        </div>
                    </div>

                    <div class="item3">
	                    <div class="img">
	                       <a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${ringUrl2}')" ><img src="${context}/ringImg/ring01.jpg" ></a>
	                    </div>
                        <div class="item">
                            <a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${ringUrl2}')" ><p class="item_name">실버 볼 하트 반지</p></a>
                            <p class="item_ann">러블리한 하트 이니셜 팬던트와 볼 쉐입으로 즐기는 드롭형 반지</p>
                        </div>
                    </div>

                    <div class="item4">
	                    <div class="img">
	                       <a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${braceletUrl2}')" ><img src="${context}/braceletImg/bracelet01.jpg" ></a>
	                    </div>
                        <div class="item">
                            <a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${braceletUrl2}')" ><p class="item_name">Lucky days Bracelet</p></a>
                            <p class="item_ann">초록색 젬스톤과 하트, 말발굽 참 장식, 행운 가득한 브레이슬릿</p>
                        </div>
                    </div>
                </div>               
                
            </div>
        </div>
    </div>
  </c:if>


<!--     관리자 페이지 입니다 -->
  <c:if test="${sessionScope.grade == 'A'}">
         <div class="container" style="margin-top: 10%; margin-bottom: 10%">
            <div class="row">
               <div class="col-md-3">
                   <a href="${context}/work/notice/retrieveBoardList.do" class="btn btn-success" style="width: 100%; height: 250px;" role="button">
                     <h1><span class="glyphicon glyphicon-list-alt" style="font-size: 80px; margin-top: 5%;"></span> <br/>공지사항</h1>
                  </a>
               </div>
               <div class="col-md-3">
                   <a href="${productManageUrl}" class="btn btn-primary" style="width: 100%; height: 250px;" role="button">
                     <h1><span class="glyphicon glyphicon-list-alt" style="font-size: 80px; margin-top: 5%;"></span> <br/>재고관리</h1>
                  </a>
               </div>
               <div class="col-md-3">
                   <a href="${statisticsForProductUrl}" class="btn btn-danger" style="width: 100%; height: 250px;" role="button">
                     <h1><span class="glyphicon glyphicon-signal" style="font-size: 80px; margin-top: 5%;"></span> <br/>매출통계</h1>
                   </a>
               </div>
               <div class="col-md-3">
                   <a href="${statisticsForStockUrl}" class="btn btn-info" style="width: 100%; height: 250px;" role="button">
                     <h1><span class="glyphicon glyphicon-eye-open" style="font-size: 80px; margin-top: 5%;"></span> <br/>재고현황</h1>
                    </a>
               </div>
            </div>
         </div>
  </c:if>
    <jsp:include page="../common/foot.jsp"></jsp:include>
</body>
</html>