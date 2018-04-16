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
        <title>Login / Register Page | Gallaxy Responsive HTML5/CSS3 Template | FIFO THEMES</title>
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
    <body class="home">
        <div class="page-mask">
            <div class="page-loader">
                <div class="spinner"></div>
                Loading...
            </div>
        </div>
        <!-- Wrap -->
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
                                    <h2 class="title">회원 가입</h2>
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
                            <!-- Login -->
                            <div class="featured-boxes login">
                                <!-- Registration -->
                                <div class="col-md-6 col-md-offset-3">
                                    <div class="featured-box featured-box-secundary default info-content">
                                        <h2 class="form-signin-heading">일반 회원 가입</h2>
                                        <div class="box-content">
                                            <form action="${pageContext.request.contextPath}/user/join" id="signup" method="post">
                                                <div class="row">
                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                            <input type="text" value="" name="userName" class="form-control" placeholder="이름">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group">
                                                        <div class="col-md-9">
                                                            <input type="text" id="id" value="" name="userId" class="form-control" placeholder="아이디">             	
                                                        </div>
                                                        <div id="chkUserId"></div>
                                                        <div class="col-md-3 pull-right">
                                                        	<span class="input-group-btn">
                                                        		<input type="button" id="btn-checkid" value="중복체크" class="btn btn-color btn-subscribe">
                                                        	</span>
                                                    	</div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group">
                                                        <div class="col-md-9">
                                                            <input type="text" id="nickname" value="" name="userNickname" class="form-control" placeholder="닉네임">
                                                        </div>
                                                        <div id="chkNickname"></div>
                                                        <div class="col-md-3 pull-right">
                                                        	<span class="input-group-btn">
                                                        		<input type="button" id="btn-checknick" value="중복체크" class="btn btn-color btn-subscribe">
                                                        	</span>
                                                    	</div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group">
                                                        <div class="col-md-6">
                                                            <input type="password" id="password" name="userPwd" value="" class="form-control" placeholder="비밀번호">
                                                        </div>
                                                        <div id="chkPassword"></div>
                                                        <!-- <div class="col-md-6">
                                                            <input type="password" value="" class="form-control" placeholder="비밀번호 재확인">
                                                        </div> -->
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                            <input type="text" name="userEmail"value="" class="form-control" placeholder="이메일">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                            <input type="text" value="" name="userTel" class="form-control" placeholder="휴대전화번호">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                            <input type="text" value="" name="userAddr" class="form-control" placeholder="주소">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-3 pull-right">
                                                        <input type="submit" value="가입하기" class="btn btn-color push-bottom" data-loading-text="Loading...">
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Registration -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Main Content -->
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
            <!-- /Modal -->
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
        <script src="${pageContext.request.contextPath}/resources/js/jquery.knob.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/imagesloaded.pkgd.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/waypoints.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/wow.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.fitvids.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/spectrum.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/switcher.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
<script>
	$("#btn-checkid").on("click", function() {
		var id=$("#id").val();
		console.log(id);
		
		$.ajax({
			url : "${pageContext.request.contextPath}/user/api/idchk",
			type : "post",
			data : {
				id:id
			},
			
			success : function(result) {
				if(result==true) {
					$("#chkUserId").text("사용 가능한 아이디입니다.");
				} else {
					$("#chkUserId").html("<font color=\"red\">사용중인 아이디입니다.</font>");
				}
			},
			
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});
	
	$("#btn-checknick").on("click", function() {
		var nick=$("#nickname").val();
		console.log(nick);
		
		$.ajax({
			url : "${pageContext.request.contextPath}/user/api/nickchk",
			type : "post",
			data : {
				nick:nick
			},
			
			success : function(result) {
				if(result==true) {
					$("#chkNickname").text("사용 가능한 닉네임입니다.");
				} else {
					$("#chkNickname").html("<font color=\"red\">사용중인 닉네임입니다.</font>");
				}
			},
			
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});
	
	$("#password").keyup(function(){
		var pw = $("[name=userPwd]").val();
		var check = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,20}$/;
		if(!check.test(pw)) {
			$("#chkPassword").html("<font color=\"red\">8~20자의 영문대소문자, 숫자 및 특수문자 사용</font>");
		} else {
			$("#chkPassword").text("사용 가능한 비밀번호입니다.");
		}
	});

</script>
</body>
</html>