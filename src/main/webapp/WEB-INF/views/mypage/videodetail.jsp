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
                                            <li><a href="#">영상관리 </a></li>
                                            <li>영상 진단결과</li>
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
                                <h2>영상 진단 결과</h2>
                                
                                ${videoVo.videoOriginName}
                                
                                <div class="col-md-4 col-sm-4 mb">
									<!-- REVENUE PANEL -->
									<div class="darkblue-panel pn">
										<div class="darkblue-header">
											<h5>REVENUE</h5>
										</div>
										<div class="chart mt">
											<div class="sparkline" data-type="line" data-resize="true" data-height="75" data-width="90%" data-line-width="1" data-line-color="#fff" data-spot-color="#fff" data-fill-color="" data-highlight-line-color="#fff" data-spot-radius="4" data-data="[200,135,667,333,526,996,564,123,890,464,655]"></div>
										</div>
										<p class="mt"><b>$ 17,980</b><br/>Month Income</p>
									</div>
								</div><!-- /col-md-4 -->
								
								<div class="row mt">
			                      <!--CUSTOM CHART START -->
			                      <div class="border-head">
			                          <h3>VISITS</h3>
			                      </div>
			                      <div class="custom-bar-chart">
			                          <ul class="y-axis">
			                              <li><span>10.000</span></li>
			                              <li><span>8.000</span></li>
			                              <li><span>6.000</span></li>
			                              <li><span>4.000</span></li>
			                              <li><span>2.000</span></li>
			                              <li><span>0</span></li>
			                          </ul>
			                          <div class="bar">
			                              <div class="title">JAN</div>
			                              <div class="value tooltips" data-original-title="8.500" data-toggle="tooltip" data-placement="top">85%</div>
			                          </div>
			                          <div class="bar ">
			                              <div class="title">FEB</div>
			                              <div class="value tooltips" data-original-title="5.000" data-toggle="tooltip" data-placement="top">50%</div>
			                          </div>
			                          <div class="bar ">
			                              <div class="title">MAR</div>
			                              <div class="value tooltips" data-original-title="6.000" data-toggle="tooltip" data-placement="top">60%</div>
			                          </div>
			                          <div class="bar ">
			                              <div class="title">APR</div>
			                              <div class="value tooltips" data-original-title="4.500" data-toggle="tooltip" data-placement="top">45%</div>
			                          </div>
			                          <div class="bar">
			                              <div class="title">MAY</div>
			                              <div class="value tooltips" data-original-title="3.200" data-toggle="tooltip" data-placement="top">32%</div>
			                          </div>
			                          <div class="bar ">
			                              <div class="title">JUN</div>
			                              <div class="value tooltips" data-original-title="6.200" data-toggle="tooltip" data-placement="top">62%</div>
			                          </div>
			                          <div class="bar">
			                              <div class="title">JUL</div>
			                              <div class="value tooltips" data-original-title="7.500" data-toggle="tooltip" data-placement="top">75%</div>
			                          </div>
			                      </div>
			                      <!--custom chart end-->
								</div><!-- /row -->	
								
								
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