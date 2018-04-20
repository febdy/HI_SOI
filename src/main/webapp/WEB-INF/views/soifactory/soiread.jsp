<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/img/ico/favicon.ico">
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/resources/img/ico/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="${pageContext.request.contextPath}/resources/img/ico/apple-touch-icon-72.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="${pageContext.request.contextPath}/resources/img/ico/apple-touch-icon-114.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="${pageContext.request.contextPath}/resources/img/ico/apple-touch-icon-144.png">
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
                        	<!-- 왼쪽 라인 -->
                            <div class="posts-block col-lg-8 col-md-8 col-sm-8 col-xs-12">
                                <!--  Single Post -->
                                <article class="post hentry">
                                    <div class="post-image">
                                    	<video width="750" height="400" controls="controls" poster="${pageContext.request.contextPath}/upload/${postVo.videoThumnail}" preload="none">
											<source src="${pageContext.request.contextPath}/upload/${postVo.videoSaveName}" type="video/mp4">
											<source src="${pageContext.request.contextPath}/upload/${postVo.videoSaveName}" type="video/ogg">
										</video>
                                    </div>
                                    <header class="post-header">
                                        <h2>${postVo.postTitle}</h2>
                                        <div class="blog-entry-meta">
                                            <div class="blog-entry-meta-date">
                                                <i class="fa fa-clock-o"></i>
                                                <span class="blog-entry-meta-date-month">${postVo.postDate}</span>
                                            </div>
                                            <div class="blog-entry-meta-author">
                                                <i class="fa fa-user"></i>
                                                <a class="blog-entry-meta-author">${postVo.writerId}</a>
                                            </div>
                                            <div class="blog-entry-meta-tags">
                                                <i id="SoiArea" class="fa fa-heart text-danger"></i>
                                                <a id="postSoiCnt" class="blog-entry-meta-sois">${postVo.postSoiCnt} soybeans</a>
                                            </div>
                                            <div class="blog-entry-meta-comments">
                                                <i class="fa fa-comments"></i>
                                                <a id="postCmtCnt" class="blog-entry-meta-comments">${postVo.postHitCnt} comments</a>
                                            </div>
                                        </div>
                                    </header>
                                </article>
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
                                 <!-- Comments Section -->
                                <div class="comment-wrapper">
                                    <h3 class="title">댓글</h3>
                                    <div class="clearfix"></div>
                                    <div class="comments-sec">
                                        <ol class="commentlist">
                                        	<!-- 댓글 여기에 붙이기 -->
                                            <li id="listArea">
                                                
                                            </li>
                                        </ol>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                                <!-- /Comments Section -->
                                <!-- paging -->
                                <%-- <div class="pagination-centered padding-bottom30">
									<ul class="pagination">
									<c:if test="${bMap.prev}"> <!-- 이 값이 false라면 prev 실행 x -->
										<li><a href="${pageContext.request.contextPath}/cs/notice?crtPage=${bMap.startPageBtnNo-1}">«</a></li>
									</c:if>
						
									<c:forEach begin="${bMap.startPageBtnNo}" end="${bMap.endPageBtnNo}" var="idx">
										<li><a href="${pageContext.request.contextPath}/cs/notice?crtPage=${idx}">${idx}</a></li>
									</c:forEach>
						
									<c:if test="${bMap.next}"> <!-- 이 값이 false라면 next 실행 x -->
										<li><a href="${pageContext.request.contextPath}/cs/notice?crtPage=${bMap.endPageBtnNo+1}">»</a></li>
									</c:if>
									</ul>
								</div> --%>
								<!-- /paging -->
                                <!-- Star-->
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
                                <!-- Star -->  
                                <!-- Reply Section -->
                                <!-- 댓글 여기서 쓰고 입력 받은 값을 ajax로 보내기 -->
                                <div class="reply">
                                    <h3 class="title">댓글 쓰기</h3>
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <textarea id="cmtcontent" class="form-control" rows="3" cols="40" name="cmtcontent" placeholder="Comment" required></textarea>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <button id="btnInsert" class="btn btn-color pull-right" type="submit">등록</button>
                                        <div class="clearfix">
                                        </div>
                                </div>
                                <!-- /Reply Section -->
                            </div>
                            <!-- /왼쪽 라인 -->
                             <!-- Project Summary -->
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 sidebar">
                                <div class="widget">
                                    <h3 class="title">남기는 말</h3>
                                    <p>
									${fn:replace(postVo.postContent , ctrl, "</br>" )}
                                    </p>
                                </div>
                                <!-- Project Description End -->  
                                <div class="widget">
                                    <div class="">
                                        <a id="btnLike" class="btn-special btn-grey"><strong><i class="fa fa-heart text-danger"></i>add to Soybean</strong></a>
                                    </div><br/>
                                    <div>
                                    	<a id="btnScrap" class="btn-special btn-grey"><strong><i class="fa fa-star text-warning"></i>add to Scrap</strong></a>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="widget">
                                    <div class="member-social dark">
                                        <a class="facebook" href=""><i class="fa fa-facebook"></i></a>
                                        <a class="twitter" href=""><i class="fa fa-twitter"></i></a>
                                        <a class="dribbble" href=""><i class="fa fa-dribbble"></i></a>
                                        <a class="gplus" href=""><i class="fa fa-google-plus"></i></a>
                                        <a class="linkedin" href=""><i class="fa fa-linkedin"></i></a>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <!-- Project Details Start -->
                                <div class="widget project_details">
                                    <h3 class="title">진단 결과</h3>
                                    <div class="details-content">
                                    	<span><strong>자세</strong><em><a>부산스러움</a></em></span>
                                        <span><strong>음성</strong><em><a>목소리 떨림</a><a>호흡 불안정</a><a>훌륭한 답변</a></em></span>
                                        <span><strong>점수</strong><em>
												<img src="${pageContext.request.contextPath}/resources/img/shop/stars-5.png" alt="Based on 1 reviews.">
										</em>
										</span>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="widget">
                                	<a href="${pageContext.request.contextPath}/post/soifactorylist" class="btn-normal btn-color"><i class="fa fa-hand-right icon-large"></i>글목록</a>
									<c:if test="${authUser.userId==requestScope.postVo.writerId}">
                                    	<a href="${pageContext.request.contextPath}/post/soimodifyform?postNo=${postVo.postNo}&writerId=${postVo.writerId}" class="btn-normal btn-color"><i class="fa fa-hand-right icon-large"></i>글수정</a>
                                    	<a href="${pageContext.request.contextPath}/post/soidelete?postNo=${postVo.postNo}" class="btn-normal btn-color"><i class="fa fa-hand-right icon-large"></i>글삭제</a>
                                    </c:if>
                                </div>
                            </div>
                            <!-- /Project Summary -->
                            
                            
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
                <!-- Login Modal -->
                <div class="modal login fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModal" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h2 class="form-signin-heading modal-title" id="myModalLabel">Login</h2>
                            </div>
                            <form method="post" id="login">
                                <div class="modal-body">
                                    <fieldset>
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <input class="form-control" id="username" name="username" type="text" placeholder="Username" value="" required>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <input class="form-control" type="email" id="email" name="email" placeholder="Email" value="" required>
                                            </div>
                                        </div>
                                    </fieldset>
                                </div>
                                <div class="modal-footer">
                                    <a href="password-recovery.html" class="pull-left">(Lost Password?)</a>
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-color">Login</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- /Login Modal -->
                <!-- Registration Modal -->
                <div class="modal register fade" id="registrationModal" tabindex="-1" role="dialog" aria-labelledby="registrationModal" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                            <h2 class="form-signin-heading modal-title" id="registrationModalLabel">Create a new account</h2>
                        </div>
                        <form method="post" id="registration">
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="form-group">
                                            <div class="col-md-6">
                                                <input type="text" value="" class="form-control" placeholder="First Name">
                                            </div>
                                            <div class="col-md-6">
                                                <input type="text" value="" class="form-control" placeholder="Last Name">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <input type="text" value="" class="form-control" placeholder="E-mail Address">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group">
                                            <div class="col-md-6">
                                                <input type="password" value="" class="form-control" placeholder="Password">
                                            </div>
                                            <div class="col-md-6">
                                                <input type="password" value="" class="form-control" placeholder="Re-enter Password">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-color">Register</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- /Registration Modal -->
            </section>
            <!-- Scroll To Top --> 
            <a href="#" class="scrollup"><i class="fa fa-angle-up"></i></a>
        </div>
        <!-- /Wrap -->
        <section id="style-switcher">
            <h2>Style Switcher <a href="#"><i class="fa fa-cogs"></i></a></h2>
            <div>
                <h3>Predefined Colors</h3>
                <ul class="colors">
                    <li><a title="Green" class="green" href="#"></a></li>
                    <li><a title="Blue" class="blue" href="#"></a></li>
                    <li><a title="Orange" class="orange" href="#"></a></li>
                    <li><a title="Purple" class="purple" href="#"></a></li>
                    <li><a title="Red" class="red" href="#"></a></li>
                    <li><a title="Magenta" class="magenta" href="#"></a></li>
                    <li><a title="Brown" class="brown" href="#"></a></li>
                    <li><a title="Gray" class="gray" href="#"></a></li>
                    <li><a title="Golden" class="golden" href="#"></a></li>
                    <li><a title="Teal" class="teal" href="#"></a></li>
                </ul>
                <h3>Layout Style</h3>
                <div class="layout-style">
                    <select id="layout-style">
                        <option value="1">Wide</option>
                        <option value="2">Boxed</option>
                    </select>
                </div>
                <h3>Header Color</h3>
                <div class="header-color">
                    <input type='text' class="header-bg" />
                </div>
                <h3>Footer Top Color</h3>
                <div class="header-color">
                    <input type='text' class="footer-bg" />
                </div>
                <h3>Footer Bottom Color</h3>
                <div class="header-color">
                    <input type='text' class="footer-bottom" />
                </div>
                <h3>Background Image</h3>
                <ul id="bg" class="colors bg">
                    <li><a class="bg1" href="#"></a></li>
                    <li><a class="bg2" href="#"></a></li>
                    <li><a class="bg3" href="#"></a></li>
                    <li><a class="bg4" href="#"></a></li>
                    <li><a class="bg5" href="#"></a></li>
                    <li><a class="bg6" href="#"></a></li>
                    <li><a class="bg7" href="#"></a></li>
                    <li><a class="bg8" href="#"></a></li>
                    <li><a class="bg9" href="#"></a></li>
                    <li><a class="bg10" href="#"></a></li>
                </ul>
            </div>
        </section>
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
	var page=1;
	
	$(document).ready(function() { //페이지의 내용이 로딩되기 이전에 데이터 요청, 화면 켜지자 마자 뿌려주기
		fetchList();
	});

	function fetchList() {
		var no= ${postVo.postNo};
		
		console.log(no);
		
		$.ajax({//리스트 요청
			url : "${pageContext.request.contextPath}/comment/api/commentlist",
			type : "post",
			data : {
				no : no,
				page : page
			}, //데이터를 줄 때 parameter

			dataType : "json", //데이터를 받을때 리턴타입 , json은 문자열임(객체, 맵처럼 쌍으로 묶어 받음.)
			success : function(commentList) {
				console.log(commentList); //glist가 콘솔창에 도착했는지 테스트, 여기까지 성공했다면, 위에 주석처리 한 것을 하나하나 
				
				for (var i = 0; i < commentList.length; i++) {
					render(commentList[i], "down");
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	};

	function render(CommentVo, updown) {
		var str = "";
		str += "<li>";
		str += "<div class='comment' id='g"+CommentVo.cmtNo+"'>";
		str += "    <div class='avatar'>";
		str += "        <img alt='' src='${pageContext.request.contextPath}/resources/img/team/team-member-3.jpg'>";
		str += "    </div>";
		str += "    <div class='comment-des'>";
		str += "        <div class='arrow-comment'>";
		str += "        </div>";
		str += "        <div class='comment-by'>";
		str += "            <strong>"+CommentVo.userId+"</strong>";
		str += "            <span class='date'>"+CommentVo.cmtDate+"</span>";
		str += "        </div>";
		str += "        <p>"+CommentVo.cmtContent+"</p>";
		str += "    </div>";
		str += "    <div class='clearfix'>";
		str += "    </div>";
		str += "</div>";
		str += "</li>";
		str += "<br/>";

		if (updown == "up") {
			$("#listArea").prepend(str);
		} else if (updown == "down") {
			$("#listArea").append(str);
		} else {
			console.log("update 오류");
		}
	};
	
	$("#btnInsert").on("click", function(){
		
		var content = $("#cmtcontent").val();
		var postNo = ${postVo.postNo};
		console.log(content);
		console.log(postNo);
		
		var commentVo = {
				cmtContent : content,
				postNo : postNo
		}
		
		$.ajax({
			url : "${pageContext.request.contextPath}/comment/api/addcomment",
			type : "post",
			contentType : "application/json", 
			data : JSON.stringify(commentVo), 

			dataType : "json", 
			success : function(commentVo){
				//로그인 여부 서버단에서 조건 걸기 
				console.log(commentVo);
				
				var cmtNo=commentVo.cmtNo;
				
				getComment(cmtNo);
				
				$("[name=cmtcontent]").val("");
			},
			
			error : function(XHR, status, error) {
				alert("로그인이 필요합니다.");
		        window.location.replace("/hi");
				//console.error(status + " : " + error);
			}
			
		});
	});
	
	//댓글 쓰기 및 댓글 수 증가
	function getComment(cmtNo) {
		$.ajax({
			//보내기
			url : "${pageContext.request.contextPath}/comment/api/getComment",
			type : "post",
			data : {
				cmtNo : cmtNo
			},
			//받기
			dataType : "json",
			success : function(writeCmt){
				console.log(writeCmt);
				render(writeCmt,"up")
				var stat=$("#postCmtCnt").text();
				stat=stat.split(" ");
				var num=parseInt(stat);
				num++;
				$("#postCmtCnt").text(num+" comments");
			},
			
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}

			});
		
	};
	
	
	//콩 수 증가
	$("#btnLike").on("click", function(){
		var postNo = ${postVo.postNo};
		console.log(postNo);
		
		$.ajax({
			url : "${pageContext.request.contextPath}/post/api/updateLike",
			type : "post",
			data : {
				postNo : postNo
			},

			dataType : "json", 
			success : function(soi){
				console.log(soi);
				var stat=$("#postSoiCnt").text();
				stat=stat.split(" ");
				var num=parseInt(stat);
				num++;
				$("#postSoiCnt").text(num+" soybeans");
			},
			
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
			
		});
	});
	
	//스크랩 기능
	$("#btnScrap").on("click", function(){
		var postNo = ${postVo.postNo};
		console.log(postNo);
		
		$.ajax({
			url : "${pageContext.request.contextPath}/post/api/addScrapPost",
			type : "post",
			data : {
				postNo : postNo
			},

			dataType : "json", 
			success : function(soi){
				console.log(soi);
			},
			
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
			
		});
	});
</script>

</html>