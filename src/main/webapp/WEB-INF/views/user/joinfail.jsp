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
                <div class="breadcrumb-wrapper">
                    <div class="pattern-overlay">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                    <h2 class="title">회원가입 결과</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Main Content -->
                <div class="content margin-top60 margin-bottom60">
                    <div class="container">
                        <div class="row">
                            <article class="col-sm-12 col-md-12 content">
                                <div class="my-account">
                                    <div class="bottom-padding">
                                        <p><strong>회원가입 오류</strong></p>
                                        <div class="alert alert-danger">
                                            <ul class="list-unstyled">
                                                <li><strong>회원가입에 실패하였습니다. 다시 시도해주세요.</strong></li>
                                            </ul>
                                        </div>
                                        <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order wont be shipped until the funds have cleared in our account.</p>
                                    </div>
                                </div>
                            </article>
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
</html>