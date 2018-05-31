<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

		<!-- Header -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		<!-- /Header -->

		<!-- Main Section -->
            <section id="main">
                <!-- Title, Breadcrumb -->
                <div class="breadcrumb-wrapper">
                    <div class="pattern-overlay">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                    <h2 class="title">마이페이지</h2>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                    <div class="breadcrumbs pull-right">
                                        <ul>
                                            <li>You are Now on:</li>
                                            <li><a href="index.html">마이페이지</a></li>
                                            <li><a href="#">영상관리</a></li>
                                            <li>Products Single Page</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Title, Breadcrumb -->
                
                <!-- Main Content -->
                <div class="content margin-top60 margin-bottom60">
                    <div class="container">
                        <div class="row">
                            <div class="sidebar col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                <!-- Left nav Widget Start -->
                                <div class="widget category">
                                    <h3 class="title">My page</h3>
                                    <ul class="category-list slide">
                                        <li><a href="${pageContext.request.contextPath}/mypage/history">진단 히스토리</a></li>
                                        <li><a href="${pageContext.request.contextPath}/mypage/videoclip">영상 관리</a></li>
                                        <li><a href="${pageContext.request.contextPath}/mypage/collect/comment">내가 작성한 댓글</a></li>
                                        <li><a href="${pageContext.request.contextPath}/mypage/collect/video">내가 올린 영상</a></li>
                                        <li><a href="${pageContext.request.contextPath}/mypage/collect/scrap">스크랩 영상</a></li>
                                        <li><a href="${pageContext.request.contextPath}/mypage/beforemodify">회원 정보 수정</a></li>
                                    </ul>
                                </div>
                                <!-- Left nav Widget End -->
                            </div>
                            <!-- Sidebar End -->
                            
                            
                            <!-- 내용 부분 -->
                            <div class="posts-block col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                <h2>영상관리</h2>
                                <table class="table table-striped table-bordered">
                                	<colgroup>
										<col width="6%">
										<col width="10%">
										<col width="63%">
										<col width="15%">
										<col width="6%">
									</colgroup>
                                    <thead>
                                        <tr>
                                            <th><p class="text-center" style='text-align:center; margin:0px;'>번호</p></th>
                                            <th><p class="text-center" style='text-align:center; margin:0px;'>영상</p></th>
											<th><p class="text-center" style='text-align:center; margin:0px;'>제목</p></th>
											<th><p class="text-center" style='text-align:center; margin:0px;'>작성일</p></th>
											<th><p class="text-center" style='text-align:center; margin:0px;'>삭제</p></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <c:forEach items="${myVideoMap.myVideoList}" var="videoVo">
										<tr>
											<td style='text-align:center; vertical-align:middle;'>${videoVo.rn}</td>
											<td>
                                                    <a class="product-image" href="${pageContext.request.contextPath}/mypage/videoclip/detail?videoNo=${videoVo.videoNo}">
                                                    <img width="70" height="70" title="" alt="" src="${pageContext.request.contextPath}/upload/${videoVo.videoThumnail}">
                                                    </a>
                                                </td>
											<td style='text-align:center; vertical-align:middle;'><a href="${pageContext.request.contextPath}/mypage/videoclip/detail?videoNo=${videoVo.videoNo}">${videoVo.videoOriginName}</a></td>
											<td style='text-align:center; vertical-align:middle;'>${videoVo.videoDate}</td>
											<td style='text-align:center; vertical-align:middle;'><span id="deleteBtn" data-no="${videoVo.videoNo}"><a href='javascript:void(0)'><i class="fa fa-minus-square-o fa-2x text-danger"></i></a></span></td>
										</tr>
										</c:forEach>
                                    </tbody>
                                </table>
                                
                                <div class="pagination-centered padding-bottom30">
								<ul class="pagination">
									<c:if test="${myVideoMap.prev}">
										<!-- 이 값이 false라면 prev 실행 x -->
										<li><a href="${pageContext.request.contextPath}/mypage/videoclip?crtPage=${myVideoMap.startPageBtnNo-1}">«</a></li>
									</c:if>

									<c:forEach begin="${myVideoMap.startPageBtnNo}" end="${myVideoMap.endPageBtnNo}" var="idx">
										<li><a href="${pageContext.request.contextPath}/mypage/videoclip?crtPage=${idx}" style="<c:out value="${myVideoMap.crtPage == idx?'color :#FF0000':' '}"/>">${idx}</a></li>
									</c:forEach>

									<c:if test="${myVideoMap.next}">
										<!-- 이 값이 false라면 next 실행 x -->
										<li><a href="${pageContext.request.contextPath}/mypage/videoclip?crtPage=${myVideoMap.endPageBtnNo+1}">»</a></li>
									</c:if>
								</ul>
								</div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- /Main Section -->
            
            <!-- Footer -->
            <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
            <!-- /Footer -->
        
</body>

<script>
$("tr").on("click", "#deleteBtn", function() {
	var no=$(this).data("no");
	
	console.log(no);
	
	if (confirm("영상을 정말로 삭제하시겠습니까?")==true) {
	
		$.ajax({
				url : "${pageContext.request.contextPath}/mypage/api/updatevideo",
				type : "post",
				data : {no:no},

				dataType : "json",
				success : function(videoVo) {
					console.log(videoVo);
					window.location.replace("../../hi/mypage/videoclip");
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}		
		});
	
	};
	
});

</script>
</html>