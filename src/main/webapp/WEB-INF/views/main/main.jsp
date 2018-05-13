<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--[if IE 8]>          <html class="ie ie8"> <![endif]-->
<!--[if IE 9]>          <html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->  
<html> 
	<!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title> HI, SOI! | Coaching your interview </title>
        <!-- 5초 뒤 다른 페이지로 보내기
        <meta http-equiv="refresh" content="5;url=http://www.naver.com/"> -->
        <!-- 검색엔진에게 문서의 내용을 요약해 주는 역할 -->
        <meta name="description" content="interview 면접">
        <meta name="author" content="interview">
        <!-- Mobile Metas(모바일에서 웹과 동일한 디자인, 해상도의 css 적용을 위해 필수) -->
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
        <%-- <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/ico/favicon.ico">
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/ico/apple-touch-icon.png">
        <link rel="apple-touch-icon" sizes="72x72" href="${pageContext.request.contextPath}/resources/img/ico/apple-touch-icon-72.png">
        <link rel="apple-touch-icon" sizes="114x114" href="${pageContext.request.contextPath}/resources/img/ico/apple-touch-icon-114.png">
        <link rel="apple-touch-icon" sizes="144x144" href="${pageContext.request.contextPath}/resources/img/ico/apple-touch-icon-144.png"> --%>
        
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
                <!-- Slider Start-->
                <div class="fullwidthbanner-container tp-banner-container">
                    <div class="fullwidthbanner rslider tp-banner">
                        <ul>
                            <!-- THE FIRST SLIDE -->
                            <li data-transition="fade" data-slotamount="7" data-masterspeed="2000" data-thumb="homeslider_thumb2.jpg" data-delay="10000"  data-saveperformance="on">
                                <!-- MAIN IMAGE -->
                                <img src="${pageContext.request.contextPath}/resources/img/dummy.png"  alt="laptopmockup_sliderdy" data-lazyload="${pageContext.request.contextPath}/resources/img/slider/nivo_slider1.jpg" data-bgposition="right top" data-kenburns="on" data-duration="12000" data-ease="Power0.easeInOut" data-bgfit="115" data-bgfitend="100" data-bgpositionend="center bottom">
                                <!-- LAYERS -->
                                <!-- LAYER NR. 1 -->
                                <div class="tp-caption customin fadeout rs-parallaxlevel-10"
                                    data-x="783"
                                    data-y="146" 
                                    data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                    data-speed="300"
                                    data-start="2700"
                                    data-easing="Power3.easeInOut"
                                    data-elementdelay="0.1"
                                    data-endelementdelay="0.1"
                                    data-endspeed="300"
                                    style="z-index: 2;"><img src="${pageContext.request.contextPath}/resources/img/dummy.png" alt="" data-lazyload="${pageContext.request.contextPath}/resources/img/redbg_big.png">
                                </div>
                                <!-- LAYER NR. 2 -->
                                <div class="tp-caption light_heavy_50 customin fadeout tp-resizeme rs-parallaxlevel-10"
                                    data-x="797"
                                    data-y="154" 
                                    data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                    data-speed="300"
                                    data-start="2850"
                                    data-easing="Power3.easeInOut"
                                    data-splitin="none"
                                    data-splitout="none"
                                    data-elementdelay="0.1"
                                    data-endelementdelay="0.1"
                                    data-endspeed="300"
                                    style="z-index: 3; max-width: auto; max-height: auto; white-space: nowrap;">Hi SOI!
                                </div>
                                <!-- LAYER NR. 3 -->
                                <div class="tp-caption black_heavy_70 skewfromleftshort fadeout tp-resizeme rs-parallaxlevel-10"
                                    data-x="550"
                                    data-y="83" 
                                    data-speed="500"
                                    data-start="2400"
                                    data-easing="Power3.easeInOut"
                                    data-splitin="chars"
                                    data-splitout="none"
                                    data-elementdelay="0.1"
                                    data-endelementdelay="0.1"
                                    data-endspeed="300"
                                    style="z-index: 4; max-width: auto; max-height: auto; white-space: nowrap;">면접 준비는
                                </div>
                                <!-- LAYER NR. 4 -->
                                <div class="tp-caption black_bold_40 skewfromrightshort fadeout tp-resizeme rs-parallaxlevel-10"
                                    data-x="900"
                                    data-y="232" 
                                    data-speed="500"
                                    data-start="3200"
                                    data-easing="Power3.easeInOut"
                                    data-splitin="chars"
                                    data-splitout="none"
                                    data-elementdelay="0.1"
                                    data-endelementdelay="0.1"
                                    data-endspeed="300"
                                    style="z-index: 5; max-width: auto; max-height: auto; white-space: nowrap;">와 함께
                                </div>
                                <!-- LAYER NR. 5 -->
                                <div class="tp-caption black_bold_bg_20 sfr fadeout tp-resizeme rs-parallaxlevel-10"
                                    data-x="933"
                                    data-y="300" 
                                    data-speed="300"
                                    data-start="4000"
                                    data-easing="Power3.easeInOut"
                                    data-splitin="none"
                                    data-splitout="none"
                                    data-elementdelay="0.1"
                                    data-endelementdelay="0.1"
                                    data-endspeed="300"
                                    style="z-index: 6; max-width: auto; max-height: auto; white-space: nowrap;">쉬운 사용법
                                </div>
                                <!-- LAYER NR. 6 -->
                                <div class="tp-caption greenbox30 customin fadeout tp-resizeme rs-parallaxlevel-10"
                                    data-x="902"
                                    data-y="300" 
                                    data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                    data-speed="300"
                                    data-start="4000"
                                    data-easing="Power3.easeInOut"
                                    data-splitin="none"
                                    data-splitout="none"
                                    data-elementdelay="0.1"
                                    data-endelementdelay="0.1"
                                    data-endspeed="300"
                                    style="z-index: 7; max-width: auto; max-height: auto; white-space: nowrap;">&nbsp;
                                </div>
                                <!-- LAYER NR. 7 -->
                                <div class="tp-caption arrowicon customin fadeout rs-parallaxlevel-10"
                                    data-x="911"
                                    data-y="306" 
                                    data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                    data-speed="300"
                                    data-start="4200"
                                    data-easing="Power3.easeInOut"
                                    data-elementdelay="0.1"
                                    data-endelementdelay="0.1"
                                    data-endspeed="300"
                                    style="z-index: 8;"><img src="${pageContext.request.contextPath}/resources/img/dummy.png" alt="" data-ww="17" data-hh="17" data-lazyload="${pageContext.request.contextPath}/resources/img/check.png">
                                </div>
                                <!-- LAYER NR. 8 -->
                                <div class="tp-caption black_bold_bg_20 sfr fadeout tp-resizeme rs-parallaxlevel-10"
                                    data-x="933"
                                    data-y="340" 
                                    data-speed="300"
                                    data-start="4500"
                                    data-easing="Power3.easeInOut"
                                    data-splitin="none"
                                    data-splitout="none"
                                    data-elementdelay="0.1"
                                    data-endelementdelay="0.1"
                                    data-endspeed="300"
                                    style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;">정확한 면접 진단
                                </div>
                                <!-- LAYER NR. 9 -->
                                <div class="tp-caption greenbox30 customin fadeout tp-resizeme rs-parallaxlevel-10"
                                    data-x="902"
                                    data-y="340" 
                                    data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                    data-speed="300"
                                    data-start="4500"
                                    data-easing="Power3.easeInOut"
                                    data-splitin="none"
                                    data-splitout="none"
                                    data-elementdelay="0.1"
                                    data-endelementdelay="0.1"
                                    data-endspeed="300"
                                    style="z-index: 10; max-width: auto; max-height: auto; white-space: nowrap;">&nbsp;
                                </div>
                                <!-- LAYER NR. 10 -->
                                <div class="tp-caption arrowicon customin fadeout rs-parallaxlevel-10"
                                    data-x="911"
                                    data-y="347" 
                                    data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                    data-speed="300"
                                    data-start="4700"
                                    data-easing="Power3.easeInOut"
                                    data-elementdelay="0.1"
                                    data-endelementdelay="0.1"
                                    data-endspeed="300"
                                    style="z-index: 11;"><img src="${pageContext.request.contextPath}/resources/img/dummy.png" alt="" data-ww="17" data-hh="17" data-lazyload="${pageContext.request.contextPath}/resources/img/check.png">
                                </div>
                                <!-- LAYER NR. 11 -->
                                <div class="tp-caption black_bold_bg_20 sfr fadeout tp-resizeme rs-parallaxlevel-10"
                                    data-x="933"
                                    data-y="380" 
                                    data-speed="300"
                                    data-start="5000"
                                    data-easing="Power3.easeInOut"
                                    data-splitin="none"
                                    data-splitout="none"
                                    data-elementdelay="0.1"
                                    data-endelementdelay="0.1"
                                    data-endspeed="300"
                                    style="z-index: 12; max-width: auto; max-height: auto; white-space: nowrap;">면접 고수들의 조언
                                </div>
                                <!-- LAYER NR. 12 -->
                                <div class="tp-caption greenbox30 customin fadeout tp-resizeme rs-parallaxlevel-10"
                                    data-x="902"
                                    data-y="380" 
                                    data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                    data-speed="300"
                                    data-start="5000"
                                    data-easing="Power3.easeInOut"
                                    data-splitin="none"
                                    data-splitout="none"
                                    data-elementdelay="0.1"
                                    data-endelementdelay="0.1"
                                    data-endspeed="300"
                                    style="z-index: 13; max-width: auto; max-height: auto; white-space: nowrap;">&nbsp;
                                </div>
                                <!-- LAYER NR. 13 -->
                                <div class="tp-caption arrowicon customin fadeout rs-parallaxlevel-10"
                                    data-x="911"
                                    data-y="386" 
                                    data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                    data-speed="300"
                                    data-start="5200"
                                    data-easing="Power3.easeInOut"
                                    data-elementdelay="0.1"
                                    data-endelementdelay="0.1"
                                    data-endspeed="300"
                                    style="z-index: 14;"><img src="${pageContext.request.contextPath}/resources/img/dummy.png" alt="" data-ww="17" data-hh="17" data-lazyload="${pageContext.request.contextPath}/resources/img/check.png">
                                </div>
                            </li>
                            <!-- /THE FIRST SLIDE -->
                           
                        </ul>
                    </div>
                </div>
                <!-- Slider End--> 
                
                <!-- testimonials -->
                <div id="testimonials" class="padding-top100">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="text-center">
                                    <h2 class="wow fadeIn">HI, SOI! Introduce</h2>
                                    <h4 class="wow fadeInRight">많은 구직자들이 HI,SOI와 함께 취업의 문을 열어가고 있습니다. HI,SOI 사용자들과 함께 면접 피드백을 받아보세요. </h4>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 wow fadeInRight">
                                <!-- Testimonials Widget -->
                                <div class="row margin-top25">
                                    <div class="testimonials widget">
                                        <div class="clearfix"></div>
                                        <div id="testimonials-carousel" class="testimonials-carousel carousel slide">
                                            <div class="carousel-inner">
                                                <div class="item active">
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="testimonial item">
                                                            <p>
                                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam necessitatibus magni nulla tempore ad deserunt vero dolor? Minus aspernatur adipisci quam nam, animi eveniet quos ab, necessitatibus iusto, molestias eligendi!
                                                            </p>
                                                            <div class="testimonials-arrow"></div>
                                                            <div class="author">
                                                                <div class="testimonial-image ">
                                                                    <img alt="" src="${pageContext.request.contextPath}/resources/img/testimonial/team-member-1.jpg">
                                                                </div>
                                                                <div class="testimonial-author-info">
                                                                    <a href="#"><span class="color">HISOI LAB</span></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /Testimonials Widget -->                            
                        </div>
                    </div>
                </div>
                <!-- /testimonials -->
                <!-- random fact -->
                <div id="random-facts" class=" margin-top70">
                    <div class="pattern-overlay">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="padding-top60 text-center">
                                        <h2 class="light wow fadeIn">HI, SOI 사이트 통계</h2>
                                        <h4 class="light wow fadeInRight">
                                            	얼마나 많은 사용자가 이용하는지, 수치로 확인하십시오!
                                        </h4>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeIn">
                                    <div class="random-box padding-top30 padding-bottom40">
                                        <div class="random-box-icon">
                                            <i class="fa fa-user"></i>
                                        </div>
                                        <div class="random-box-info">
                                            <span class="facts" data-from="0" data-to="1010" data-speed="5000" data-refresh-interval="50"></span>
                                            <p>
                                                	총 방문자수
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeIn">
                                    <div class="random-box padding-top30 padding-bottom40">
                                        <div class="random-box-icon">
                                            <i class="fa fa-briefcase"></i>
                                        </div>
                                        <div class="random-box-info">
                                            <span class="facts" data-from="0" data-to="299" data-speed="5000" data-refresh-interval="50"></span>
                                            <p>
                                                	면접 영상 수
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeIn">
                                    <div class="random-box padding-top30 padding-bottom40">
                                        <div class="random-box-icon">
                                            <i class="fa fa-heart"></i>
                                        </div>
                                        <div class="random-box-info">
                                            <span class="facts" data-from="0" data-to="175" data-speed="5000" data-refresh-interval="50"></span>
                                            <p>
                                                	총 진단 수
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeIn">
                                    <div class="random-box padding-top30 padding-bottom40">
                                        <div class="random-box-icon">
                                            <i class="fa fa-gift"></i>
                                        </div>
                                        <div class="random-box-info">
                                            <span class="facts" data-from="0" data-to="50" data-speed="5000" data-refresh-interval="50"></span>
                                            <p>
                                                AWARDS
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /random fact -->
                <!-- Main Content start-->
                <div class="main-content">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                            <div class="ch-info-front ch-img-1"><i class="fa fa-rocket"></i></div>
                                            <div class="ch-info-back">
                                                <i class="fa fa-rocket"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="content-box-info">
                                        <h3>진행중인 채용 현황</h3>
                                        <p>
                                            Lorem Ipsum is simply dummy text of Lorem the printing and typesettings industry.
                                        </p>
                                        <a href="#">바로가기 <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>
                                    </div>
                                    <div class="border-bottom margin-top30">
                                    </div>
                                    <div class="border-bottom">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                            <div class="ch-info-front ch-img-1"><i class="fa fa-check"></i></div>
                                            <div class="ch-info-back">
                                                <i class="fa fa-check"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="content-box-info">
                                        <h3>자기소개서 첨삭</h3>
                                        <p>
                                            Lorem Ipsum is simply dummy text of Lorem the printing and typesettings industry.
                                        </p>
                                        <a href="#">바로가기 <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>
                                    </div>
                                    <div class="border-bottom margin-top30">
                                    </div>
                                    <div class="border-bottom">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn">
                                <div class="content-box big ch-item">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                            <div class="ch-info-front ch-img-1"><i class="fa fa-tags"></i></div>
                                            <div class="ch-info-back">
                                                <i class="fa fa-tags"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="content-box-info">
                                        <h3>주요 기업 채용설명회 일정</h3>
                                        <p>
                                            Lorem Ipsum is simply dummy text of Lorem the printing and typesettings industry.
                                        </p>
                                        <a href="#">바로가기 <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>
                                    </div>
                                    <div class="border-bottom margin-top30">
                                    </div>
                                    <div class="border-bottom">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Main Content end-->
                <!-- Slogan-->
                <div class="slogan margin-top100 bottom-pad-small">
                    <div class="pattern-overlay">
                        <div class="container">
                            <div class="row">
                                <div class="slogan-content">
                                    <div class="col-lg-10 col-md-10 wow fadeInLeft">
                                        <h2 class="slogan-title">면접에서 자꾸 떨어지신다구요? 면접 코칭 받으세요!</h2>
                                    </div>
                                    <div class="col-lg-2 col-md-2 wow fadeInRight">
                                        <div class="get-started">
                                            <a href="${pageContext.request.contextPath}/interview/livemode" class="btn-special btn-grey pull-right">내 면접 진단</a>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Slogan-->                                                          
                <!-- Our Clients-->
                <div class="our-clients">
                    <div class="container">
                        <div class="row">
                            <div class="client">
                                <div class="client-logo">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="text-center">
                                            <h2 class="wow fadeIn">인기 면접영상</h2>
                                            <h4 class="wow fadeInRight">
                                                	면접 고수들의 면접 영상을 바로 확인하세요.
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="clearfix"></div>
                                        <div class="row text-center padding-top40">
                                            <div id="client-carousel" class="client-carousel carousel slide">
                                                <div class="carousel-inner">
                                                    <div class="item active">
                                                    	<c:forEach items="${mainList}" var="postVo" begin="0" end="3">
                                                        	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item wow fadeIn">
                                                            	<div class="item-inner"><a href="${pageContext.request.contextPath}/post/soiread/${postVo.postNo}"><img alt="Upportdash" src="${pageContext.request.contextPath}/upload/${postVo.videoThumnail}"></a></div>
                                                        	</div>
                                                        </c:forEach>
                                                    </div>
                                                    <div class="item">
                                                    	<c:forEach items="${mainList}" var="postVo" begin="4" end="7">
                                                        	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item">
                                                            	<div class="item-inner"><a href="${pageContext.request.contextPath}/post/soiread/${postVo.postNo}"><img alt="Upportdash" src="${pageContext.request.contextPath}/upload/${postVo.videoThumnail}"></a></div>
                                                        	</div>
                                                        </c:forEach>
                                                    </div>
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 wow fadeInUp">
                                        <div class="clients-title">
                                            <h3 class="title">&nbsp;</h3>
                                            <div class="carousel-controls pull-right">
                                                <a class="prev" href="#client-carousel" data-slide="prev"><i class="fa fa-angle-left"></i></a>
                                                <a class="next" href="#client-carousel" data-slide="next"><i class="fa fa-angle-right"></i></a>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Our Clients -->  
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
<script>
	var result = '${loginmsg}';
	
	if(result == 'Failed'){
		console.log("로그인에 실패");
		alert("로그인에 실패하였습니다.");
	}
</script>
</html>