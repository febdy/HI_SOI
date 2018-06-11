<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.lineProgressbar.css">

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
                                            <li><a href="index.html">면접진단</a></li>
                                            <li><a href="#">업로드 모드</a></li>
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
                              <h2 class="section-title">업로드 면접 진행</h2>
                              <p>Bootstrap includes a responsive, mobile first fluid grid system that appropriately scales up to 12 columns as the device or viewport size increases. Grid systems are used for creating page layouts through a series of rows and columns that house your content. To learn more see <a target="_blank" href="http://getbootstrap.com/css/#grid">http://getbootstrap.com/css/#grid</a></p>
                            <div class="posts-block col-lg-9 col-md-9 col-sm-9 col-xs-12">
                               <a id="example_bottom" class="btn btn-success pull-right" data-rel="popover" data-content="면접 영상을 첨부한다." data-original-title="침착하게"> 업로드모드 사용법</a>
                                <br/><br/><br/>
                                   <!-- 진단하기 -->
                                   <form id="fileUpload" method="post" enctype="multipart/form-data">
                              
                              <div class="form-group">
                              <label>&nbsp;</label>
                              <input type="file" name="file" id="file">
                              </div>
                              
                              <div class="pull-left">
                              <input type="button" class="btn-xs btn-default glyphicon glyphicon-ok text-primary" id="uploadBtn" value="진단하기"/>
                              </div>
                           </form>
                           <br/><br/><br/><br/>
                           <div id="progress" align="center">
                           <progress id="progressBar" value="0" max="100" style="width:300px; display:none"></progress>
                           <span id="status" style="display:none;"></span>
                           </div>
                           
                           <div id="videoArea">
                              
                           </div>
                           <%-- <div class="panel-heading">
                                        <i class="fa fa-area-chart"></i>&nbsp;&nbsp;&nbsp;영상 시간별 움직임 변화
                                   </div>
                                   
                              <canvas id="bar-chart" width="600" height="350"></canvas>

                           <br/><br/><br/>
                                 <!-- /.panel-body -->
                                 
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
                                  </div> --%>
                                   
                           <%-- <form id="fileUpload" action="${pageContext.request.contextPath}/interview/upload" method="post" enctype="multipart/form-data">
                              
                              <div class="form-group">
                              <label>&nbsp;</label>
                              <input type="file" name="file" id="file">
                              </div>
                              
                              <div class="pull-left">
                              <input type="button" class="btn-xs btn-default" id="uploadBtn">
                              <span class="glyphicon glyphicon-ok text-primary"> 진단하기</span>
                              </div>
                              
                           </form> --%>
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

<script src="http://malsup.github.com/jquery.form.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/socket.io/1.4.8/socket.io.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.lineProgressbar.js"></script>

<!-- chart -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>

<script>
var socket, corr_status;

$(document).ready(function(){
   socket = io.connect('http://127.0.0.1:5000');
   
   socket.on('connect', function(){
      socket.send('User has connected!');
   });
   
   socket.on('message', function(result){
      console.log('Received message from server:::' + result);
      videoNo = result;
      
      if(videoNo != 0){
         alert("파일을 업로드 하였습니다.");
         selectCorrectVideo(videoNo);
         $("#file").val("");
      } else if (videoNo == 0)
         alert("분석하는 도중 문제가 생겼습니다.");
   });
   
});
   
var authUser='${sessionScope.authUser}';

//무한로딩으로 바꾸기(Indeterminate)
function progressBarSim(al) {
   var bar = document.getElementById('progressBar');
   var status = document.getElementById('status');
     bar.style.display="block";
     status.style.display="block";
     status.innerHTML = al+"%";
     bar.value = al;
     al++;
      var sim = setTimeout("progressBarSim("+al+")", 10);
      if(al == 100){
        status.innerHTML = "100%";
        bar.value = 100;
        clearTimeout(sim);
        bar.style.display="none";
        status.style.display="none";
   }
}
var amountLoaded = 0;

