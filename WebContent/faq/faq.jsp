<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="faq.jsp">
<title>JEWELL FAQ</title>
<link href="${context}/css/bootstrap.css" rel="stylesheet">
<link href="${context}/css/faq.css" rel="stylesheet">
<script src="${context}/js/jquery-1.9.1.js"></script>
<script src="${context}/js/faq.js" defer type="text/javascript"></script>
<link
    href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200&display=swap"
    rel="stylesheet"
 />
</head>
<body>
<!-- 헤더 -->
<jsp:include page="../common/top.jsp"></jsp:include>


<!-- 페이지 헤더 -->
<div class="page_header">
	 <div class="faq_header">
	       <div class="name">
	             <p class="comeText">FAQ</p>
	        </div>
	  </div>
</div>

<!--         <h3>FAQ 자주하는 질문</h3> -->

<!-- 본문 -->
    <!-- 검색  -->
    <div class="container-md">
        <div class="faq_search_box">
            <select class="form-select" aria-label="Default select example">
                <option selected>전체검색</option>
                <option value="2">상품문의</option>
                <option value="3">목걸이 체인 문의</option>
                <option value="4">주문/결제문의</option>
                <option value="5">배송문의</option>
                <option value="6">취소/반품/환불/교환</option>
                <option value="7">쿠폰/적립금문의</option>
                <option value="8">A/S문의</option>
                <option value="9">기타</option>
              </select>
              
              <div class="container-fluid">
                <form class="d-flex" role="search">
                  <input class="form-control me-2" type="search" placeholder="궁금한 내용을 검색해 보세요" aria-label="Search">
                  <div class="search_img">
                      <a href="#"><img src="${context}/css/images/search.ico" width="25px"></a>
                  </div>
                </form>
              </div>
              
              <div class="faq_menu">
	                <a href="#">전체보기</a>
	                <a href="#">상품문의</a>
	                <a href="#">목걸이 체인 문의</a>
	                <a href="#">주문/결제문의</a>
	                <a href="#">배송문의</a>
	                <a href="#">취소/반품/환불/교환</a>
	                <a href="#">쿠폰/적립금문의</a>
	                <a href="#">A/S문의</a>
	                <a href="#">기타</a>
              </div>
              
            </div>
            
            
       <!-- faq  -->
            <div class="faq-box container-md ">
              <ul>
                <li>
                  <div class="faq-box_question">
	                    <span class="question">Q</span>
	                    <span class="question_ann">주문한 상품이 아닌 다른 상품 또는 불량상품이 배송되었습니다.</span>
                
                  </div>
                  <div class="faq-box_answer">
	                    <span class="answer">A</span> 
	                    <span class="answer_ann">
	                    <br>먼저, 하자/오배송으로 불편을 드려 죄송합니다. <br>
						유주얼리에서 책임을 지고 정상제품으로 교환해 드리겠습니다! <br> <br>
						
						잘못된 상품의 검품 및 재준비를 위해서 상품을 반드시 바디럽 측으로 보내주셔야 처리가 되니, 번거로우시더라도 양해 부탁드립니다.
						</span>
                  </div>
                </li>
                
                <li>
                    <div class="faq-box_question">
	                    <span class="question">Q</span>
	                    <span class="question_ann">반품하려고 상품을 보냈는데 언제 처리 되나요?</span>
                    </div>
                    <div class="faq-box_answer">
	                    <span class="answer">A</span>
	                    <span class="answer_ann">
	                    <br>환불을 위해 상품을 보내주신 경우, 고객님이 상품을 보냄 > CJ대한통문 물류센터로 입고 (최대7일 소요) > 유주얼리 본사에서 확인하는 절차로 진행이 됩니다.<br>
						유리존에서 반품 상품을 확인 한 후 1~2일 내에 빠르게 처리하고 있습니다.<br>
						반품시에는 주문자명과 택배를 보내시는 분의 성명을 동일하게 보내주셔야합니다.
						</span>
                    </div>
                </li>
                
                <li>
                    <div class="faq-box_question">
	                    <span class="question">Q</span>
	                    <span class="question_ann">비회원 주문 가능한가요?</span>
                    </div>
                    <div class="faq-box_answer">
	                    <span class="answer">A</span>
	                    <span class="answer_ann">
	                    <br>회원가입 없이 비회원으로 구매 가능합니다.<br>
						주문하실 때 [비회원 구매] 버튼을 눌러 주문을 해주시기 바랍니다.<br>
						비회원 주문시 주문된 상품관련 내용을 확인 하실 때, '주문번호'와 '주문시 설정한 비밀번호'가 있어야하니 꼭 메모 부탁드립니다.
	                    </span>
                    </div>
                </li>
                
                <li>
                    <div class="faq-box_question">
	                    <span class="question">Q</span>
	                    <span class="question_ann">비회원으로 주문하였는데, 주문번호가 기억나지 않아요</span>
                    </div>
                    <div class="faq-box_answer">
	                    <span class="answer">A</span>
	                    <span class="answer_ann">
	                    <br>JEWELL 고객센터(02-488-4888)으로 운영시간에 전화주시면 빠르게 주문번호 조회 도와드리겠습니다.<br><br>

						고객센터 운영시간 : 평일 오전9시~오후5시 (점심시간 12시~1시) , 주말/공휴일 휴무
	                    </span>
                    </div>
                </li>
                
                <li>
                    <div class="faq-box_question">
	                    <span class="question">Q</span>
	                    <span class="question_ann">현금영수증 발급은 어떻게 하나요?</span>
                    </div>
                    <div class="faq-box_answer">
	                    <span class="answer">A</span>
	                    <span class="answer_ann">
	                    <br>현금영수증은 주문서 작성 시 직접 신청 가능하시며, 주문을 완료 한 뒤에 발급을 원하시는 경우 유주얼리 고객센터(02-488-4888)로 문의해주세요.
	                    </span>
                    </div>
                </li>
                
                <li>
                    <div class="faq-box_question">
	                    <span class="question">Q</span>
	                    <span class="question_ann">배송완료로 택배조회가 되는데 상품을 받지 못했습니다.</span>
                    </div>
                    <div class="faq-box_answer">
	                    <span class="answer">A</span>
	                    <span class="answer_ann">
	                   <br> 유주얼리에서 배송업체로 고객님이 주문하신 상품을 입고시킨 이후의 실시간 배송사항은 우체국 택배사를 통해 문의해주시면 됩니다.<br>
						발송일 당일 오후 10시 이후부터 배송추적이 가능하오니 참고 부탁드립니다.<br>
						운송장번호를 우체국 배송조회 사이트에서 조회하면 빠르게 확인 가능합니다.
	                    </span>
                    </div>
                </li>
                
                <li>
                    <div class="faq-box_question">
	                    <span class="question">Q</span>
	                    <span class="question_ann">배송상태가 ‘발송’상태 인데 배송추적이 되지 않습니다.</span>
                    </div>
                    <div class="faq-box_answer">
	                    <span class="answer">A</span>
	                    <span class="answer_ann">
	                    <br>주문상태가 '발송'으로 표시되면, 고객님이 주문하신 상품이 JEWELL에서 물류업체로 넘어간 상태입니다.<br>
						물류업체에서 출고가 되었지만 택배사 집하점의 스캔이 입력되지 않은 시간동안 배송추적이 안될 수 있습니다.<br>
						발송으로 바뀐 당일의 오후 10시 이후에 조회를 해주시면 배송 추적이 가능하니 확인 부탁드리겠습니다.
	                    </span>
                    </div>
                </li>
                
                <li>
                    <div class="faq-box_question">
	                    <span class="question">Q</span>
	                    <span class="question_ann">반품하려고 상품을 보냈는데 언제 처리 되나요?</span>
                    </div>
                    <div class="faq-box_answer">
	                    <span class="answer">A</span>
	                    <span class="answer_ann">
	                    <br>환불을 위해 상품을 보내주신 경우, 고객님이 상품을 보냄 > CJ대한통문 물류센터로 입고 (최대7일 소요) > JEWELL 본사에서 확인하는 절차로 진행이 됩니다.<br>
						유리존에서 반품 상품을 확인 한 후 1~2일 내에 빠르게 처리하고 있습니다.<br>
						반품시에는 주문자명과 택배를 보내시는 분의 성명을 동일하게 보내주셔야합니다.
	                    </span>
                    </div>
                </li>
            </ul>
            
            <div class="page_nav">
	            <nav aria-label="Pagenavigation example">
	                <ul class="pagination justify-content-center">
	                  <li class="page-item"><a class="page-link" href="#">&lt;</a></li>
	                  <li class="page-item"><a class="page-link" href="#">1</a></li>
	                  <li class="page-item"><a class="page-link" href="#">2</a></li>
	                  <li class="page-item"><a class="page-link" href="#">3</a></li>
	                  <li class="page-item"><a class="page-link" href="#">4</a></li>
	                  <li class="page-item"><a class="page-link" href="#">&gt;</a></li>
	                </ul>
	            </nav>
            </div>
        </div>
    </div>
    
    
<!-- 푸터 -->
    <jsp:include page="../common/foot.jsp"></jsp:include>
</body>
</html>