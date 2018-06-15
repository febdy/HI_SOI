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
                                    <h2 class="title">면접진단</h2>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                    <div class="breadcrumbs pull-right">
                                        <ul>
                                            <li>You are Now on:</li>
                                            <li><a href="${pageContext.request.contextPath}/interview/livemode">면접진단</a></li>
                                            <li><a href="${pageContext.request.contextPath}/interview/livemode">실시간 모드</a></li>
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
                                    <h3 class="title">Interview</h3>
                                    <ul class="category-list slide">
                                        <li><a href="${pageContext.request.contextPath}/interview/livemode">실시간 모드</a></li>
                                        <li><a href="${pageContext.request.contextPath}/interview/uploadmode">업로드 모드</a></li>
                                    </ul>
                                </div>
                                <!-- Left nav Widget End -->
                            </div>
                            <!-- Sidebar End -->
                            
                            
                            <!-- 내용 부분 -->
                            <div class="container">
                        		<h2 class="section-title">실시간 면접 진행</h2>
                        		<p>모의 면접 프로그램은 과열된 취업경쟁 상황 속에서 차별화된 나만의 성공전략을 제공합니다. 면접은 최종 관문으로 나의 가치를 제대로 표현하는 일이 무엇보다 중요합니다. 모의 면접 프로그램은 '나'를 객관적으로 분석할 수 있도록 도우며, '나'의 역량을 보여주는 커뮤니케이션 능력으로 당신을 초대합니다.</p>
                            	<div class="posts-block col-lg-9 col-md-9 col-sm-9 col-xs-12">
                             		<a id="example_bottom" class="btn btn-success pull-right" data-rel="popover" data-content="웹 캠을 준비하시고, 면접 보기 버튼을 클릭하면 5초 후 시작되오니, 면접 자세를 취해주세요." data-original-title="실시간 모드"> 실시간모드 사용법</a>
                                	<br/><br/><br/>
									<video width="640" height="344" controls="controls" poster="http://media.w3.org/2010/05/sintel/poster.png" preload="none">
										<source src="${pageContext.request.contextPath}/upload/1522631005209f387b194-816d-4067-9bf6-f932a73a3b0a.mp4" type="video/mp4">
										<source src="http://media.w3.org/2010/05/sintel/trailer.ogv" type="video/ogg">
									</video>
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