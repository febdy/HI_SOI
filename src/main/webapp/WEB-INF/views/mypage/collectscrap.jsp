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
                                            <li><a href="#">스크랩 영상</a></li>
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
                    <h2>스크랩 영상</h2>
                    <div class="product-grid">
                                    <div class="products-block">
                                        <div class="row product-items">
                            <div>
                                <!-- post item -->
								<c:forEach items="${scrapMap.scrapList}" var="scrapVo"> 
                                
                                <div class="col-lg-3 col-md-3 col-sm-6 product-cols first post-item wow fadeInUp">
                                    <div class="post-img">
                                        <a href="${pageContext.request.contextPath}/post/soiread/${scrapVo.postNo}"><img alt="" src="${pageContext.request.contextPath}/upload/${scrapVo.videoThumnail}"></a>
                                    </div>
                                    <div class="post-content blog-post-content">
                                        <h4><a href="${pageContext.request.contextPath}/post/soiread/${scrapVo.postNo}" style="<c:out value="${bMap.crtPage == idx?'color :#000000':' '}"/>">${scrapVo.postTitle}</a></h4>
                                    </div>
                                    <div class="meta post-meta">
                                        <div class="post-date post-meta-content">
                                            <i title="${scrapVo.postDate}" class="fa fa-clock-o"></i>
                                        </div>
                                        <div class="post-comment post-meta-content">
                                            <a title="Comments"><i class="fa fa-comment-o"></i>${scrapVo.postCmtCnt}</a>
                                        </div>
                                        <div class="post-like  post-meta-content">
                                            <a title="Likes"><i class="fa fa-heart"></i>${scrapVo.postSoiCnt}</a>
                                        </div>
                                        <div class="post-link post-meta-content">
                                            <a title="Hits"><i class="fa fa-user fa-2x"></i>${scrapVo.postHitCnt}</a>
                                        </div>
                                    </div>
                                </div>
                                
                                </c:forEach>
                             </div>
                             </div>
                                <!-- /post item --> 
                                <div class="pagination-centered padding-bottom30">
								<ul class="pagination">
						<c:if test="${scrapMap.prev}"> <!-- 이 값이 false라면 prev 실행 x -->
						<li><a href="${pageContext.request.contextPath}/mypage/collect/scrap?crtPage=${scrapMap.startPageBtnNo-1}">◀</a></li>
						</c:if>
						
						<c:forEach begin="${scrapMap.startPageBtnNo}" end="${scrapMap.endPageBtnNo}" var="idx">
							<li><a href="${pageContext.request.contextPath}/mypage/collect/scrap?crtPage=${idx}" style="<c:out value="${scrapMap.crtPage == idx?'color :#FF0000':' '}"/>">${idx}</a></li>
						</c:forEach>
						
						<c:if test="${scrapMap.next}"> <!-- 이 값이 false라면 next 실행 x -->
							<li><a href="${pageContext.request.contextPath}/mypage/collect/scrap?crtPage=${scrapMap.endPageBtnNo+1}">▶</a></li>
						</c:if>
					</ul>
							</div>
      					</div>
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
</html>