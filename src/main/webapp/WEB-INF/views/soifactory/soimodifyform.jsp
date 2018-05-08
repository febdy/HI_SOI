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
                                    <h2 class="title">소이팩토리</h2>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                    <div class="breadcrumbs pull-right">
                                        <ul>
                                            <li>You are Now on:</li>
                                            <li><a href="index.html">소이팩토리</a></li>
                                            <li>영상 보기</li>
                                            <li>영상 수정하기</li>
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
                        
                            <!-- 내용 부분 -->
                            <div class="col-md-offset-2 posts-block col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                <h4 class="widget">소이팩토리 > 영상보기 > 수정하기</h4>
                                <form class="form-horizontal" action="${pageContext.request.contextPath}/post/soimodify?postNo=${postVo.postNo}&writerId=${postVo.writerId}" method="post">
                       				<div class="well">
                       					<input type="text" class="form-control" name="postTitle" value="${postVo.postTitle}"><br>
                                		<textarea class="form-control" rows="4" name="postContent">${postVo.postContent}</textarea>
										<div>
											<input type="text" name="videoTitle" value="${postVo.videoOriginName}" id="selectArea" readonly="readonly">
											<input type="hidden" name="videoNo" id="selectVideoNo">
											<button type="button" class="btn btn-default" id="attachModal">파일 첨부</button>
										</div><br/>
										<div class="row form-horizontal">
										<div class="col-md-3">
										<input type="checkbox" name="postHideFace" value="Y" checked> 얼굴 가리기 사용
										</div>
										<div class="col-md-3">
										<input type="checkbox" name="postSharable" value="Y" checked> 진단 결과 스크랩 허용 
										</div>
										<div class="col-md-6">
										</div>
										<!-- <input type="checkbox" name="postScrap" value=""> 모의 면접 영상 스크랩 허용<br /> -->
										</div>
									</div>
                                
									<div class="row pull-right">
                                        <input type="submit" value="수정 완료" class="btn btn-color btn-normal btn-pad">
                                        <a href="${pageContext.request.contextPath}/post/soiread/${postVo.postNo}" class="btn btn-color btn-normal btn-pad">취소</a>
                               		</div>
								</form>
							</div>
                        </div>
               		</div>
                </div>
                
                </section>
            <!-- /Main Section -->
            
            <!-- Footer -->
            <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
            <!-- /Footer -->
            
            
        <!-- Modal -->
        <section id="modals">
			<div class="modal fade marginTop-60 marginBottom-60" id="modalPop" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="form-signin-heading modal-title">내 영상 보관함</h4>
						</div>
						<div class="modal-body scrollBlind">
							<table class="table">
								<thead>
                                    <tr>
                                    	<th>&nbsp;</th>
                                        <th>제목</th>
										<th>작성일</th>
										<th>&nbsp;</th>
                                    </tr>
                                </thead>
								<tbody id="listArea">

								</tbody>
							</table>
							
							<%-- <div class="pagination-centered padding-bottom30">
								<ul class="pagination">
									<c:if test="${myVideoMap.prev}">
										<!-- 이 값이 false라면 prev 실행 x -->
										<li><a href="${pageContext.request.contextPath}/mypage/videoclip?crtPage=${myVideoMap.startPageBtnNo-1}">«</a></li>
									</c:if>

									<c:forEach begin="${myVideoMap.startPageBtnNo}" end="${myVideoMap.endPageBtnNo}" var="idx">
										<li><a href="${pageContext.request.contextPath}/mypage/videoclip?crtPage=${idx}">${idx}</a></li>
									</c:forEach>

									<c:if test="${myVideoMap.next}">
										<!-- 이 값이 false라면 next 실행 x -->
										<li><a href="${pageContext.request.contextPath}/mypage/videoclip?crtPage=${myVideoMap.endPageBtnNo+1}">»</a></li>
									</c:if>
								</ul>
							</div> --%>
							
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
							<button id="btn_add" type="button" class="btn btn-color" data-dismiss="modal">영상 첨부</button>
						</div>
					</div>
				</div>
			</div>
            </section>
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

<script>

$(document).ready(function() {
	
});

$("#attachModal").on("click", function() {
	$("#modalPop").modal();
	fetchList();
});

function fetchList() {

	$.ajax({//리스트 요청
		url : "${pageContext.request.contextPath}/post/api/modallist",
		type : "post",
		data : { },//데이터를 줄 때 parameter

		dataType : "json", //데이터를 받을때 리턴타입 , json은 문자열임(객체, 맵처럼 쌍으로 묶어 받음.)
		success : function(myVideoMap) {
			console.log(myVideoMap);
			
			for (var i = 0; i < myVideoMap.length; i++) {
				render(myVideoMap[i], "down");
			};
			
			return myVideoMap;
	
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
	$(".abcd").remove();
};

function render(videoVo, updown) {
	var str = "";
	str += "			<tr class='abcd' id='g"+videoVo.videoNo+"'>";
	str += "				<td width='5%'>[" + videoVo.rn + "]</td>";
	str += "				<td width='70%'>" + videoVo.videoOriginName + "</td>";
	str += "				<td width='20%'>" + videoVo.videoDate + "</td>";
	str += "				<td width='5%'><input class='upto' id='" + videoVo.videoNo + "' type='radio' name='upup' value='선택' data-no='"+videoVo.videoNo+"'></td>";
	str += "			</tr>";
	str += "	<br>";

	if (updown == "up") {
		$("#listArea").prepend(str);
	} else if (updown == "down") {
		$("#listArea").append(str);
	} else {
		console.log("update 오류");
	}
};


$("tbody").on("click", ".upto", function(){
	var no=this.id;
	console.log(no);
	
	$.ajax({//리스트 요청
		url : "${pageContext.request.contextPath}/post/api/modaltitle",
		type : "post",
		data : {no:no},//데이터를 줄 때 parameter

		dataType : "json", //데이터를 받을때 리턴타입 , json은 문자열임(객체, 맵처럼 쌍으로 묶어 받음.)
		success : function(videoVo) {
			console.log(videoVo);
			
			$("#btn_add").on("click", function() {
				$("#selectArea").val(videoVo.videoOriginName);
				$("#selectVideoNo").val(videoVo.videoNo);
			});
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
});


</script>
</html>