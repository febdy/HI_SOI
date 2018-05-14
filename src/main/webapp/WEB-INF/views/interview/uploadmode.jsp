<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--[if IE 8]>          <html class="ie ie8"> <![endif]-->
<!--[if IE 9]>          <html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->
<html>
<!--<![endif]-->
<head>
<meta charset="utf-8">
<title>Home Shop | Gallaxy Responsive HTML5/CSS3 Template | FIFO
	THEMES</title>
<meta name="description"
	content="Gallaxy Responsive HTML5/CSS3 Template from FIFOTHEMES.COM">
<meta name="author" content="FIFOTHEMES.COM">
<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Google Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Raleway:100,200,300,700,800,900'
	rel='stylesheet' type='text/css'>
<!-- Library CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/fonts/font-awesome/css/font-awesome.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animations.css"
	media="screen">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/superfish.css"
	media="screen">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/revolution-slider/css/settings.css"
	media="screen">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/revolution-slider/css/extralayers.css"
	media="screen">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/prettyPhoto.css"
	media="screen">
<!-- Theme CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<!-- Skin -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/colors/green.css"
	class="colors">
<!-- Responsive CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/theme-responsive.css">
<!-- Switcher CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/switcher.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/spectrum.css"
	rel="stylesheet">
<!-- Favicons -->
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/img/ico/soi.ico">
<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
        <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->
<!--[if IE]>
        <link rel="stylesheet" href="css/ie.css">
        <![endif]-->
</head>
<body class="home">
	<div class="page-mask">
		<div class="page-loader">
			<div class="spinner"></div>
			Loading...
		</div>
	</div>
	<div class="wrap">

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
                                	<form id="fileUpload" action="${pageContext.request.contextPath}/interview/upload" method="post" enctype="multipart/form-data">
										
										<div class="form-group">
										<label>&nbsp;</label>
										<input type="file" name="file" id="file">
										</div>
										
										<div class="pull-left">
										<input type="button" class="btn-xs btn-default glyphicon glyphicon-ok text-primary" id="uploadBtn" value="진단하기">
										</div>
									</form>
									<br/><br/><br/><br/>
									
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
                
                
                
            </section>
            <!-- /Main Section -->
            
            <!-- Footer -->
            <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
            <!-- /Footer -->
            
            
            <!-- Scroll To Top --> 
            <a href="#" class="scrollup"><i class="fa fa-angle-up"></i></a>
        </div>
        <!-- /Wrap -->
        
        <!-- The Scripts -->
        <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-1.0.0.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/jquery.themepunch.plugins.min.js"></script> 
        <script src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/jquery.themepunch.revolution.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.parallax.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.wait.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/fappear.js"></script> 
        <script src="${pageContext.request.contextPath}/resources/js/modernizr-2.6.2.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.bxslider.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.prettyPhoto.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/superfish.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/tweetMachine.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/tytabs.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.gmap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.sticky.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.countTo.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jflickrfeed.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/imagesloaded.pkgd.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/waypoints.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/wow.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.fitvids.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/spectrum.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/switcher.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>

</body>

<script src="http://malsup.github.com/jquery.form.js"></script> 
<script>

$("#uploadBtn").on("click", function() {
	//var video=document.getElementByID("listArea");
	//while (video.val()!=null) {
	//	$("#listArea").remove();
	//}
	if ($("#file").val()=="") {
		alert("파일 업로드에 실패하였습니다.");
		
	} else {	
		var formData=new FormData($("#fileUpload")[0]);
		
		$.ajax({
			type : "post",
			url : "${pageContext.request.contextPath}/interview/api/upload",
			data : formData,
			processData : false,
			contentType : false,
			success : function(videoNo) {
				if (videoNo!=0) {
					alert("파일을 업로드 하였습니다.");
					
					selectCorrectVideo(videoNo);
					
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
	
	
});

function readylist(videoVo) {
	$("#listArea").text("");
	
	var str = "";
	str += "<div id='videoCh' class='post-image'>";
	str +=  	"<video id='myVideo' width='750' height='400' controls='controls' poster='${pageContext.request.contextPath}/upload/"+videoVo.videoThumnail+"' preload='none'>";
	str += 			"<source src='${pageContext.request.contextPath}/upload/"+videoVo.videoSaveName+"' type='video/mp4'>";
	str +=  		"<source src='${pageContext.request.contextPath}/upload/"+videoVo.videoSaveName+"' type='video/ogg'>";
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
		success : function(videoVo) {
			readylist(videoVo);
		},

		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}

	});
};

</script>
</html>