<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link href="${context}/css/detail.css" rel="stylesheet">

 
</head>
<body>
<jsp:include page="../common/top.jsp"></jsp:include>
    <main class="container">

       
        <div class="wrapper">
          <div class="new">
         <img src="/ringImg/ring01.jpg" alt="#">
         </div>
      
          <div class="exp">
              <h3>EARING</h3>
              <h5>제품설명</h5>
              <hr color="#666666">
              <div class="sell">
                  <h4>판매가</h4>
                  <h6>145,000원</h6>
              </div>
              <div class="made">
                  <h4>제조사</h4>
                  <h6>Jewell</h6>
              </div>
              <div class="brand">
                  <h4>브랜드</h4>
                  <h6>Jewell</h6>
              </div>
              <div class="point">
                  <h4>적립금</h4>
                  <h6>14,500 p</h6>
              </div>
                  <!-- <button type="submit">"Add to Cart ------ 14,000원"</button> -->
                  <hr color="#666666">
                  <div class="ring1">
                      <h4>링 종류</h4>
                      <button type="submit" style="width: 344px; height: 28px; ">"silver"</button>
                  </div>
                  <div class="ring2">
                      <h4>링 사이즈</h4>
                      <button type="submit" style="width: 344px; height: 28px;">"17호"</button>
                  </div>
                  <hr color="#666666">
                  <button type="submit"style="width: 223px; height: 50px;" class="btn1">"Add to Cart"</button>
                  <button type="submit"style="width: 223px; height: 50px;" class="btn2">"Buy"</button>
              </div>
            </div>

      
       
              <div class="content">
            <div class="best_group">
                <div class="group_name">
                    <p class="con_name">BEST</p>
                </div>

                <div class="inner_group">
                    <div class="item1">
	                    <div class="img">
	                       <a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${earUrl1}')" ><img src="${context}/earImg/ear06.jpg"  ></a>
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

                  <%--   <div class="item4">
	                    <div class="img">
	                       <a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${braceletUrl1}')" ><img src="${context}/braceletImg/bracelet07.jpg" ></a>
	                    </div>
                        <div class="item">
                            <a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${braceletUrl1}')" ><p class="item_name">Slim ballchain Bracelet (믹스체인/골드)</p></a>
                            <p class="item_ann">로맨틱함으로 룩에 포인트를 줄 수 있는 아이템</p>
                        </div> --%>
                    </div>
                </div>                
                
            </div>
            
          
           
      </main>
      <jsp:include page="../common/foot.jsp"></jsp:include>
</body>
</html>