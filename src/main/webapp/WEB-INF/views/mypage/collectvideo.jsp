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
                                    <h2 class="title">마이페이지</h2>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                    <div class="breadcrumbs pull-right">
                                        <ul>
                                            <li>You are Now on:</li>
                                            <li><a href="index.html">마이페이지</a></li>
                                            <li><a href="#">내가 올린 영상</a></li>
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
                    <h2>내가 올린 영상</h2>
                     <div class="product-grid">
                                    <div class="products-block">
                                        <div class="row product-items">
                                            
                            <div>
                                <!-- post item -->
								<c:forEach items="${videoMap.postList}" var="postVo"> 
                                
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 product-cols first post-item wow fadeInUp">
                                    <div class="post-img">
                                        <a href="${pageContext.request.contextPath}/post/soiread/${postVo.postNo}"><img alt="" src="${pageContext.request.contextPath}/upload/${postVo.videoThumnail}"></a>
                                    </div>
                                    <div class="post-content blog-post-content">
                                        <h4><a href="${pageContext.request.contextPath}/post/soiread/${postVo.postNo}">${postVo.postTitle}</a></h4>
                                    </div>
                                    <div class="meta post-meta">
                                        <div class="post-date post-meta-content">
                                            <i title="${postVo.postDate}" class="fa fa-clock-o"></i>
                                        </div>
                                        <div class="post-comment post-meta-content">
                                            <a title="Comments"><i class="fa fa-comment-o"></i>${postVo.postCmtCnt}</a>
                                        </div>
                                        <div class="post-like  post-meta-content">
                                            <a title="Likes"><i class="fa fa-heart"></i>${postVo.postSoiCnt}</a>
                                        </div>
                                        <div class="post-link post-meta-content">
                                            <a title="Hits"><i class="fa fa-user fa-2x"></i>${postVo.postHitCnt}</a>
                                        </div>
                                    </div>
                                </div>
                                
                                </c:forEach>
                             </div>
                             </div>
                                <!-- /post item --> 
                                <div class="pagination-centered padding-bottom30">
								<ul class="pagination">
									<c:if test="${videoMap.prev}"> <!-- 이 값이 false라면 prev 실행 x -->
									<li><a href="${pageContext.request.contextPath}/mypage/collect/video?crtPage=${videoMap.startPageBtnNo-1}">«</a></li>
									</c:if>
						
									<c:forEach begin="${videoMap.startPageBtnNo}" end="${videoMap.endPageBtnNo}" var="idx">
										<li><a href="${pageContext.request.contextPath}/mypage/collect/video?crtPage=${idx}">${idx}</a></li>
									</c:forEach>
						
									<c:if test="${videoMap.next}"> <!-- 이 값이 false라면 next 실행 x -->
										<li><a href="${pageContext.request.contextPath}/mypage/collect/video?crtPage=${videoMap.endPageBtnNo+1}">»</a></li>
									</c:if>
								</ul>
							</div>
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
</html>