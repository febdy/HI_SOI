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
                                <h2>면접 진단 영상</h2>
                                <!-- Blog Post 1 -->
                                <article class="post hentry">
                                    <div class="post-image">
                                    	<video id="as" width="750" height="400" controls="controls" poster="${pageContext.request.contextPath}/upload/${videoVo.videoThumnail}" preload="none">
											<source src="${pageContext.request.contextPath}/upload/${videoVo.videoSaveName}" type="video/mp4">
											<source src="${pageContext.request.contextPath}/upload/${videoVo.videoSaveName}" type="video/ogg">
										</video>
                                    </div>
                                    <header class="post-header">
                                        <h2>${videoVo.videoOriginName}</h2>
                                        <div class="blog-entry-meta">
                                            <div class="blog-entry-meta-date">
                                                <i class="fa fa-clock-o"></i>
                                                ${videoVo.videoDate}
                                            </div>
                                            <div class="blog-entry-meta-author">
                                                <i class="fa fa-user"></i>
                                                <a class="blog-entry-meta-author">${videoVo.userId}</a>
                                            </div>
                                        </div>
                                    </header>
                                    <!-- <div class="post-content">
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis qui facere laborum consectetur omnis, sed a unde, reprehenderit velit animi obcaecati asperiores, eum inventore consequatur molestias perferendis culpa assumenda ex. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt temporibus itaque dolor illo consectetur minus saepe quaerat ipsam sapiente. Eum voluptatum ratione commodi officiis ipsum accusamus impedit, pariatur itaque tenetur.
                                        </p>
                                    </div>
                                    <footer class="post-footer">
                                        <a id="spreadBtn" class="btn btn-color">분석 결과 보기</a>
                                    </footer> -->
                                </article>
                                <!-- /Blog Post 1 -->
                                
                                <div id="hiddenContent">
	                                <!-- Star -->
	                                <div class="star">
	                                    <div class="row">
	                                        <div class="col-md-12">
	                                            <div class="star-divider">
	                                                <div class="star-divider-icon">
	                                                    <i class=" fa fa-star"></i>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                                <!-- /Star -->
									<!-- 그래프 -->
								      <section id="main-content">
								          <section class="wrapper">
								          <h3><i class="fa fa-angle-right"></i> 면접 진단 결과</h3>
								              <!-- page start-->
								              <div class="tab-pane" id="chartjs">
								                  <div class="row mt">
								                      <div class="panel panel-default">
									                      <div class="col-lg-12">
									                          <div class="panel-heading">
									                          	  <i class="fa fa-area-chart"></i>&nbsp;&nbsp;&nbsp;영상 시간별 움직임 변화
									                          </div>
									                          
														      <canvas id="bar-chart" width="600" height="350"></canvas>

															<br/><br/><br/>
									                        <!-- /.panel-body -->
									                        <div class="panel-heading">
									                          	<i class="fa fa-area-chart"></i>&nbsp;&nbsp;&nbsp;영상 시간별 움직임 횟수표
									                        </div>
									                        <div class="table-responsive">
																<table class="admin-cat table table-bordered table-hover table-striped">
																    <thead>
																        <tr id="tt">
																            <th>Time</th>
																            <th>머리</th>
																            <th>눈</th>
																            <th>어깨</th>
																            <th>무릎</th>
																            <th>손</th>
																        </tr>
																    </thead>
																    <tbody id="listArea">
																    
																    
																    </tbody>
																</table>
						                         			</div>
						                         			<br/><br/><br/>
						                         			<div class="panel-heading">
										                        <i class="fa fa-area-chart"></i>&nbsp;&nbsp;&nbsp;부위별 움직임 방향
										                    </div>
										                    <br/>
						                         			<div class="col-lg-3">
							                         			머리
							                         			<table class="table table-bordered table-hover table-striped">
																	<thead>
																        <tr id="tt">
																            <th>방향</th>
																            <th>움직임 횟수</th>
																        </tr>
																    </thead>
																    <tbody id="faceArea">
																    	
																    
																    </tbody>
																</table>
						                         			</div>
						                         			<div class="col-lg-3">
						                         				어깨
							                         			<table class="table table-bordered table-hover table-striped">
																	<thead>
																        <tr id="tt">
																            <th>방향</th>
																            <th>움직임 횟수</th>
																        </tr>
																    </thead>
																    <tbody id="shoulderArea">
																    	
																    
																    </tbody>
																</table>
						                         			</div>
						                         			<div class="col-lg-3">
						                         				무릎
							                         			<table class="table table-bordered table-hover table-striped">
																	<thead>
																        <tr id="tt">
																            <th>방향</th>
																            <th>움직임 횟수</th>
																        </tr>
																    </thead>
																    <tbody id="kneeArea">
																    	
																    
																    </tbody>
																</table>
						                         			</div>
						                         			<div class="col-lg-3 wristArea">
						                         				손
							                         			<table class="table table-bordered table-hover table-striped">
																	<thead>
																        <tr id="tt">
																            <th>방향</th>
																            <th>움직임 횟수</th>
																        </tr>
																    </thead>
																    <tbody id="wristArea">
																    	
																    
																    </tbody>
																</table>
						                         			</div>
														</div>
									                       
									                    <!-- /.panel -->
								                      </div>
								                      
								                  </div>
								                  
								                  
								              </div>
								              <!-- page end-->
								          </section>          
								      </section>
	                                <!-- /그래프 -->
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
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>

