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
                                                <label for="fname"> <span class="required">* 표시는 반드시 작성해주세요.</span></label>
                                                <br/><br/>
                                                <div class="row">
                                                    <div class="form-group">
                                                        <label for="fname">이름 <span class="required">*</span></label>
                                                        <input type="text" value="" name="userName" class="form-control" placeholder="이름" style="margin-bottom :5px;">
                                                       
                                                    </div>
                                                

                                                    <div class="form-group">
                                                        <label for="lname">아이디 <span class="required">*</span></label>
                                                            <input type="text" id="id" value="" name="userId" class="form-control" placeholder="아이디" style="margin-bottom :5px;">             	
                                                        
                                                    </div>
                                                    <div class="col-md-12" id="chkUserId"></div>

                                                
                                                    <div class="form-group">
                                                        <label for="fname">닉네임 <span class="required">*</span></label>
                                                            <input type="text" id="nickname" value="" name="userNickname" class="form-control" placeholder="닉네임" style="margin-bottom :5px;">
                                                        
                                                    </div>
                                                    <div class="col-md-12" id="chkNickname"></div>
                                                
                                                    <div class="form-group">
                                                        <label for="fname">비밀번호 <span class="required">*</span></label>
                                                            <input type="password" id="password" name="userPwd" value="" class="form-control" placeholder="비밀번호" style="margin-bottom :5px;">
                                                    
                                                    </div>
                                                    <div class="col-md-12" id="chkPassword"></div>
                                                
                                                
                                                <!-- 비밀번호 재확인  -->
                                                <!-- <div class="row">
                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                            <input type="password" id="rePassword" name="userPwd" value="" class="form-control" placeholder="비밀번호">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12" id="chkRePassword"></div>
                                                </div> -->
                                                
                                                
                                                    <div class="form-group">
                                                        <label for="fname">이메일 <span class="required">*</span></label>
                                                            <input type="text" name="userEmail" id="email" value="" class="form-control" placeholder="이메일" style="margin-bottom :5px;">
                                                        
                                                    </div>
                                                    <div class="col-md-12" id="chkEmail"></div>
                                                
                                                    <div class="form-group">
                                                        <label for="fname">휴대전화번호 <span class="required">*</span></label>
                                                            <input type="text" name="userTel" id="tel" value="" class="form-control" placeholder="휴대전화번호" style="margin-bottom :5px;">
                                                        
                                                    </div>
                                                    <div class="col-md-12" id="chkTel"></div>
                                                
                                                    <div class="form-group">
                                                        <label for="fname">주소 <span class="required">*</span></label>
                                                            <input type="text" value="" name="userAddr" class="form-control" placeholder="주소" style="margin-bottom :5px;">
                                                        
                                                    </div>
                                                	<div class="row">
                                                    	<div class="col-md-3 pull-right">
                                                        	<input type="submit" value="가입하기" class="btn btn-color push-bottom" data-loading-text="Loading...">
                                                    	</div>
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
</body>    
   
<script>
	$("#id").keyup(function() {
		var id=$("#id").val();
		console.log(id);
		
		var check = /^.*.{4,15}$/;
		
		if(check.test(id)) {
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
		} else {
			$("#chkUserId").html("<font color=\"red\">4~15자 사용 가능</font>");
		}
	});
	
	$("#nickname").keyup(function() {
		var nick=$("#nickname").val();
		console.log(nick);
		
		var check = /^.*.{8,15}$/;
		
		if(check.test(nick)) {
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
		} else {
			$("#chkNickname").html("<font color=\"red\">8~15자 사용 가능</font>");
		}
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
	
	//기존에 존재하는 이메일에 대한 처리 해주어야 함.
	$("#email").keyup(function(){
		var email=$("[name=userEmail]").val();
		var check = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
		
		if(!check.test(email)) {
			$("#chkEmail").html("<font color=\"red\">이메일 양식으로 작성해주세요.</font>");
		} else {
			$("#chkEmail").text("사용 가능한 이메일입니다.");
		}
	});

	//기존에 존재하는 휴대폰 번호에 대한 처리 해주어야 함.
	$("#tel").keyup(function(){
		var tel=$("[name=userTel]").val();
		var check = /^\d{3}-\d{3,4}-\d{4}$/;
		
		if(!check.test(tel)) {
			$("#chkTel").html("<font color=\"red\">휴대폰 번호 양식이 아닙니다.</font>");
		} else {
			$("#chkTel").text("사용 가능한 휴대폰 번호입니다.");
		}
	});

</script>

</html>