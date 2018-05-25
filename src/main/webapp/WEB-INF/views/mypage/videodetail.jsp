<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- MetisMenu CSS -->
   <link href="${pageContext.request.contextPath}/resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
<!-- Morris Charts CSS -->
   <link href="${pageContext.request.contextPath}/resources/vendor/morrisjs/morris.css" rel="stylesheet">
<!-- Custom CSS -->
   <link href="${pageContext.request.contextPath}/resources/js/dist/css/sb-admin-2.css" rel="stylesheet">
    
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
                                    </div> -->
                                    <footer class="post-footer">
                                        <a id="spreadBtn" class="btn btn-color">분석 결과 보기</a>
                                    </footer>
                                </article>
                                <!-- /Blog Post 1 -->
                                
                                <div id="hiddenContent" style="display: none;">
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
									                            	영상 시간별 움직임 변화
									                          </div>
									                          <!-- /.panel-heading -->
									                          <div class="panel-body">
									                              <div class="flot-chart">
									                                  <div class="flot-chart-content" id="flot-line-chart"></div>
									                              </div>
									                          </div>
									                        <!-- /.panel-body -->
									                        <div class="table-responsive">
						                                        <table class="table table-bordered table-hover table-striped">
						                                            <thead>
						                                                <tr>
						                                                    <th>#</th>
						                                                    <th>Date</th>
						                                                    <th>Time</th>
						                                                    <th>Amount</th>
						                                                </tr>
						                                            </thead>
						                                            <tbody>
						                                                <tr>
						                                                    <td>3326</td>
						                                                    <td>10/21/2013</td>
						                                                    <td>3:29 PM</td>
						                                                    <td>$321.33</td>
						                                                </tr>
						                                                <tr>
						                                                    <td>3325</td>
						                                                    <td>10/21/2013</td>
						                                                    <td>3:20 PM</td>
						                                                    <td>$234.34</td>
						                                                </tr>
						                                                <tr>
						                                                    <td>3324</td>
						                                                    <td>10/21/2013</td>
						                                                    <td>3:03 PM</td>
						                                                    <td>$724.17</td>
						                                                </tr>
						                                                <tr>
						                                                    <td>3323</td>
						                                                    <td>10/21/2013</td>
						                                                    <td>3:00 PM</td>
						                                                    <td>$23.71</td>
						                                                </tr>
						                                                <tr>
						                                                    <td>3322</td>
						                                                    <td>10/21/2013</td>
						                                                    <td>2:49 PM</td>
						                                                    <td>$8345.23</td>
						                                                </tr>
						                                                <tr>
						                                                    <td>3321</td>
						                                                    <td>10/21/2013</td>
						                                                    <td>2:23 PM</td>
						                                                    <td>$245.12</td>
						                                                </tr>
						                                                <tr>
						                                                    <td>3320</td>
						                                                    <td>10/21/2013</td>
						                                                    <td>2:15 PM</td>
						                                                    <td>$5663.54</td>
						                                                </tr>
						                                                <tr>
						                                                    <td>3319</td>
						                                                    <td>10/21/2013</td>
						                                                    <td>2:13 PM</td>
						                                                    <td>$943.45</td>
						                                                </tr>
						                                            </tbody>
						                                        </table>
						                                    </div>
						                                    <!-- /.table-responsive -->
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
            
    <!-- Metis Menu Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/vendor/metisMenu/metisMenu.min.js"></script>
    <!-- Chart -->
    <script src="${pageContext.request.contextPath}/resources/js/chart-master/Chart.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/flot/excanvas.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/flot/jquery.flot.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/flot/jquery.flot.pie.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/flot/jquery.flot.resize.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/flot/jquery.flot.time.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/flot-tooltip/jquery.flot.tooltip.min.js"></script>
    <!-- style -->
    <script src="${pageContext.request.contextPath}/resources/js/dist/js/sb-admin-2.js"></script>
    
<%--     <script src="${pageContext.request.contextPath}/resources/vendor/raphael/raphael.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/morrisjs/morris.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/morrisjs/data/morris-data.js"></script> --%>
</body>
<script>
$(document).ready(function(){
    $("#spreadBtn").click(function(){
        if($("#hiddenContent").is(":visible")){
        	$("#spreadBtn").text("분석 결과 보기");
            $("#hiddenContent").css("display", "none");
        }else{
        	$("#spreadBtn").text("분석 결과 접기");
            $("#hiddenContent").css("display", "block");
        }
    });
});

//Flot Line Chart
$(document).ready(function() {

    var offset = 0;
    plot();

    function plot() {
        var sin = [],
            cos = [];
        for (var i = 0; i < 12; i += 0.2) {
            sin.push([i, Math.sin(i + offset)]);
            cos.push([i, Math.cos(i + offset)]);
        }

        var options = {
            series: {
                lines: {
                    show: true
                },
                points: {
                    show: true
                }
            },
            grid: {
                hoverable: true //IMPORTANT! this is needed for tooltip to work
            },
            yaxis: {
                min: -1.2,
                max: 1.2
            },
            tooltip: true,
            tooltipOpts: {
                content: "'%s' of %x.1 is %y.4",
                shifts: {
                    x: -60,
                    y: 25
                }
            }
        };

        var plotObj = $.plot($("#flot-line-chart"), [{
                data: sin,
                label: "sin(x)"
            }, {
                data: cos,
                label: "cos(x)"
            }],
            options);
    }
    
});

</script>
</html>