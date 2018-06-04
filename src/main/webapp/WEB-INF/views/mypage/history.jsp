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
    	
    <!-- Page level plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/vendor/chart.js/Chart.js"></script>
    <!-- Custom scripts for this page-->
    <script src="${pageContext.request.contextPath}/resources/js/sb-admin-charts.js"></script>
</body>

<script>
//lineChart 변수
var lineLabels = []; //라벨 배열변수(x축)
var lineChartData = []; //면접점수 데이터 배열변수(y축)

var myLineChart = {
    labels: lineLabels,
    datasets: [{
      label: "면접 점수",
      lineTension: 0.3,
      backgroundColor: "rgba(2,117,216,0.2)",
      borderColor: "rgba(2,117,216,1)",
      pointRadius: 5,
      pointBackgroundColor: "rgba(2,117,216,1)",
      pointBorderColor: "rgba(255,255,255,0.8)",
      pointHoverRadius: 5,
      pointHoverBackgroundColor: "rgba(2,117,216,1)",
      pointHitRadius: 20,
      pointBorderWidth: 2,
      data: lineChartData,
    }],
};

function createLineChart() {
	var ctx1 = document.getElementById("myAreaChart");
    new Chart(ctx1, {
    	type: 'line',
    	data: myLineChart,
        options: {
            scales: {
              xAxes: [{
                time: {
                  unit: 'date'
                },
                gridLines: {
                  display: false
                },
                ticks: {
                  maxTicksLimit: 7
                }
              }],
              yAxes: [{
                ticks: {
                  min: 0,
                  max: 100,
                  maxTicksLimit: 10
                },
                gridLines: {
                  color: "rgba(0, 0, 0, .125)",
                }
              }],
            },
            legend: {
              display: false
            }
        }
    });
}

//barChart 변수
var barLabels = []; //라벨 배열변수(x축)
var barChartData = []; //면접점수 데이터 배열변수(y축)

var myBarChart = {
	    labels: barLabels,
	    datasets: [{
	      label: "면접점수",
	      backgroundColor: "rgba(2,117,216,1)",
	      borderColor: "rgba(2,117,216,1)",
	      data: barChartData,
	    }],
	  };
	  
function createBarChart() {
	var ctx2 = document.getElementById("myBarChart");
    new Chart(ctx2, {
    	  type: 'bar',
    	  data: myBarChart,
    	  options: {
    	    scales: {
    	      xAxes: [{
    	        time: {
    	          unit: 'time'
    	        },
    	        gridLines: {
    	          display: false
    	        },
    	        ticks: {
    	          maxTicksLimit: 6
    	        }
    	      }],
    	      yAxes: [{
    	        ticks: {
    	          min: 0,
    	          max: 100,
    	          maxTicksLimit: 5
    	        },
    	        gridLines: {
    	          display: true
    	        }
    	      }],
    	    },
    	    legend: {
    	      display: false
    	    }
    	}
    });
}

var ctx3 = document.getElementById("myPieChart");
var myPieChart = new Chart(ctx3, {
  type: 'pie',
  data: {
    labels: ["얼굴", "눈", "어깨", "손", "발"],
    datasets: [{
      data: [12.21, 15.58, 11.25, 8.32, 9.34],
      backgroundColor: ['#007bff', '#dc3545', '#ffc107', '#28a745', '#f520db'],
    }],
  },
});


function historyTotalChart() {
	try {
	    $.ajax({
	        type : "post",
	        url : "${pageContext.request.contextPath}/mypage/api/historychart",
	        dataType : "json",
	        
	        success : function(result) {
	 			//lineChart
	            $.each(result.list1.reverse(), function(inx, obj) {
	            	lineLabels.push(obj.realDate); //일단 videoDate가 mongoDB에 없으므로, videoNo값을 받아 오겠음.
	            	lineChartData.push(obj.total_grade);
	            });
	            console.log(lineLabels);
	            console.log(lineChartData);
	            
	            createLineChart();
	 			
				//barChart
	            $.each(result.list2.reverse(), function(inx, obj) {
	            	barLabels.push(obj.realDate); //일단  x축에 사용할 videoDate가 현재 mongoDB에 없으므로, videoNo값을 받아 오겠음.
	            	barChartData.push(obj.total_grade); //임의로 VideoVo 에서 값을 넣어줌.
	            });
	            console.log(barLabels);
	            console.log(barChartData);
	            
	            createBarChart();
	        },
	        error : function(XMLHttpRequest, textStatus, errorThrown) {
	            alert('There is an error : method(group)에 에러가 있습니다.');
	        }
	    });
	 
	} catch (e) {
	    alert(e);
	}
	
}

$(document).ready(function() {
	historyTotalChart();
});


</script>
</html>