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
                                    <h2 class="title">고객센터</h2>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                    <div class="breadcrumbs pull-right">
                                        <ul>
                                            <li>You are Now on:</li>
                                            <li><a href="index.html">고객센터</a></li>
                                            <li><a href="#">공지사항</a></li>
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
                                    <h3 class="title">Cutomer Service</h3>
                                    <ul class="category-list slide">
                                        <li><a href="${pageContext.request.contextPath}/cs/notice">공지사항</a></li>
                                        <li><a href="${pageContext.request.contextPath}/cs/qna">Q&A</a></li>
                                        <li><a href="${pageContext.request.contextPath}/cs/help">도움말</a></li>
                                    </ul>
                                </div>
                                <!-- Left nav Widget End -->
                            </div>
                            <!-- Sidebar End -->
                            
                            
                            <!-- 내용 부분 -->
                            <div class="posts-block col-lg-9 col-md-9 col-sm-9 col-xs-12">
                            <div id="content" class="row form-horizontal">
                            <div class="col-md-2">
                                <h4>공지사항</h4>
                                </div>
                                <!-- Post Search -->
                                <div class="col-md-10 widget">
									<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 pull-right">
										<form id="search_form" action="${pageContext.request.contextPath}/cs/notice" method="get" class="input-group">
											<input type="text" value="Search Posts" id="kwd" name="kwd" 
												onfocus="if(this.value=='Search Posts')this.value='';"
												onblur="if(this.value=='')this.value='Search Posts';"
												class="search-input form-control product-search-height">
											<span class="input-group-btn">
												<button type="submit"
													class="subscribe-btn btn product-search-height">
													<i class="fa fa-search"></i>
												</button>
											</span>
											<input type="hidden" name="page" value="${pagingMaker.cri.page}">
										</form>
									</div>
								</div>
							</div>
							<!-- /Post Search -->
                                <table class="table table-striped table-bordered text-center">
                                	<colgroup>
										<col width="7%">
										<col width="40%">
										<col width="10%">
										<col width="10%">
										<col width="20%">
										<col width="">
									</colgroup>
                                    <thead>
                                        <tr>
                                            <th><p class="text-center" style='text-align:center; margin:0px;'>번호</p></th>
											<th><p class="text-center" style='text-align:center; margin:0px;'>제목</p></th>
											<th><p class="text-center" style='text-align:center; margin:0px;'>글쓴이</p></th>
											<th><p class="text-center" style='text-align:center; margin:0px;'>조회수</p></th>
											<th><p class="text-center" style='text-align:center; margin:0px;'>작성일</p></th>
												<c:if test="${authUser.userLevel=='administer'}">
													<th><p class="text-center">&nbsp;</p></th>
												</c:if>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${bMap}" var="csVo">
										<tr>
											<td>${csVo.rn}</td>
											<!-- /board/view/${list.no}로 PathVariable 값 넘길 때 넘기는 방법 약간 다르다는 것 기억 -->
											<td><a href="${pageContext.request.contextPath}/cs/notice/view/${csVo.notiNo}?page=${pagingMaker.cri.page}&numPerPage=${pagingMaker.cri.numPerPage}">${csVo.notiTitle}</a></td>
											<td>${csVo.userLevel}</td>
											<td>${csVo.notiHitCnt}</td>
											<td>${csVo.notiDate}</td>
												<c:if test="${authUser.userLevel=='administer'}"> <!-- userlevel이 관리자급이라면 삭제 버튼 보이게 -->
													<td>
														<a href="${pageContext.request.contextPath}/cs/notice/delete?notiNo=${csVo.notiNo}&page=${pagingMaker.cri.page}&numPerPage=${pagingMaker.cri.numPerPage}" id="deleteBtn" class="del"><i class="fa fa-minus-square-o fa-2x text-danger"></i></a>
													</td>
												</c:if>
										</tr>
									</c:forEach>
                                    </tbody>
                                </table>
                                
                                <div class="pagination-centered padding-bottom30">
									<ul class="pagination">
									<c:if test="${pagingMaker.prev}"> <!-- 이 값이 false라면 prev 실행 x -->
										<li><a href="${pageContext.request.contextPath}/cs/notice?page=${pagingMaker.startPage-1}&numPerPage=${pagingMaker.cri.numPerPage}">«</a></li>
									</c:if>
						
									<c:forEach begin="${pagingMaker.startPage}" end="${pagingMaker.endPage}" var="idx">
										<li><a href="${pageContext.request.contextPath}/cs/notice?page=${idx}&numPerPage=${pagingMaker.cri.numPerPage}" style="<c:out value="${pagingMaker.cri.page == idx?'color :#FF0000':' '}"/>">${idx}</a></li>
									</c:forEach>
						
									<c:if test="${pagingMaker.next}"> <!-- 이 값이 false라면 next 실행 x -->
										<li><a href="${pageContext.request.contextPath}/cs/notice?page=${pagingMaker.endPage+1}&numPerPage=${pagingMaker.cri.numPerPage}">»</a></li>
									</c:if>
									</ul>
								</div>
								
								<div class="pull-right">
									<c:if test="${authUser.userLevel=='administer'}">
										<div class="bottom">
											<a href="${pageContext.request.contextPath}/cs/notice/writeform" id="new-book"><i class="fa fa-pencil-square-o fa-2x"></i></a>
										</div>
									</c:if>
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