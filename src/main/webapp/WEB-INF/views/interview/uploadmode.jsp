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
                                            <li><a href="${pageContext.request.contextPath}/interview/livemode">면접진단</a></li>
                                            <li><a href="${pageContext.request.contextPath}/interview/uploadmode">업로드 모드</a></li>
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
                        		<p>모의 면접 프로그램은 과열된 취업경쟁 상황 속에서 차별화된 나만의 성공전략을 제공합니다. 면접은 최종 관문으로 나의 가치를 제대로 표현하는 일이 무엇보다 중요합니다. 모의 면접 프로그램은 '나'를 객관적으로 분석할 수 있도록 도우며, '나'의 역량을 보여주는 커뮤니케이션 능력으로 당신을 초대합니다.</p>
                            <div class="posts-block col-lg-9 col-md-9 col-sm-9 col-xs-12">
                            	<a id="example_bottom" class="btn btn-success pull-right" data-rel="popover" data-content="면접 영상을 첨부하시고, 진단 받기를 클릭하시면, 모의 면접 영상 교정이 시작됩니다. mp4 파일을 업로드 해주세요." data-original-title="업로드 모드"> 업로드모드 사용법</a>

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
                           <div id="loadingArea">
                           
                           </div>
                           <div id="videoArea">
                              
                           </div>
                           
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
/* function progressBarSim(al) {
<<<<<<< HEAD
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
=======
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
>>>>>>> a05b44eecdc44fa3572a89da0c5e600a4e91ec9c
}
var amountLoaded = 0; */

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
         loading();
         //progressBarSim(amountLoaded); //임시
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