</body>
<script>
$(document).ready(function(){
    
    videoDetailChart();

}); 

//Return with commas in between
var numberWithCommas = function(x) {
  return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
};

var barLabels = []; //라벨 배열변수(x축)
var barChartFaceData = []; //얼굴 배열
var barChartEyeData = []; //눈 배열

var dataPack1 = [1, 1, 2, 0, 3, 1, 2, 4, 0, 0, 0, 0, 1, 0, 1, 0, 0, 2, 2, 1, 3, 0, 0, 1];
var dataPack2 = [0, 0, 0, 0, 0, 1, 1, 0, 0, 2, 3, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0];
/*var dataPack3 = [17, 11, 22, 18, 12, 7, 5, 17, 11, 22, 18, 12, 7, 5, 17, 11, 22, 18, 12, 7, 5, 5, 5, 5];*/


var stackedBarChart = {
    labels: barLabels,
    datasets: [
   	{
	    label: '머리',
	    data: barChartFaceData,
	  					backgroundColor: "#D32F2F",
	  					hoverBackgroundColor: "#EF5350",
	  					hoverBorderWidth: 0
    },
    {
        label: '눈',
        data: barChartEyeData,
						backgroundColor: "#512DA8",
						hoverBackgroundColor: "#7E57C2",
						hoverBorderWidth: 0
    },
    {
        label: '어깨',
        data: dataPack2,
						backgroundColor: "#FFA000",
						hoverBackgroundColor: "#FFCA28",
						hoverBorderWidth: 0
    },
    {
        label: '무릎',
        data: dataPack2,
						backgroundColor: "#02a91e",
						hoverBackgroundColor: "#75c274",
						hoverBorderWidth: 0
    },
    {
        label: '손',
        data: dataPack2,
						backgroundColor: "#027cc4",
						hoverBackgroundColor: "#5696bc",
						hoverBorderWidth: 0
    },
    ]
}
//Chart.defaults.global.elements.rectangle.backgroundColor = '#FF0000';
function createStackedBarChart() {
var bar_ctx = document.getElementById('bar-chart');
new Chart(bar_ctx, {
  type: 'bar',
  data: stackedBarChart,
  options: {
   		animation: {
      	duration: 10,
      },
      tooltips: {
					mode: 'label',
        callbacks: {
        label: function(tooltipItem, data) { 
        	return data.datasets[tooltipItem.datasetIndex].label + ": " + numberWithCommas(tooltipItem.yLabel);
        }
        }
       },
      scales: {
        xAxes: [{ 
        	stacked: true, 
          gridLines: { display: false },
          }],
        yAxes: [{ 
        	stacked: true, 
          ticks: {
      			callback: function(value) {if (value % 1 === 0) return numberWithCommas(value); },
   				}, 
          }],
      }, // scales
      legend: {display: true}
  } // options
 });
}

 
var videoNo = "${videoVo.videoNo}";

