<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="boardListR.jsp">
<title>공지사항</title>


	<link href="${context}/css/bootstrap.css" rel="stylesheet">
<%-- 	<link href="${context}/css/bootstrap-theme.css" rel="stylesheet"> --%>
	<link href="${context}/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">
	<link href="${context}/css/plugins/datatables.css" rel="stylesheet">

    <link href="${context}/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${context}/font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    <link href="${context}/css/buy.css" rel="stylesheet">
    
	<script src="${context}/js/jquery-1.9.1.js"></script>
<!-- 	<script src="../js/bootstrap.bundle.js"></script> -->

    <script src="${context}/js/plugins/metisMenu/metisMenu.min.js"></script>

<%--     <script src="${context}/js/plugins/dataTables/jquery.dataTables.js"></script> --%>
    <script src="${context}/js/plugins/dataTables/datatables.js"></script>

    <script src="${context}/js/sb-admin-2.js"></script>
</head>
<body>
<jsp:include page="../common/top.jsp"></jsp:include>
<div class="container" style="margin-top: 2%; margin-bottom: 10%;">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Board Tables</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						Board List Page
						<c:if test="${sessionScope.id != null && sessionScope.grade == 'A'}">
							<button id="regBtn" type="button" class="btn btn-xs btn-danger pull-right">Register New Board</button>
						</c:if>
					</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
						<table width="100%"
							class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th>#번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>작성일</th>
								</tr>
							</thead>
		
								<tbody>
			                    	<c:forEach items="${dsBoardList}" var="dsBoardList" varStatus="courseIdx">
			                         <tr>
			  							<td><a href ="${context}/work/notice/retrieveBoard.do?bno=${dsBoardList.BNO}">${dsBoardList.BNO}</a></td>
										<td><a href="${context}/work/notice/retrieveBoard.do?bno=${dsBoardList.BNO}">${dsBoardList.TITLE}</a></td>
										<td><c:out value="${dsBoardList.WRITER}" /></td>
										<td><fmt:formatDate pattern="yyyy-MM-dd" value="${dsBoardList.REGDATE}" /></td>

			                         </tr>
				                    </c:forEach>
			                    </tbody>
						</table>
		<!-- 			table 태그의 끝 	-->
		
						<div class="row">
							<div class="col-lg-12">
								<form id="searchForm" action="/work/notice/retrieveBoardList.do" method="get">
		<!-- 						select 태그의 내부는 삼항 연산자를 이용해서 해당 조건으로 검색되었다면  			-->
		<!-- 						'selected'라는 문자열을 출력하게 해서 화면에서 선택된 항목으로 보이도록 처리합니다.  	-->
									<select name="type">
										<option value="" <c:out value="${pageMaker.cri.type == null ? 'selected': ''}"/>>--</option>					
											<option value="T" <c:out value="${pageMaker.cri.type eq 'T' ? 'selected': ''}"/>>제목</option>
											<option value="C" <c:out value="${pageMaker.cri.type eq 'C' ? 'selected': ''}"/>>내용</option>
											<option value="W" <c:out value="${pageMaker.cri.type eq 'W' ? 'selected': ''}"/>>작성자</option>
											<option value="TC" <c:out value="${pageMaker.cri.type eq 'TC' ? 'selected': ''}"/>>제목 or 내용</option>
											<option value="TW" <c:out value="${pageMaker.cri.type eq 'TW' ? 'selected': ''}"/>>제목 or 작성자</option>
											<option value="TWC" <c:out value="${pageMaker.cri.type eq 'TWC' ? 'selected': ''}"/>>제목 or 내용 or 작성자</option>
									</select>
									<input type="text" name="keyword" value='<c:out value="${pageMaker.cri.keyword}"/>'/>
									<input type="hidden" name="pageNum" value='<c:out value="${pageMaker.cri.pageNum}"/>'/>
									<input type="hidden" name="amount" value='<c:out value="${pageMaker.cri.amount}"/>'/>
									<button class="btn btn-success">Search</button>
								</form>					
							</div>
						</div>
		
		
		<!-- 			tables.html 소스에서 가져오고, 컨트롤 + 쉬프트 + F 로 정렬 처리		 -->
						<div class="Page pull-right">
							<ul class="pagination">
								<c:if test="${pageMaker.prev}">
									<li class="page-item previous"><a href="${pageMaker.startPage-1}">Prev</a></li>
								</c:if>
								<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
									<li class="page-item ${pageMaker.cri.pageNum == num ? "active":""} "><a href="${num}">${num}</a></li>
								</c:forEach>
								<c:if test="${pageMaker.next}">
									<li class="page-item next"><a href="${pageMaker.endPage +1}">Next</a></li>
								</c:if>
							</ul>
						</div>
		<!-- 			end Pagination -->
						
						<!-- Modal 추가-->
						<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
							aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">&times;</button>
										<h4 class="modal-title" id="myModalLabel">Modal title</h4>
									</div>
									<div class="modal-body">처리가 완료 되었습니다.</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
										<button type="button" class="btn btn-primary">Save
											changes</button>
									</div>
								</div>
								<!-- end /.modal-content -->
							</div>
							<!-- end /.modal-dialog -->
						</div>
						<!-- end /.modal -->
		
					</div>
					<!-- end /.panel-body -->
				</div>
				<!-- end /.panel -->
			</div>
			<!-- /.col-lg-6 -->
		</div>
		<!-- /.row -->
