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
						<div class="content-wrapper">
						    <div class="container-fluid">
						      	<!-- Breadcrumbs-->
						      	<ol class="breadcrumb">
							        <li class="breadcrumb-item">
							          	<a href="#">진단 히스토리</a>
							        </li>
							        <li class="breadcrumb-item active">면접 진단 현황</li>
						      	</ol>
						      	<!-- Area Chart Example-->
						      	<div class="card mb-3">
							        <div class="card-header">
							          	<i class="fa fa-area-chart"></i> 최근 10개 면접 점수</div>
							          	<br/>
							        <div class="card-body">
							          	<canvas id="myAreaChart" width="100%" height="30"></canvas>
							        </div>
							        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
							      	</div>
						      	<br/><br/><br/><br/>
						      	<div class="row">
							        <div class="col-lg-8">
							          <!-- Example Bar Chart Card-->
							          <div class="card mb-3">
							          	<div class="card-header">
							              <i class="fa fa-bar-chart"></i> 상위 6개 면접 점수</div>
							              <br/>
							            <div class="card-body">
							              <canvas id="myBarChart" width="100" height="50"></canvas>
							            </div>
							            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
							          </div>
							        </div>
							        <div class="col-lg-4">
							          <!-- Example Pie Chart Card-->
							          	<div class="card mb-3">
							            <div class="card-header">
							            	<i class="fa fa-pie-chart"></i> 상위 면접 실패 원인</div>
							            	<br/>
							            <div class="card-body">
							              	<canvas id="myPieChart" width="100%" height="100"></canvas>
							            </div>
							            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
							          	</div>
						        	</div>
						    	</div>
						    </div>
						    <!-- /.container-fluid-->
                        
                     	</div>
                	</div>
                	<!-- /내용 부분 -->
            	</div>
        	</div>
		</div>
	</section>
    <!-- /Main Section -->
           
    <!-- Footer -->
    <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
    <!-- /Footer -->
           
    <%-- <script src="${pageContext.request.contextPath}/resources/js/chart-master/Chart.js"></script>
   	<script src="${pageContext.request.contextPath}/resources/js/chartjs-conf.js"></script> --%>
    	
    <!-- Page level plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/vendor/chart.js/Chart.js"></script>
    <!-- Custom scripts for this page-->
    <script src="${pageContext.request.contextPath}/resources/js/sb-admin-charts.js"></script>
</body>
</html>