function videoDetailChart() {	
		try {
		    $.ajax({
		        type : "post",
		        url : "${pageContext.request.contextPath}/mypage/api/detailchart",
		        data : {videoNo : videoNo},
		        dataType : "json",
		        
		        success : function(result) {
		 			//stackedbarchart
		 			//x축(시간 범위)
		            $.each(result.xBarList, function(inx, obj) {
		            	barLabels.push(obj);
		            });
		 			
		 			//머리
		            $.each(result.list1, function(inx, obj) {
		            	barChartFaceData.push(obj);
		            });
		 			
		 			//눈 깜빡임
		 			$.each(result.list2, function(inx, obj) {
		 				barChartEyeData.push(obj);
		 			});
		            
		            
		            createStackedBarChart();
		            
		            //시간별 움직임 횟수 테이블
		            for (var i=0; i<barLabels.length; i++) {
						timeTable(barLabels[i], barChartFaceData[i], barChartEyeData[i], "down");
		            }
		            
		            //움직임 총 합계
		            summer(result.analyzeSum);
		            
		            //얼굴 움직임 방향
		          	var faceDirection = [];
		            var faceList= [];
		            $.each(result.faceDirection, function(inx, obj) {
		            	faceDirection.push(obj);
		            })
		            $.each(result.faceList, function(inx, obj) {
		            	faceList.push(obj);
		            });
		            for (var i=0; i<faceDirection.length; i++) {
		            	faceMoveTable(faceDirection[i], faceList[i]);
		            }
		            
		            //어깨 움직임 방향
		            var shoulderDirection = [];
		            var shoulderList= [];
		            $.each(result.shoulderDirection, function(inx, obj) {
		            	shoulderDirection.push(obj);
		            })
		            $.each(result.shoulderList, function(inx, obj) {
		            	shoulderList.push(obj);
		            });
		            for (var i=0; i<shoulderDirection.length; i++) {
		            	shoulderMoveTable(shoulderDirection[i], shoulderList[i]);
		            }
		            
		            //무릎 움직임 방향
		            var kneeDirection = [];
		            var kneeList= [];
		            $.each(result.kneeDirection, function(inx, obj) {
		            	kneeDirection.push(obj);
		            })
		            $.each(result.kneeList, function(inx, obj) {
		            	kneeList.push(obj);
		            });
		            for (var i=0; i<kneeDirection.length; i++) {
		            	kneeMoveTable(kneeDirection[i], kneeList[i]);
		            }
		            
		            //손 움직임 방향
		            var wristDirection = [];
		            var wristList= [];
		            $.each(result.wristDirection, function(inx, obj) {
		            	wristDirection.push(obj);
		            })
		            $.each(result.wristList, function(inx, obj) {
		            	wristList.push(obj);
		            });
		            for (var i=0; i<wristDirection.length; i++) {
		            	wristMoveTable(wristDirection[i], wristList[i]);
		            }
		            
		            
		            
		        },
		        error : function(XMLHttpRequest, textStatus, errorThrown) {
		            alert('There is an error : method(group)에 에러가 있습니다.');
		        }
		    });
		 
		} catch (e) {
		    alert(e);
		}
}

//시간대별 움직임표
function timeTable(label, face, eye, updown) {
	var str = "";

	str += "    		<tr>";
	str += "                <td>"+label+"</td>";
	str += "                <td>"+face+"</td>";
	str += "                <td>"+eye+"</td>";
	str += "                <td>2</td>";
	str += "                <td>3</td>";
	str += "                <td>4</td>";
	str += "            </tr>";

	if (updown == "up") {
		$("#tt").after(str);
	} else if (updown == "down") {
		$("#listArea").append(str);
	} else {
		console.log("update 오류");
	}
};

//표 합계
function summer(analyzeSum) {
	var str = "";
	
	str += "    		<tr>";
	str += "                <td>"+analyzeSum[0]+"</td>";
	str += "                <td>"+analyzeSum[1]+"</td>";
	str += "                <td>"+analyzeSum[2]+"</td>";
	str += "                <td>"+analyzeSum[3]+"</td>";
	str += "                <td>"+analyzeSum[4]+"</td>";
	str += "                <td>"+analyzeSum[5]+"</td>";
	str += "            </tr>";
	
	$("#listArea").append(str);
}

//얼굴 움직임 방향
function faceMoveTable(Direction, List) {
	var str = "";
	
	str += "    		<tr>";
	str += "                <td>"+Direction+"</td>";
	str += "                <td>"+List+"</td>";
	str += "            </tr>";
	
	$("#faceArea").append(str);
}

//어깨 움직임 방향
function shoulderMoveTable(Direction, List) {
	var str = "";
	
	str += "    		<tr>";
	str += "                <td>"+Direction+"</td>";
	str += "                <td>"+List+"</td>";
	str += "            </tr>";
	
	$("#shoulderArea").append(str);
}

//무릎 움직임 방향
function kneeMoveTable(Direction, List) {
	var str = "";
	
	str += "    		<tr>";
	str += "                <td>"+Direction+"</td>";
	str += "                <td>"+List+"</td>";
	str += "            </tr>";
	
	$("#kneeArea").append(str);
}

//무릎 움직임 방향
function wristMoveTable(Direction, List) {
	var str = "";
	
	str += "    		<tr>";
	str += "                <td>"+Direction+"</td>";
	str += "                <td>"+List+"</td>";
	str += "            </tr>";
	
	$("#wristArea").append(str);
}
</script>
</html>