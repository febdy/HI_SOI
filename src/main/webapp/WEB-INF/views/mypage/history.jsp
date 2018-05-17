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
                                            <li><a href="#">진단 히스토리</a></li>
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
                                <h2>진단 히스토리</h2>
                                <!--main content start-->
							      <section id="main-content">
							          <section class="wrapper">
							          <h3><i class="fa fa-angle-right"></i> Chartjs Charts</h3>
							              <!-- page start-->
							              <div class="tab-pane" id="chartjs">
							                  <div class="row mt">
							                      <div class="col-lg-6">
							                          <div class="content-panel">
														  <h4><i class="fa fa-angle-right"></i> Doughnut</h4>
							                              <div class="panel-body text-center">
							                                  <canvas id="doughnut" height="300" width="400"></canvas>
							                              </div>
							                          </div>
							                      </div>
							                      <div class="col-lg-6">
							                          <div class="content-panel">
														  <h4><i class="fa fa-angle-right"></i> Line</h4>
							                              <div class="panel-body text-center">
							                                  <canvas id="line" height="300" width="400"></canvas>
							                              </div>
							                          </div>
							                      </div>
							                  </div>
							                  <div class="row mt">
							                      <div class="col-lg-6">
							                          <div class="content-panel">
														  <h4><i class="fa fa-angle-right"></i> Radar</h4>
							                              <div class="panel-body text-center">
							                                  <canvas id="radar" height="300" width="400"></canvas>
							                              </div>
							                          </div>
							                      </div>
							                      <div class="col-lg-6">
							                          <div class="content-panel">
														  <h4><i class="fa fa-angle-right"></i> Polar Area</h4>
							                              <div class="panel-body text-center">
							                                  <canvas id="polarArea" height="300" width="400"></canvas>
							                              </div>
							                          </div>
							                      </div>
							                  </div>
							                  <div class="row mt">
							                      <div class="col-lg-6">
							                          <div class="content-panel">
														  <h4><i class="fa fa-angle-right"></i> Bar</h4>
							                              <div class="panel-body text-center">
							                                  <canvas id="bar" height="300" width="400"></canvas>
							                              </div>
							                          </div>
							                      </div>
							                      <div class="col-lg-6">
							                          <div class="content-panel">
														  <h4><i class="fa fa-angle-right"></i> Pie</h4>
							                              <div class="panel-body text-center">
							                                  <canvas id="pie" height="300" width="400"></canvas>
							                              </div>
							                          </div>
							                      </div>
							                  </div>
							              </div>
							              <!-- page end-->
							          </section>          
							      </section><!-- /MAIN CONTENT -->
                                
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