$("#uploadBtn").on("click", function() {
   //var video=document.getElementByID("listArea");
   //while (video.val()!=null) {
   //   $("#listArea").remove();
   //}
   if ($("#file").val()=="") {
      if (authUser=="") {
         alert("로그인이 필요한 서비스입니다.");
      } else{
         alert("파일 업로드에 실패하였습니다.");
      }
   } else if ($("#file").val()!="") {
      if (authUser=="") {
            alert("로그인이 필요한 서비스 입니다.");
            $("#file").val("");
      } else {
         var formData=new FormData($("#fileUpload")[0]);
        /*  progressBarSim(amountLoaded); //임시 */
         $.ajax({
            type : "post",
            url : "${pageContext.request.contextPath}/interview/api/upload",
            data : formData,
            processData : false,
            contentType : false,
            success : function(videoNo) {
               if (videoNo!=0) {
                  
                  //alert("파일을 업로드 하였습니다.");
                  socket.emit("video_data", videoNo);

                  /* document.getElementById('progressBar').style.display="none";
                  document.getElementById('status').style.display="none"; */

               } else {
                  alert("파일 업로드에 실패하였습니다.");
               }
            },
            error : function(error) {
               alert("파일 업로드에 실패하였습니다.");
               $("#file").val("");
               console.log(error);
               console.log(error.status);
            }
         
         });
      }
   }
});

function readylist(mongoVo) {
   $("#videoArea").text("");
   
   var str = "";
   str += "<div id='videoCh' class='post-image'>";
   str +=     "<video id='myVideo' width='750' height='400' controls='controls' poster='${pageContext.request.contextPath}/upload/"+mongoVo.videoThumnail+"' preload='none'>";
   str +=          "<source src='${pageContext.request.contextPath}/upload/"+mongoVo.videoSaveName+"' type='video/mp4'>";
   str +=        "<source src='${pageContext.request.contextPath}/upload/"+mongoVo.videoSaveName+"' type='video/ogg'>";
   str +=     "</video>";
   str += "</div>";
   
   $("#videoArea").append(str);
};

function selectCorrectVideo(videoNo) {
   $.ajax({
      url : "${pageContext.request.contextPath}/interview/api/selectcorrectedvideo",
      type : "post",
      data : {
         videoNo : videoNo
      },

      dataType : "json",
      success : function(mongoVo) {
         readylist(mongoVo);
         
         videoDetailChart();
      },

      error : function(XHR, status, error) {
         console.error(status + " : " + error);
      }

   });
};


/////////////////////////////분석 결과

//Return with commas in between
var numberWithCommas = function(x) {
  return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
};

var barLabels = []; //라벨 배열변수(x축)
var barChartFaceData = []; //면접점수 데이터 배열변수(y축)

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
        data: dataPack1,
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
                //x축
                  $.each(result.list2, function(inx, obj) {
                     barLabels.push(obj);
                  });
                
                //머리
                  $.each(result.list1, function(inx, obj) {
                     barChartFaceData.push(obj);
                  });
                  //console.log(lineLabels);
                  //console.log(lineChartData);
                  
                  //붙이기
                  attachArea();
                  
                  //누적 차트 생성
                  createStackedBarChart();
                  
                  //테이블에 값 입력
                  for (var i=0; i<barLabels.length; i++) {
                  render(barLabels[i],barChartFaceData[i],"down");
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

function attachArea() {
   var str = "";
   
   str += "<br/><br/><br/>";
   str += "<div class='panel-heading'>";
   str += "   <i class='fa fa-area-chart'></i>&nbsp;&nbsp;&nbsp;영상 시간별 움직임 변화";
   str += "</div>";
   str += "<canvas id='bar-chart' width='600' height='350'></canvas>";
   str += "<br/><br/><br/>";
   str += "<div class='table-responsive'>";
   str += "<table class='admin-cat table table-bordered table-hover table-striped'>";
   str += "   <thead>";
   str += "       <tr id='tt'>";
   str += "           <th>Time</th>";
   str += "            <th>머리</th>";
   str += "            <th>눈</th>";
   str += "            <th>어깨</th>";
   str += "            <th>무릎</th>";
   str += "            <th>손</th>";
   str += "        </tr>";
   str += "   </thead>";
   str += "   <tbody id='listArea'>";
   str += "   </tbody>";
   str += "</table>";
   str += "</div>";
   
   $("#videoCh").append(str);   
}

function render(a, b, updown) {
   var str = "";

   str += "          <tr>";
   str += "                <td>"+a+"</td>"
   str += "                <td>"+b+"</td>"
   str += "                <td>1</td>"
   str += "                <td>2</td>"
   str += "                <td>3</td>"
   str += "                <td>4</td>"
   str += "            </tr>";

   if (updown == "up") {
      $("#tt").after(str);
   } else if (updown == "down") {
      $("#listArea").append(str);
   } else {
      console.log("update 오류");
   }
};


</script>
</html>