function loading() {
   var str = "";
   
   str += "<div id='loadingBar' style='position:absolute; top:0; left:0; width:100%; height:100%; text-align:center; margin:0 auto; z-index:100000;'>";
   str += "<table width='100%' height='100%' border='0' bgcolor='#000000'>";
   str += "<tr>";
   str += "<td align='center'>";
   str += "  <div style='text-align:center;'><IMG SRC='https://thumbs.gfycat.com/TinyOffbeatHusky-size_restricted.gif' style='max-width: 100px; height: auto;'>";
   str += "</div>";
   str += "  <div style='margin-top:20px; color:#FFF; text-align:center; font-weight:bold;'>L o a d i n g . . .";
   str += "</div>";
   str += "</td>";
   str += "</tr>";
   str += "</table>";
   str += "</div>";

   str += "<div id='divLoadBody' style='display:none;'>";
   
   $("#loadingArea").append(str);
} //지울 부분

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
			var loadingBar = document.getElementById("loadingBar"); //지울 부분
			var divLoadBody = document.getElementById("divLoadBody");
			loadingBar.style.display = "none";
			divLoadBody.style.display = ""; 
			
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
var barChartFaceData = []; //얼굴 배열
var barChartEyeData = []; //눈 배열
var barChartShoulderData = []; //어깨 배열
var barChartKneeData = []; //무릎 배열
var barChartWristData = []; //손 배열

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
        data: barChartShoulderData,
                  backgroundColor: "#FFA000",
                  hoverBackgroundColor: "#FFCA28",
                  hoverBorderWidth: 0
    },
    {
        label: '무릎',
        data: barChartKneeData,
                  backgroundColor: "#02a91e",
                  hoverBackgroundColor: "#75c274",
                  hoverBorderWidth: 0
    },
    {
        label: '손',
        data: barChartWristData,
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
                //어깨
                $.each(result.list3, function(inx, obj) {
                   barChartShoulderData.push(obj);
                });
                //무릎
                $.each(result.list4, function(inx, obj) {
                   barChartKneeData.push(obj);
                });
                //손
                $.each(result.list5, function(inx, obj) {
                   barChartWristData.push(obj);
                });
                  
                  //붙이기
                  attachArea();
                  
                  //누적 차트 생성
                  createStackedBarChart();
                  
                   //시간별 움직임 횟수 테이블
                  for (var i=0; i<barLabels.length; i++) {
                  timeTable(barLabels[i], barChartFaceData[i], barChartEyeData[i], barChartShoulderData[i], barChartKneeData[i], barChartWristData[i], "down");
                  }
                  
                  //움직임 총 합계
                  summer(result.analyzeSum);
                  
                  //directionArea();
                  
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

function attachArea() {
   var str = "";
   
   str += "<br/><br/><br/>";
   str += "<div class='analyzeTable'>";
   str += "<div class='panel-heading'>";
   str += "   <i class='fa fa-area-chart'></i>&nbsp;&nbsp;&nbsp;영상 시간별 움직임 변화";
   str += "</div>";
   str += "<canvas id='bar-chart' width='600' height='350'></canvas>";
   str += "<br/><br/><br/>";
   str += "<div class='panel-heading'>";
   str += "<i class='fa fa-area-chart'></i>&nbsp;&nbsp;&nbsp;영상 시간별 움직임 횟수표";
   str += "</div>";
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
   str += "</div>";
   str += "<br/><br/><br/>";
   str += "<div class='panel-heading'>";
   str += "   <i class='fa fa-area-chart'></i>&nbsp;&nbsp;&nbsp;부위별 움직임 방향";
   str += "</div>";
   str += "<br/>";
   str += "<div class='col-lg-3'>";
   str += "   머리";
   str += "   <table class='table table-bordered table-hover table-striped'>";
   str += "      <thead>";
   str += "           <tr id='tt'>";
   str += "               <th>방향</th>";
   str += "               <th>움직임 횟수</th>";
   str += "           </tr>";
   str += "       </thead>";
   str += "       <tbody id='faceArea'>";
   str += "      </tbody>";
   str += "   </table>";
   str += "</div>";
   str += "<div class='col-lg-3'>";
   str += "   어깨";
   str += "   <table class='table table-bordered table-hover table-striped'>";
   str += "      <thead>";
   str += "           <tr id='tt'>";
   str += "               <th>방향</th>";
   str += "               <th>움직임 횟수</th>";
   str += "           </tr>";
   str += "       </thead>";
   str += "       <tbody id='shoulderArea'>";
   str += "      </tbody>";
   str += "   </table>";
   str += "</div>";
   str += "<div class='col-lg-3'>";
   str += "   무릎";
   str += "   <table class='table table-bordered table-hover table-striped'>";
   str += "      <thead>";
   str += "           <tr id='tt'>";
   str += "               <th>방향</th>";
   str += "               <th>움직임 횟수</th>";
   str += "           </tr>";
   str += "       </thead>";
   str += "       <tbody id='kneeArea'>";
   str += "      </tbody>";
   str += "   </table>";
   str += "</div>";
   str += "<div class='col-lg-3 wristArea'>";
   str += "   손";
   str += "   <table class='table table-bordered table-hover table-striped'>";
   str += "      <thead>";
   str += "           <tr id='tt'>";
   str += "               <th>방향</th>";
   str += "               <th>움직임 횟수</th>";
   str += "           </tr>";
   str += "       </thead>";
   str += "       <tbody id='wristArea'>";
   str += "      </tbody>";
   str += "   </table>";
   str += "</div>";
   str += "</div>"; //지울 부분
   
   $("#videoCh").append(str);   
}

//시간대별 움직임표
function timeTable(label, face, eye, shoulder, knee, wrist, updown) {
   var str = "";

   str += "          <tr>";
   str += "                <td>"+label+"</td>";
   str += "                <td>"+face+"</td>";
   str += "                <td>"+eye+"</td>";
   str += "                <td>"+shoulder+"</td>";
   str += "                <td>"+knee+"</td>";
   str += "                <td>"+wrist+"</td>";
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
   
   str += "          <tr>";
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
   
   str += "          <tr>";
   str += "                <td>"+Direction+"</td>";
   str += "                <td>"+List+"</td>";
   str += "            </tr>";
   
   $("#faceArea").append(str);
}

//어깨 움직임 방향
function shoulderMoveTable(Direction, List) {
   var str = "";
   
   str += "          <tr>";
   str += "                <td>"+Direction+"</td>";
   str += "                <td>"+List+"</td>";
   str += "            </tr>";
   
   $("#shoulderArea").append(str);
}

//무릎 움직임 방향
function kneeMoveTable(Direction, List) {
   var str = "";
   
   str += "          <tr>";
   str += "                <td>"+Direction+"</td>";
   str += "                <td>"+List+"</td>";
   str += "            </tr>";
   
   $("#kneeArea").append(str);
}

//무릎 움직임 방향
function wristMoveTable(Direction, List) {
   var str = "";
   
   str += "          <tr>";
   str += "                <td>"+Direction+"</td>";
   str += "                <td>"+List+"</td>";
   str += "            </tr>";
   
   $("#wristArea").append(str);
}


</script>
</html>