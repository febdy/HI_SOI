<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
                                            <li><a href="#">Q&A</a></li>
                                            <li></li>
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
                                <h4 class="widget">Q&A > 글보기</h4>
                                <div>
                                <label for="lname">제목 </label><br/>
                                </div>
                       			<div class="well">
                                	${requestScope.qnaVo.qnaTitle}
                                	</div>
                                	<div>
                                	<label for="lname">내용 </label><br/>
                                	</div>
                                <div class="well">
                                		<div class="view-content">
										<!-- 치환 한 것 기억 -->
										${fn:replace(requestScope.qnaVo.qnaContent , ctrl, "</br>" )}
										</div>
								</div>
								
								<div class="bottom pull-right">
									<a class="btn btn-color btn-normal btn-pad" href="${pageContext.request.contextPath}/cs/qna?qnaNo=${qnaVo.qnaNo}&page=${pCri.page}&numPerPage=${pCri.numPerPage}">글목록</a>
									<c:if test="${authUser.userId==qnaVo.userId}">
										<a class="btn btn-color btn-normal btn-pad" href="${pageContext.request.contextPath}/cs/qna/modifyform?qnaNo=${requestScope.qnaVo.qnaNo}&page=${pCri.page}&numPerPage=${pCri.numPerPage}">글수정</a>
										<a class="btn btn-color btn-normal btn-pad" href="${pageContext.request.contextPath}/cs/qna/delete?qnaNo=${qnaVo.qnaNo}&page=${pCri.page}&numPerPage=${pCri.numPerPage}">글삭제</a>

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