</div>
		<form id="actionForm" action="/work/notice/retrieveBoardList.do" method="get">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
			<input type="hidden" name="type" value='<c:out value="${pageMaker.cri.type}"/>'>
			<input type="hidden" name="keyword" value='<c:out value="${pageMaker.cri.keyword}"/>'>
		</form>
		
		<script type="text/javascript">
			$(document).ready(
					function() {
						var result = '<c:out value = "${result}" />';
		
						checkModal(result);
		
						history.replaceState({}, null, null);
		
						function checkModal(result) {
							if (result === '' || history.state) {
								return;
							}
							if (parseInt(result) > 0) {
								$(".modal-body").html(
										"게시글" + parseInt(result) + "번이 등록되었습니다.");
							}
		
							$("#myModal").modal("show");
						}
		
						$("#regBtn").on("click", function() {
							self.location = "/work/notice/createBoard.do";
						});
		
						var actionForm = $("#actionForm");
						$(".page-item a").on("click", function (e) {
							e.preventDefault();
							console.log('click');
							actionForm.find("input[name='pageNum']").val($(this).attr("href"));
							actionForm.submit();
						});
						
						// 게시물의 제목을 클릭하면 <form> 태그에 추가로 bno 값을 전송하기 위해서 
						// <input> 태그를 만들어 추가하고, 
						// <form> 태그의 action은 '/board/get'으로 변경한다. 
						$(".move").on("click", function (e) {
							e.preventDefault();
							actionForm.append("<input type='hidden' name='bno' value='"+ $(this).attr("href")+"'>");
							actionForm.attr("action","/board/get");
							actionForm.submit();
						});
						
						var searchForm = $("#searchForm");
						
						$("#searchForm button").on("click", function (e) {
							if (!searchForm.find("option:selected").val()) {
								alert("검색 종류를 선택해 주세요.")
								return false;
							}
							if (!searchForm.find("input[name='keyword']").val()) {
								alert("키워드를 입력해 주세요.")
								return false;
							}
							// 브라우저에서 검색 버튼을 클릭하면 form 태그의 전송은 막고,
							// 페이지 번호는 1이 되도록 처리합니다.
							searchForm.find("input[name='pageNum']").val("1");
							e.preventDefault();
							
							searchForm.submit();
						});
						
						
						
						
					});
		</script>
		
		<jsp:include page="../common/foot.jsp"></jsp:include>
		
</body>
</html>