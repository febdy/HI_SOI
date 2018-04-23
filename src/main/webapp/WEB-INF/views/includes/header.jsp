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
        <title>Shop | Gallaxy Responsive HTML5/CSS3 Template | FIFO THEMES</title>
        <meta name="description" content="Gallaxy Responsive HTML5/CSS3 Template from FIFOTHEMES.COM">
        <meta name="author" content="FIFOTHEMES.COM">
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Google Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Raleway:100,200,300,700,800,900' rel='stylesheet' type='text/css'>
        <!-- Library CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/fonts/font-awesome/css/font-awesome.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animations.css" media="screen">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/superfish.css" media="screen">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/revolution-slider/css/settings.css" media="screen">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/revolution-slider/css/extralayers.css" media="screen">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/prettyPhoto.css" media="screen">
        <!-- Theme CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
        <!-- Skin -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/colors/green.css" class="colors">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/theme-responsive.css">
        <!-- Switcher CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/switcher.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/spectrum.css" rel="stylesheet">
        <!-- Favicons -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/ico/favicon.ico">
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/ico/apple-touch-icon.png">
        <link rel="apple-touch-icon" sizes="72x72" href="${pageContext.request.contextPath}/resources/img/ico/apple-touch-icon-72.png">
        <link rel="apple-touch-icon" sizes="114x114" href="${pageContext.request.contextPath}/resources/img/ico/apple-touch-icon-114.png">
        <link rel="apple-touch-icon" sizes="144x144" href="${pageContext.request.contextPath}/resources/img/ico/apple-touch-icon-144.png">
        <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
        <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->
        <!--[if IE]>
        <link rel="stylesheet" href="css/ie.css">
        <![endif]-->
    </head>
    <body class="page">
        <div class="page-mask">
            <div class="page-loader">
                <div class="spinner"></div>
                Loading...
            </div>
        </div>
        <!-- Wrap -->
        <!-- <div class="wrap"> -->
            <!-- Header -->
            <header id="header">
                <!-- Header Top Bar -->
                <div class="top-bar">
                    <div class="slidedown collapse">
                        <div class="container">
                            <!-- <div class="pull-left">
                                <ul class="social pull-left">
                                    <li class="facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li class="twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li class="dribbble"><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                    <li class="linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                    <li class="rss"><a href="#"><i class="fa fa-rss"></i></a></li>
                                </ul>
                            </div> -->
                            <div class="phone-login pull-right">
                            	<c:choose>
									<c:when test="${empty sessionScope.authUser}">
                                		<a href="#" data-toggle="modal" data-target="#loginModal"><i class="fa fa-sign-in"></i> 로그인</a>
                                		<a href="${pageContext.request.contextPath}/user/joinform"><i class="fa fa-edit"></i> 회원가입</a>
                                	</c:when>
                                	<c:when test="${not empty sessionScope.authUser}">
                                		<a href="${pageContext.request.contextPath}/mypage/history"><b>${authUser.userNickname}</b> 님이 접속하셨습니다. </a>
                                		<a href="${pageContext.request.contextPath}/mypage/collect/scrap"><i class="fa fa-list-alt"></i> 스크랩</a>
                                		<a href="${pageContext.request.contextPath}/user/logout"><i class="fa fa-sign-in"></i> 로그아웃</a>
                                	</c:when>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Header Top Bar -->
                <!-- Main Header -->
                <div class="main-header">
                    <div class="container">
                        <!-- TopNav -->
                        <div class="topnav navbar-header">
                            <a class="navbar-toggle down-button" data-toggle="collapse" data-target=".slidedown">
                            <i class="fa fa-angle-down icon-current"></i>
                            </a> 
                        </div>
                        <!-- /TopNav-->
                        <!-- Logo -->
                        <div class="logo pull-left">
                            <h1>
                                <a href="${pageContext.request.contextPath}/">
                                <img class="logo-color" src="${pageContext.request.contextPath}/resources/img/logos/soi-logo.png" alt="gallaxy" width="160" height="60">
                                </a>
                            </h1>
                        </div>
                        <!-- /Logo -->
                        <!-- Mobile Menu -->
                        <div class="mobile navbar-header">
                            <a class="navbar-toggle" data-toggle="collapse" href=".navbar-collapse">
                            <i class="fa fa-bars fa-2x"></i>
                            </a> 
                        </div>
                        <!-- /Mobile Menu -->
                        <!-- Menu Start -->
                        <nav class="collapse navbar-collapse menu">
                            <ul class="nav navbar-nav sf-menu">
                                <li>
                                    <a href="${pageContext.request.contextPath}/"><b>소개</b></a>
                                </li>
                                <li>
                                    <a href="#" class="sf-with-ul">
                                   	<b>면접진단</b>
                                    <span class="sf-sub-indicator">
                                    <i class="fa fa-angle-down "></i>
                                    </span>
                                    </a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/interview/livemode" class="sf-with-ul">실시간 모드</a></li>
                                        <li><a href="${pageContext.request.contextPath}/interview/uploadmode" class="sf-with-ul">업로드 모드</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/post/soifactorylist" class="sf-with-ul">
                                   	 <b>소이팩토리 </b>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="sf-with-ul">
                                	<b>마이페이지</b>
                                    <span class="sf-sub-indicator">
                                    <i class="fa fa-angle-down "></i>
                                    </span>
                                    </a>
                                    <ul>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/mypage/history" class="sf-with-ul">
                                         	진단히스토리
                                            <!-- <span class="sf-sub-indicator pull-right">
                                            <i class="fa fa-angle-right"></i>
                                            </span> -->
                                            </a>
                                            <!-- <ul>
                                                <li><a href="about-me.html" class="sf-with-ul">About Me</a></li>
                                                <li><a href="about.html" class="sf-with-ul">About Us</a></li>
                                                <li><a href="about-2.html" class="sf-with-ul">About Us Option</a></li>
                                            </ul> -->
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/mypage/videoclip" class="sf-with-ul">
                                           	영상관리
                                            <!-- <span class="sf-sub-indicator pull-right">
                                            <i class="fa fa-angle-right"></i>
                                            </span> -->
                                            </a>
                                        </li>
                                        <li><a href="#" class="sf-with-ul">
                                        	<span class="sf-sub-indicator pull-right">
                                            <i class="fa fa-angle-right"></i>
                                            </span>
                                           	나의 활동
                                            </a>
                                            <ul>
                                                <li><a href="${pageContext.request.contextPath}/mypage/collect/comment" class="sf-with-ul">댓글</a></li>
                                                <li><a href="${pageContext.request.contextPath}/mypage/collect/video" class="sf-with-ul">영상</a></li>
                                                <li><a href="${pageContext.request.contextPath}/mypage/collect/scrap" class="sf-with-ul">스크랩</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="${pageContext.request.contextPath}/mypage/beforemodify" class="sf-with-ul">회원정보수정</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#" class="sf-with-ul">
                                  	<b>고객센터</b>
                                    <span class="sf-sub-indicator">
                                    <i class="fa fa-angle-down "></i>
                                    </span>
                                    </a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/cs/notice" class="sf-with-ul">공지사항</a></li>
                                        <li><a href="${pageContext.request.contextPath}/cs/qna" class="sf-with-ul">Q&A</a></li>
                                        <li><a href="${pageContext.request.contextPath}/cs/help" class="sf-with-ul">도움말</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                        <!-- /Menu --> 
                    </div>
                </div>
                <!-- /Main Header -->
            </header>
            <!-- /Header -->

            <!-- Modal -->
            <section id="modals">
                <!-- Login Modal -->
                <div class="modal login fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModal" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h2 class="form-signin-heading modal-title" id="myModalLabel">Login</h2>
                            </div>
                            <form method="post" id="login" action="${pageContext.request.contextPath}/user/login">
                                <div class="modal-body">
                                    <fieldset>
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <input class="form-control" id="userid" name="id" type="text" placeholder="UserId" value="" required>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <input class="form-control" type="password" id="userpw" name="password" placeholder="Password" value="" required>
                                            </div>
                                        </div>
                                    </fieldset>
                                </div>
                                <div class="modal-footer">
                                    <a href="password-recovery.html" class="pull-left">(Lost Password?)</a>
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    <button type="submit" id="btnLogin" class="btn btn-color">Login</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- /Login Modal -->
                
                <!-- Registration Modal -->
                <!-- /Registration Modal -->
            </section>
            <!-- /Modal -->
            <!-- Scroll To Top  -->
            <a href="#" class="scrollup"><i class="fa fa-angle-up"></i></a>
        <!-- /Wrap -->
        <!-- Style Switcher
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
        </section> -->
        <!-- /Style Switcher -->
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
        <script src="${pageContext.request.contextPath}/resources/js/jquery.knob.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/imagesloaded.pkgd.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/waypoints.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/wow.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.fitvids.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/spectrum.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/switcher.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/simpleGallery/jquery.simpleGallery.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/simpleGallery/jquery.simpleLens.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/product.js"></script>

    <!-- <script>
    $("#btnLogin").on("click", function() {
		var id=$("#userid").val();
		var password=$("#userpw").val();
		console.log(id);
		console.log(password);
		
		var userVo = {
				userId:id,
				userPwd:password
		};
		console.log(userVo);
		
		$.ajax({
			url : "${pageContext.request.contextPath}/user/api/login",
			type : "post",
			contentType : "application/json", 
			data : JSON.stringify(userVo),
			
			dataType : "json",
			success : function(userVo) {
				console.log(userVo);
				var userId = userVo.userId;
				var userPwd = userVo.userPwd;
				console.log(userId);
				
				$("[name=id]").val("");
				$("[name=password]").val("");
				
				selectList(userId,userPwd);
			},
			
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});
    
    function selectList(userId, userPwd) { //어떤 사용자 정의함수 든, 세미콜론으로 닫아주기.
    	var userVo = {
				userId:userId,
				userPwd:userPwd
		};
		$.ajax({
			//보내기
			url : "${pageContext.request.contextPath}/user/api/loginSelectList",
			type : "post",
			contentType : "application/json", 
			data : JSON.stringify(userVo),

			//받기
			dataType : "json",
			success : function(writeListAjax){
			/*성공시 처리해야될 코드 작성*/
				render(writeListAjax,"up")
			},

			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}

			});
	};
    </script> -->
    </body>
</html>