<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.lineProgressbar.css">
		<!-- Header -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		<!-- /Header -->
											<style>
    #progressbar {
        width:500px;
        height:30px;
        position:relative;
    }
     
    .progresslabel {
        position:absolute;
        width:100%;
        text-align:center; 
        line-height:30px;
        color:white;
        text-shadow: 1px 1px 1px black;
    }
</style>

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
                                	<form id="fileUpload" action="${pageContext.request.contextPath}/interview/upload" method="post" enctype="multipart/form-data">
										
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
									
									<div id="listArea">
										
									</div>
                                	
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
<script>

var socket, corr_status;

$(document).ready(function(){
	socket = io.connect('127.0.0.1:5000');
	
	socket.on('connect', function(){
		socket.send('User has connected!');
	});
	
	socket.on('message', function(result){
		console.log('Received message from server:::' + result);
		corr_status = result;
		
		if(corr_status == 1){
			alert("파일을 업로드 하였습니다.");
		} else if (corr_status == 0)
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
		var sim = setTimeout("progressBarSim("+al+")", 30);
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
	//	$("#listArea").remove();
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
			
			/* progressBarSim(amountLoaded); //임시 */ 
			
			$.ajax({
				type : "post",
				url : "${pageContext.request.contextPath}/interview/api/upload",
				data : formData,
				processData : false,
				contentType : false,
				success : function(videoNo) {
					if (videoNo!=0) {
						
						socket.emit("video_data", videoNo)
						
						/* alert("파일을 업로드 하였습니다."); */
						
						selectCorrectVideo(videoNo);
						
						/* document.getElementById('progressBar').style.display="none";
						document.getElementById('status').style.display="none"; */
						
						$("#file").val("");
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
	$("#listArea").text("");
	
	var str = "";
	str += "<div id='videoCh' class='post-image'>";
	str +=  	"<video id='myVideo' width='750' height='400' controls='controls' poster='${pageContext.request.contextPath}/upload/"+mongoVo.videoThumnail+"' preload='none'>";
	str += 			"<source src='${pageContext.request.contextPath}/upload/"+mongoVo.videoSaveName+"' type='video/mp4'>";
	str +=  		"<source src='${pageContext.request.contextPath}/upload/"+mongoVo.videoSaveName+"' type='video/ogg'>";
	str +=  	"</video>";
	str += "</div>";
	
	$("#listArea").append(str);
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
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
};
</script>
</html>
