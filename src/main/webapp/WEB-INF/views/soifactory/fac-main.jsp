9<%@ page language="java" contentType="text/html; charset=UTF-8"
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
                                            <li><a href="index.html">Home</a></li>
                                            <li><a href="#">SoiFactory</a></li>
                                            <li>Products Single Page</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Title, Breadcrumb -->
			<!-- Latest Posts -->
			<div id="latest-posts" class=" margin-top100">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 col-md-12 text-center">
							<h2 class="wow fadeIn">SoiFactory</h2>
							<h4 class="wow fadeInRight">
								소이 팩토리는 서로의 면접 실력을 다듬고 면접 자세 및 음성 교정 이외에 <br /> 다양한 면접 기술을 익히기
								위한 컨텐츠 서비스 입니다.
							</h4>
						</div>
					</div>
					<br /> <br /> <br />
					<div class="row">
						<!-- Post Order -->
						<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
							<div class="display">
								<span><b>Display:</b></span>
	  							<select id="ex_select" onchange="location.href=this.value">
	  								<option selected>게시글 보기</option>
	  								<option value="${pageContext.request.contextPath}/post/array?page=${pagingMaker.cri.page}&numPerPage=${pagingMaker.cri.numPerPage}&facArray=latest">최신순</option> 
	  								<option value="${pageContext.request.contextPath}/post/array?page=${pagingMaker.cri.page}&numPerPage=${pagingMaker.cri.numPerPage}&facArray=soi">인기(콩)순</option> 
	  								<option value="${pageContext.request.contextPath}/post/array?page=${pagingMaker.cri.page}&numPerPage=${pagingMaker.cri.numPerPage}&facArray=view">조회순</option>
	  								<option value="${pageContext.request.contextPath}/post/array?page=${pagingMaker.cri.page}&numPerPage=${pagingMaker.cri.numPerPage}&facArray=comment">댓글순</option> 
	  							</select>
							</div>
						</div>
						<!-- /Post Order -->
						<!-- Post Search -->
						<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 pull-right">
							<div class="input-group">
								<form id="search_form" action="${pageContext.request.contextPath}/post/soifactorylist" method="get">
									<div class="col-md-9">
									<input type="hidden" name="page" value="${pagingMaker.cri.page}"> 
									<input type="text" value="Search Posts" id="kwd" name="kwd" 
										onfocus="if(this.value=='Search Posts')this.value='';"
										onblur="if(this.value=='')this.value='Search Posts';"
										class="search-input form-control product-search-height">
									</div>
									<div class="col-md-1">
									<span class="input-group-btn">
									<button type="submit"
										class="btn product-search-height">
										<i class="fa fa-search"></i>
									</button>
									</span>
									</div>
									<div class="col-md-2"></div>
								</form>
							</div>
						</div>
						<!-- /Post Search -->
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="product-grid">
								<div class="products-block">
									<div class="row product-items">
										<!-- Product Items -->
										<c:forEach items="${bindMap}" var="postVo">
											<div
												class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols first post-item wow fadeInUp">
												<div class="product-block">
													<div class="image ">
														<!-- <span class="product-label product-label-special">
                                                        <span>NEW</span>
                                                        </span> -->
														<!-- Swap image -->
														<div class="flip">
															<a
																href="${pageContext.request.contextPath}/post/soiread/${postVo.postNo}?page=${pagingMaker.cri.page}&numPerPage=${pagingMaker.cri.numPerPage}"
																class="swap-image"> <img
																src="${pageContext.request.contextPath}/upload/${postVo.videoThumnail}"
																title="iPhone 5s 64 GB" alt="iPhone 5s 64 GB"
																class="front">
															</a>
														</div>
														<!-- /Swap image -->
														<a
															href="${pageContext.request.contextPath}/post/soiread/${postVo.postNo}?page=${pagingMaker.cri.page}&numPerPage=${pagingMaker.cri.numPerPage}"
															class="pav-colorbox btn btn-theme-default cboxElement"><em
															class="fa fa-plus"></em><span>View Post</span></a>
													</div>
													<div class="product-meta">
														<div class="left">
															<h3 class="name">
																<a
																	href="${pageContext.request.contextPath}/post/soiread/${postVo.postNo}?page=${pagingMaker.cri.page}&numPerPage=${pagingMaker.cri.numPerPage}">${postVo.postTitle}</a>
															</h3>
															<div class="rating">
																<img
																	src="${pageContext.request.contextPath}/resources/img/shop/stars-5.png"
																	alt="Based on 1 reviews.">
															</div>
														</div>
														<div class="right">
															<%-- <div class="rating">
                                                                <img src="${pageContext.request.contextPath}/resources/img/shop/stars-5.png" alt="Based on 1 reviews.">
                                                            </div> --%>
															<!-- <p class="description">
                                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                                                            </p> -->
															<div class="meta post-meta">
																<div class="post-date post-meta-content">
																	<i title="${postVo.postDate}" class="fa fa-clock-o"></i>
																</div>
																<div class="post-comment post-meta-content">
																	<a title="Comments"><i class="fa fa-comment-o"></i>${postVo.postCmtCnt}</a>
																</div>
																<div class="post-like post-meta-content">
																	<a title="Likes"><i class="fa fa-heart"></i>${postVo.postSoiCnt}</a>
																</div>
																<div class="post-link post-meta-content">
																	<a title="Hits"><i class="fa fa-user fa-2x"></i>${postVo.postHitCnt}</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
										<!-- /Product Items -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="pagination-centered padding-bottom30">
						<ul class="pagination">
							<c:if test="${pagingMaker.prev}">
								<!-- 이 값이 false라면 prev 실행 x -->
								<li><a
									href="${pageContext.request.contextPath}/post/soifactorylist?page=${pagingMaker.startPage-1}&numPerPage=${pagingMaker.cri.numPerPage}">«</a></li>
							</c:if>

							<c:forEach begin="${pagingMaker.startPage}"
								end="${pagingMaker.endPage}" var="idx">
								<li><a
									href="${pageContext.request.contextPath}/post/soifactorylist?page=${idx}&numPerPage=${pagingMaker.cri.numPerPage}" style="<c:out value="${pagingMaker.cri.page == idx?'color :#FF0000':' '}"/>">${idx}</a></li>
							</c:forEach>

							<c:if test="${pagingMaker.next}">
								<!-- 이 값이 false라면 next 실행 x -->
								<li><a
									href="${pageContext.request.contextPath}/post/soifactorylist?page=${pagingMaker.endPage+1}&numPerPage=${pagingMaker.cri.numPerPage}">»</a></li>
							</c:if>

						</ul>
					</div>
					<!-- Post Write -->
					<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 pull-right">
						<a class="btn btn-color btn-normal btn-pad"
							href="${pageContext.request.contextPath}/post/soiwriteform">영상올리기</a>
					</div>
					<!-- /Post Write -->
				</div>
			</div>
			<!-- /Latest Posts -->
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
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-migrate-1.0.0.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/jquery.themepunch.plugins.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/revolution-slider/js/jquery.themepunch.revolution.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.parallax.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.wait.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/fappear.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/modernizr-2.6.2.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.bxslider.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.prettyPhoto.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/superfish.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/tweetMachine.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/tytabs.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.gmap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.sticky.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.countTo.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jflickrfeed.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/imagesloaded.pkgd.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/waypoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/wow.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.fitvids.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/spectrum.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/switcher.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>

</body>
</html>