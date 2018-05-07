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
        <title>Home Shop | Gallaxy Responsive HTML5/CSS3 Template | FIFO THEMES</title>
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
                           <%--  <!-- THE RESPONSIVE SLIDE -->
                            <li data-transition="fade" data-slotamount="1" data-masterspeed="300">
                                <img src="img/slider/slider-bg-2.jpg" data-fullwidthcentering="on" alt="">
                                <div class="caption large_text sft"
                                    data-x="660"
                                    data-y="54"
                                    data-speed="300"
                                    data-start="800"
                                    data-easing="easeOutExpo"  >TOUCH ENABLED</div>
                                <div class="caption medium_text sfl"
                                    data-x="689"
                                    data-y="92"
                                    data-speed="300"
                                    data-start="1100"
                                    data-easing="easeOutExpo"  >AND</div>
                                <div class="caption large_text sfr"
                                    data-x="738"
                                    data-y="88"
                                    data-speed="300"
                                    data-start="1100"
                                    data-easing="easeOutExpo"  ><span class="dblue">RESPONSIVE</span></div>
                                <!-- LAYER NR. 5 1 -->
                                <div class="tp-caption black_bold_bg_20 sfr fadeout tp-resizeme rs-parallaxlevel-10"
                                    data-x="691"
                                    data-y="220" 
                                    data-speed="300"
                                    data-start="1000"
                                    data-easing="Power3.easeInOut"
                                    data-splitin="none"
                                    data-splitout="none"
                                    data-elementdelay="0.1"
                                    data-endelementdelay="0.1"
                                    data-endspeed="300"
                                    style="z-index: 6; max-width: auto; max-height: auto; white-space: nowrap;">Unique Design
                                </div>
                                <!-- LAYER NR. 6 1 -->
                                <div class="tp-caption greenbox30 customin fadeout tp-resizeme rs-parallaxlevel-10"
                                    data-x="660"
                                    data-y="220" 
                                    data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                    data-speed="300"
                                    data-start="1200"
                                    data-easing="Power3.easeInOut"
                                    data-splitin="none"
                                    data-splitout="none"
                                    data-elementdelay="0.1"
                                    data-endelementdelay="0.1"
                                    data-endspeed="300"
                                    style="z-index: 7; max-width: auto; max-height: auto; white-space: nowrap;">&nbsp;
                                </div>
                                <!-- LAYER NR. 7 1 -->
                                <div class="tp-caption arrowicon customin fadeout rs-parallaxlevel-10"
                                    data-x="669"
                                    data-y="232" 
                                    data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                    data-speed="300"
                                    data-start="1500"
                                    data-easing="Power3.easeInOut"
                                    data-elementdelay="0.1"
                                    data-endelementdelay="0.1"
                                    data-endspeed="300"
                                    style="z-index: 8;"><img src="${pageContext.request.contextPath}/resources/img/dummy.png" alt="" data-ww="17" data-hh="17" data-lazyload="${pageContext.request.contextPath}/resources/img/check.png">
                                </div>
                                <!-- LAYER NR. 5 1 -->
                                <div class="tp-caption black_bold_bg_20 sfr fadeout tp-resizeme rs-parallaxlevel-10"
                                    data-x="691"
                                    data-y="260" 
                                    data-speed="300"
                                    data-start="1500"
                                    data-easing="Power3.easeInOut"
                                    data-splitin="none"
                                    data-splitout="none"
                                    data-elementdelay="0.1"
                                    data-endelementdelay="0.1"
                                    data-endspeed="300"
                                    style="z-index: 6; max-width: auto; max-height: auto; white-space: nowrap;">Responsive Pricing Tables
                                </div>
                                <!-- LAYER NR. 6 1 -->
                                <div class="tp-caption greenbox30 customin fadeout tp-resizeme rs-parallaxlevel-10"
                                    data-x="660"
                                    data-y="260" 
                                    data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                    data-speed="300"
                                    data-start="1700"
                                    data-easing="Power3.easeInOut"
                                    data-splitin="none"
                                    data-splitout="none"
                                    data-elementdelay="0.1"
                                    data-endelementdelay="0.1"
                                    data-endspeed="300"
                                    style="z-index: 7; max-width: auto; max-height: auto; white-space: nowrap;">&nbsp;
                                </div>
                                <!-- LAYER NR. 7 1 -->
                                <div class="tp-caption arrowicon customin fadeout rs-parallaxlevel-10"
                                    data-x="669"
                                    data-y="272" 
                                    data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                    data-speed="300"
                                    data-start="2000"
                                    data-easing="Power3.easeInOut"
                                    data-elementdelay="0.1"
                                    data-endelementdelay="0.1"
                                    data-endspeed="300"
                                    style="z-index: 8;"><img src="${pageContext.request.contextPath}/resources/img/dummy.png" alt="" data-ww="17" data-hh="17" data-lazyload="${pageContext.request.contextPath}/resources/img/check.png">
                                </div>
                                <!-- LAYER NR. 5 -->
                                <div class="tp-caption black_bold_bg_20 sfr fadeout tp-resizeme rs-parallaxlevel-10"
                                    data-x="691"
                                    data-y="300" 
                                    data-speed="300"
                                    data-start="2000"
                                    data-easing="Power3.easeInOut"
                                    data-splitin="none"
                                    data-splitout="none"
                                    data-elementdelay="0.1"
                                    data-endelementdelay="0.1"
                                    data-endspeed="300"
                                    style="z-index: 6; max-width: auto; max-height: auto; white-space: nowrap;">Crossbrowser Compatible
                                </div>
                                <!-- LAYER NR. 6 -->
                                <div class="tp-caption greenbox30 customin fadeout tp-resizeme rs-parallaxlevel-10"
                                    data-x="660"
                                    data-y="300" 
                                    data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                    data-speed="300"
                                    data-start="2000"
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
                                    data-x="669"
                                    data-y="306" 
                                    data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                    data-speed="300"
                                    data-start="2200"
                                    data-easing="Power3.easeInOut"
                                    data-elementdelay="0.1"
                                    data-endelementdelay="0.1"
                                    data-endspeed="300"
                                    style="z-index: 8;"><img src="${pageContext.request.contextPath}/resources/img/dummy.png" alt="" data-ww="17" data-hh="17" data-lazyload="${pageContext.request.contextPath}/resources/img/check.png">
                                </div>
                                <!-- LAYER NR. 8 -->
                                <div class="tp-caption black_bold_bg_20 sfr fadeout tp-resizeme rs-parallaxlevel-10"
                                    data-x="691"
                                    data-y="340" 
                                    data-speed="300"
                                    data-start="2500"
                                    data-easing="Power3.easeInOut"
                                    data-splitin="none"
                                    data-splitout="none"
                                    data-elementdelay="0.1"
                                    data-endelementdelay="0.1"
                                    data-endspeed="300"
                                    style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;">Twitter 1.1 API Support
                                </div>
                                <!-- LAYER NR. 9 -->
                                <div class="tp-caption greenbox30 customin fadeout tp-resizeme rs-parallaxlevel-10"
                                    data-x="660"
                                    data-y="340" 
                                    data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                    data-speed="300"
                                    data-start="2500"
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
                                    data-x="669"
                                    data-y="347" 
                                    data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                    data-speed="300"
                                    data-start="2700"
                                    data-easing="Power3.easeInOut"
                                    data-elementdelay="0.1"
                                    data-endelementdelay="0.1"
                                    data-endspeed="300"
                                    style="z-index: 11;"><img src="${pageContext.request.contextPath}/resources/img/dummy.png" alt="" data-ww="17" data-hh="17" data-lazyload="${pageContext.request.contextPath}/resources/img/check.png">
                                </div>
                                <!-- LAYER NR. 11 -->
                                <div class="tp-caption black_bold_bg_20 sfr fadeout tp-resizeme rs-parallaxlevel-10"
                                    data-x="691"
                                    data-y="380" 
                                    data-speed="300"
                                    data-start="3000"
                                    data-easing="Power3.easeInOut"
                                    data-splitin="none"
                                    data-splitout="none"
                                    data-elementdelay="0.1"
                                    data-endelementdelay="0.1"
                                    data-endspeed="300"
                                    style="z-index: 12; max-width: auto; max-height: auto; white-space: nowrap;">Bootstrap Framework
                                </div>
                                <!-- LAYER NR. 12 -->
                                <div class="tp-caption greenbox30 customin fadeout tp-resizeme rs-parallaxlevel-10"
                                    data-x="660"
                                    data-y="380" 
                                    data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                    data-speed="300"
                                    data-start="3000"
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
                                    data-x="669"
                                    data-y="386" 
                                    data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                    data-speed="300"
                                    data-start="3200"
                                    data-easing="Power3.easeInOut"
                                    data-elementdelay="0.1"
                                    data-endelementdelay="0.1"
                                    data-endspeed="300"
                                    style="z-index: 14;"><img src="${pageContext.request.contextPath}/resources/img/dummy.png" alt="" data-ww="17" data-hh="17" data-lazyload="${pageContext.request.contextPath}/resources/img/check.png">
                                </div>
                                <div class="caption lfl"
                                    data-x="53"
                                    data-y="30"
                                    data-speed="300"
                                    data-start="1400"
                                    data-easing="easeOutExpo">
                                    <img src="${pageContext.request.contextPath}/resources/img/slider/responsive-imac.png" alt="iMac Responsive">
                                </div>
                                <div class="caption lfl"
                                    data-x="323"
                                    data-y="145"
                                    data-speed="300"
                                    data-start="1500"
                                    data-easing="easeOutExpo">
                                    <img src="${pageContext.request.contextPath}/resources/img/slider/responsive-ipad.png" alt="iPad Responsive">
                                </div>
                                <div class="caption lfl"
                                    data-x="472"
                                    data-y="253"
                                    data-speed="300"
                                    data-start="1600"
                                    data-easing="easeOutExpo">
                                    <img src="${pageContext.request.contextPath}/resources/img/slider/responsive-iphone.png" alt="iPhone Responsive">
                                </div>
                            </li>  --%>
                        </ul>
                    </div>
                </div>
                <!-- Slider End--> 
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
                                        <h3>Responsive Design</h3>
                                        <p>
                                            Lorem Ipsum is simply dummy text of Lorem the printing and typesettings industry.
                                        </p>
                                        <a href="#">Read More <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>
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
                                        <h3>Retina Ready</h3>
                                        <p>
                                            Lorem Ipsum is simply dummy text of Lorem the printing and typesettings industry.
                                        </p>
                                        <a href="#">Read More <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>
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
                                        <h3>Premium Design</h3>
                                        <p>
                                            Lorem Ipsum is simply dummy text of Lorem the printing and typesettings industry.
                                        </p>
                                        <a href="#">Read More <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>
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
                <!-- Product Lead-->
                <div class="product-lead margin-top100">
                    <div class="pattern-overlay">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6 col-sm-12 col-xs-12 text-center wow fadeInLeft">
                                    <img class="app-img" src="img/iphone5c.png" alt="iPhone5c">
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12 wow fadeInRight">
                                    <div class="app-service padding-bottom50">
                                        <h2 class="light">Gallaxy App Services</h2>
                                        <h4>We provide all kinds of iPhone application design and development services.</h4>
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.Vivamus diam diam, fermentum sed dapibus eget, egestas sed eros. Lorem fermentum ipsum dolor sit amet.Lorem fermentum diam diam.  
                                        </p>
                                        <div class="divider"></div>
                                        <div class="learnmore">
                                            <a class="btn-special btn-grey" href="#">Learn More</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Product Lead--> 
                <!-- Products List-->
                <div class="related-product margin-top60 margin-bottom70">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="text-center">
                                    <h2 class="wow fadeIn">Our Products</h2>
                                    <h4 class="wow fadeInRight">
                                        Explore all of our products here and buy them easily
                                    </h4>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 wow fadeIn">
                                <div id="product-carousel" class="product-carousel carousel slide">
                                    <div class="carousel-inner">
                                            <div class="item active">
                                                <div class="product-grid">
                                                    <div class="products-block">
                                                        <div class="row product-items">
                                                            <!-- Single Product  -->
                                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols first">
                                                                <div class="product-block">
                                                                    <div class="image ">
                                                                        <span class="product-label product-label-special">
                                                                        <span>NEW</span>
                                                                        </span>
                                                                        <!-- Swap image -->
                                                                        <div class="flip">
                                                                            <a href="product-view.html" class="swap-image">
                                                                            <img src="img/shop/product_01.jpg" title="iPhone 5s 64 GB" alt="iPhone 5s 64 GB" class="front">
                                                                            </a>
                                                                        </div>
                                                                        <a href="product-view.html" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                                    </div>
                                                                    <div class="product-meta">
                                                                        <div class="left">
                                                                            <h3 class="name"><a href="product-view.html">iPhone 5s 64 GB</a></h3>
                                                                            <div class="price">
                                                                                <span class="price-old">$119.50</span>
                                                                                <span class="price-new">$107.75</span>
                                                                                <span class="price-tax">Ex Tax: $90.00</span>
                                                                            </div>
                                                                        </div>
                                                                        <div class="right">
                                                                            <div class="rating">
                                                                                <img src="img/shop/stars-5.png" alt="Based on 1 reviews.">
                                                                            </div>
                                                                            <p class="description">
                                                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                                                                            </p>
                                                                            <div class="action">
                                                                                <div class="cart">
                                                                                    <!-- <input type="button" value="" onclick="addToCart('');" class="product-icon fa fa-shopping-cart shopping-cart" /> -->
                                                                                    <button class="btn btn-shopping-cart">
                                                                                    <span class="fa fa-shopping-cart product-icon hidden-sm">&nbsp;</span>
                                                                                    <span>Add to Cart</span>
                                                                                    </button>
                                                                                </div>
                                                                                <div class="button-group">
                                                                                    <div class="wishlist">
                                                                                        <a title="Add to Wish List" class="fa fa-heart product-icon">
                                                                                        <span>Add to Wish List</span>
                                                                                        </a>
                                                                                    </div>
                                                                                    <div class="compare">
                                                                                        <a title="Add to Compare" class="fa fa-refresh product-icon">
                                                                                        <span>Add to Compare</span>
                                                                                        </a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- /Single Product  -->
                                                            <!-- Single Product  -->
                                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols">
                                                                <div class="product-block">
                                                                    <div class="image ">
                                                                        <span class="product-label product-label-special">
                                                                        <span>Sale</span>
                                                                        </span>
                                                                        <!-- Swap image -->
                                                                        <div class="flip">
                                                                            <a href="product-view.html" class="swap-image">
                                                                            <img src="img/shop/product_02.jpg" title="iPhone 4 16 GB" alt="iPhone 4 16 GB" class="front">
                                                                            </a>
                                                                        </div>
                                                                        <a href="product-view.html" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                                    </div>
                                                                    <div class="product-meta">
                                                                        <div class="left">
                                                                            <h3 class="name"><a href="product-view.html">iPhone 4 16 GB</a></h3>
                                                                            <div class="price">
                                                                                <span class="price-old">$589.50</span>
                                                                                <span class="price-new">$107.75</span>
                                                                                <span class="price-tax">Ex Tax: $90.00</span>
                                                                            </div>
                                                                        </div>
                                                                        <div class="right">
                                                                            <div class="rating">
                                                                                <img src="img/shop/stars-4.png" alt="Based on 1 reviews.">
                                                                            </div>
                                                                            <p class="description">
                                                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                                                                            </p>
                                                                            <div class="action">
                                                                                <div class="cart">
                                                                                    <!-- <input type="button" value="" onclick="addToCart('');" class="product-icon fa fa-shopping-cart shopping-cart" /> -->
                                                                                    <button class="btn btn-shopping-cart">
                                                                                    <span class="fa fa-shopping-cart product-icon hidden-sm">&nbsp;</span>
                                                                                    <span>Add to Cart</span>
                                                                                    </button>
                                                                                </div>
                                                                                <div class="button-group">
                                                                                    <div class="wishlist">
                                                                                        <a title="Add to Wish List" class="fa fa-heart product-icon">
                                                                                        <span>Add to Wish List</span>
                                                                                        </a>
                                                                                    </div>
                                                                                    <div class="compare">
                                                                                        <a title="Add to Compare" class="fa fa-refresh product-icon">
                                                                                        <span>Add to Compare</span>
                                                                                        </a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- /Single Product  -->
                                                            <!-- Single Product  -->
                                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols">
                                                                <div class="product-block">
                                                                    <div class="image ">
                                                                        <!-- Swap image -->
                                                                        <div class="flip">
                                                                            <a href="product-view.html" class="swap-image">
                                                                            <img src="img/shop/product_07.jpg" title="LG G-Flex 16 GB" alt="LG G-Flex 16 GB" class="front">
                                                                            </a>
                                                                        </div>
                                                                        <!-- /Swap image -->
                                                                        <a href="product-view.html" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                                    </div>
                                                                    <div class="product-meta">
                                                                        <div class="left">
                                                                            <h3 class="name"><a href="product-view.html">LG G-Flex 16 GB</a></h3>
                                                                            <div class="price">
                                                                                <span class="special-price">$589.50</span>
                                                                                <span class="price-tax">Ex Tax: $500.00</span>
                                                                            </div>
                                                                        </div>
                                                                        <div class="right">
                                                                            <div class="rating">
                                                                            </div>
                                                                            <p class="description">
                                                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                                                                            </p>
                                                                            <div class="action">
                                                                                <div class="cart">
                                                                                    <!-- <input type="button" value="" onclick="addToCart('');" class="product-icon fa fa-shopping-cart shopping-cart" /> -->
                                                                                    <button class="btn btn-shopping-cart">
                                                                                    <span class="fa fa-shopping-cart product-icon hidden-sm">&nbsp;</span>
                                                                                    <span>Add to Cart</span>
                                                                                    </button>
                                                                                </div>
                                                                                <div class="button-group">
                                                                                    <div class="wishlist">
                                                                                        <a title="Add to Wish List" class="fa fa-heart product-icon">
                                                                                        <span>Add to Wish List</span>
                                                                                        </a>
                                                                                    </div>
                                                                                    <div class="compare">
                                                                                        <a title="Add to Compare" class="fa fa-refresh product-icon">
                                                                                        <span>Add to Compare</span>
                                                                                        </a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- /Single Product  -->
                                                            <!-- Single Product  -->
                                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols last">
                                                                <div class="product-block">
                                                                    <div class="image ">
                                                                        <!-- Swap image -->
                                                                        <div class="flip">
                                                                            <a href="product-view.html" class="swap-image">
                                                                            <img src="img/shop/product_08.jpg" title="iMac 27" alt="iMac 27" class="front">
                                                                            </a>
                                                                        </div>
                                                                        <!-- /Swap image -->
                                                                        <a href="product-view.html" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                                    </div>
                                                                    <div class="product-meta">
                                                                        <div class="left">
                                                                            <h3 class="name"><a href="product-view.html">iMac 27"</a></h3>
                                                                            <div class="price">
                                                                                <span class="special-price">$589.50</span>
                                                                                <span class="price-tax">Ex Tax: $500.00</span>
                                                                            </div>
                                                                        </div>
                                                                        <div class="right">
                                                                            <div class="rating">
                                                                                <img src="img/shop/stars-3.png" alt="Based on 1 reviews.">
                                                                            </div>
                                                                            <p class="description">
                                                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                                                                            </p>
                                                                            <div class="action">
                                                                                <div class="cart">
                                                                                    <!-- <input type="button" value="" onclick="addToCart('');" class="product-icon fa fa-shopping-cart shopping-cart" /> -->
                                                                                    <button class="btn btn-shopping-cart">
                                                                                    <span class="fa fa-shopping-cart product-icon hidden-sm">&nbsp;</span>
                                                                                    <span>Add to Cart</span>
                                                                                    </button>
                                                                                </div>
                                                                                <div class="button-group">
                                                                                    <div class="wishlist">
                                                                                        <a title="Add to Wish List" class="fa fa-heart product-icon">
                                                                                        <span>Add to Wish List</span>
                                                                                        </a>
                                                                                    </div>
                                                                                    <div class="compare">
                                                                                        <a title="Add to Compare" class="fa fa-refresh product-icon">
                                                                                        <span>Add to Compare</span>
                                                                                        </a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- /Single Product  -->
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        <div class="item">
                                            <div class="product-grid">
                                                <div class="products-block">
                                        <div class="row product-items">
                                            <!-- Product Items -->
                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols first">
                                                <div class="product-block">
                                                    <div class="image ">
                                                        <span class="product-label product-label-special">
                                                        <span>-10%</span>
                                                        </span>
                                                        <!-- Swap image -->
                                                        <div class="flip">
                                                            <a href="product-view.html" class="swap-image">
                                                            <img src="img/shop/product_05.jpg" title="iPhone 5s 16 GB" alt="iPhone 5s 16 GB" class="front">
                                                            </a>
                                                        </div>
                                                        <a href="product-view.html" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                    </div>
                                                    <div class="product-meta">
                                                        <div class="left">
                                                            <h3 class="name"><a href="product-view.html">iPhone 5s 16 GB</a></h3>
                                                            <div class="price">
                                                                <span class="price-old">$54.88</span>
                                                                <span class="price-new">$96.00</span>
                                                                <span class="price-tax">Ex Tax: $80.00</span>
                                                            </div>
                                                        </div>
                                                        <div class="right">
                                                            <div class="rating">
                                                                <img src="img/shop/stars-5.png" alt="Based on 2 reviews.">
                                                            </div>
                                                            <p class="description">
                                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                                                            </p>
                                                            <div class="action">
                                                                <div class="cart">
                                                                    <!-- <input type="button" value="" onclick="addToCart('');" class="product-icon fa fa-shopping-cart shopping-cart" /> -->
                                                                    <button class="btn btn-shopping-cart">
                                                                    <span class="fa fa-shopping-cart product-icon hidden-sm">&nbsp;</span>
                                                                    <span>Add to Cart</span>
                                                                    </button>
                                                                </div>
                                                                <div class="button-group">
                                                                    <div class="wishlist">
                                                                        <a title="Add to Wish List" class="fa fa-heart product-icon">
                                                                        <span>Add to Wish List</span>
                                                                        </a>
                                                                    </div>
                                                                    <div class="compare">
                                                                        <a title="Add to Compare" class="fa fa-refresh product-icon">
                                                                        <span>Add to Compare</span>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /Product Items -->
                                            <!-- Product Items -->
                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols">
                                                <div class="product-block">
                                                    <div class="image ">
                                                        <span class="product-label product-label-special">
                                                        <span>Sale</span>
                                                        </span>
                                                        <!-- Swap image -->
                                                        <div class="flip">
                                                            <a href="product-view.html" class="swap-image">
                                                            <img src="img/shop/product_06.jpg" title="Huawei Smart Mobile" alt="Huawei Smart Mobile" class="front">
                                                            </a>
                                                        </div>
                                                        <a href="product-view.html" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                    </div>
                                                    <div class="product-meta">
                                                        <div class="left">
                                                            <h3 class="name"><a href="product-view.html">Huawei Smart Mobile</a></h3>
                                                            <div class="price">
                                                                <span class="price-old">$119.50</span>
                                                                <span class="price-new">$107.75</span>
                                                                <span class="price-tax">Ex Tax: $90.00</span>
                                                            </div>
                                                        </div>
                                                        <div class="right">
                                                            <div class="rating">
                                                                <img src="img/shop/stars-4.png" alt="Based on 1 reviews.">
                                                            </div>
                                                            <p class="description">
                                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                                                            </p>
                                                            <div class="action">
                                                                <div class="cart">
                                                                    <!-- <input type="button" value="" onclick="addToCart('');" class="product-icon fa fa-shopping-cart shopping-cart" /> -->
                                                                    <button class="btn btn-shopping-cart">
                                                                    <span class="fa fa-shopping-cart product-icon hidden-sm">&nbsp;</span>
                                                                    <span>Add to Cart</span>
                                                                    </button>
                                                                </div>
                                                                <div class="button-group">
                                                                    <div class="wishlist">
                                                                        <a title="Add to Wish List" class="fa fa-heart product-icon">
                                                                        <span>Add to Wish List</span>
                                                                        </a>
                                                                    </div>
                                                                    <div class="compare">
                                                                        <a title="Add to Compare" class="fa fa-refresh product-icon">
                                                                        <span>Add to Compare</span>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /Product Items -->
                                            <!-- Product Items -->
                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols">
                                                <div class="product-block">
                                                    <div class="image ">
                                                        <!-- Swap image -->
                                                        <div class="flip">
                                                            <a href="product-view.html" class="swap-image">
                                                            <img src="img/shop/product_07.jpg" title="LG G-Flex 16 GB" alt="LG G-Flex 16 GB" class="front">
                                                            </a>
                                                        </div>
                                                        <a class="pav-colorbox btn btn-theme-default cboxElement" href="product-view.html"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                    </div>
                                                    <div class="product-meta">
                                                        <div class="left">
                                                            <h3 class="name"><a href="product-view.html">LG G-Flex 16 GB</a></h3>
                                                            <div class="price">
                                                                <span class="special-price">$96.00</span>
                                                                <span class="price-tax">Ex Tax: $80.00</span>
                                                            </div>
                                                        </div>
                                                        <div class="right">
                                                            <div class="rating">
                                                                <img src="img/shop/stars-4.png" alt="Based on 1 reviews.">
                                                            </div>
                                                            <p class="description">
                                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                                                            </p>
                                                            <div class="action">
                                                                <div class="cart">
                                                                    <!-- <input type="button" value="" onclick="addToCart('');" class="product-icon fa fa-shopping-cart shopping-cart" /> -->
                                                                    <button class="btn btn-shopping-cart">
                                                                    <span class="fa fa-shopping-cart product-icon hidden-sm">&nbsp;</span>
                                                                    <span>Add to Cart</span>
                                                                    </button>
                                                                </div>
                                                                <div class="button-group">
                                                                    <div class="wishlist">
                                                                        <a title="Add to Wish List" class="fa fa-heart product-icon">
                                                                        <span>Add to Wish List</span>
                                                                        </a>
                                                                    </div>
                                                                    <div class="compare">
                                                                        <a title="Add to Compare" class="fa fa-refresh product-icon">
                                                                        <span>Add to Compare</span>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /Product Items -->
                                            <!-- Product Items -->
                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols">
                                                <div class="product-block">
                                                    <div class="image ">
                                                        <span class="product-label product-label-special">
                                                        <span>Sale</span>
                                                        </span>
                                                        <!-- Swap image -->
                                                        <div class="flip">
                                                            <a href="product-view.html" class="swap-image">
                                                            <img src="img/shop/product_10.jpg" title="LG Monitor 32 Inch" alt="LG Monitor 32 Inch" class="front">
                                                            </a>
                                                        </div>
                                                        <a href="product-view.html" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                    </div>
                                                    <div class="product-meta">
                                                        <div class="left">
                                                            <h3 class="name"><a href="product-view.html">LG Monitor 32 Inch</a></h3>
                                                            <div class="price">
                                                                <span class="price-old">$119.50</span>
                                                                <span class="price-new">$107.75</span>
                                                                <span class="price-tax">Ex Tax: $90.00</span>
                                                            </div>
                                                        </div>
                                                        <div class="right">
                                                            <div class="rating">
                                                                <img src="img/shop/stars-2.png" alt="Based on 1 reviews.">
                                                            </div>
                                                            <p class="description">
                                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                                                            </p>
                                                            <div class="action">
                                                                <div class="cart">
                                                                    <!-- <input type="button" value="" onclick="addToCart('');" class="product-icon fa fa-shopping-cart shopping-cart" /> -->
                                                                    <button class="btn btn-shopping-cart">
                                                                    <span class="fa fa-shopping-cart product-icon hidden-sm">&nbsp;</span>
                                                                    <span>Add to Cart</span>
                                                                    </button>
                                                                </div>
                                                                <div class="button-group">
                                                                    <div class="wishlist">
                                                                        <a title="Add to Wish List" class="fa fa-heart product-icon">
                                                                        <span>Add to Wish List</span>
                                                                        </a>
                                                                    </div>
                                                                    <div class="compare">
                                                                        <a title="Add to Compare" class="fa fa-refresh product-icon">
                                                                        <span>Add to Compare</span>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /Product Items -->
                                            <!-- /Product Items -->
                                        </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 margin-top15 wow fadeInUp">
                                <div class="carousel-controls text-center pull-right">            
                                    <a id="prev1" class="prev" href="#product-carousel" data-slide="prev"><i class="fa fa-angle-left"></i></a>
                                    <a id="next1" class="next" href="#product-carousel" data-slide="next"><i class="fa fa-angle-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Products List-->
                <!-- services --> 
                <div id="services" class="margin-top80">
                    <div class="pattern-overlay">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="padding-top40 text-center">
                                        <h2 class="light wow fadeIn">Other Services We Provide</h2>
                                        <h4 class="light wow fadeInRight">
                                            We have a strong team of web design, email marketing and corporate solution.Feel free to get a free quote!!!
                                        </h4>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-sm-4 text-center wow fadeInLeft">
                                    <div class="service-box padding-top30 padding-bottom40">
                                        <div class="service-box-icon">
                                            <a href="#"><img alt="Web Design" src="img/icons/web-design.png"></a>
                                        </div>
                                        <div class="service-box-info">
                                            <a href="#">
                                                <h3 class="padding-top25">Web Design</h3>
                                            </a>
                                            <p>
                                                Lorem Ipsum is simply dummy text of Lorem the printing and typesettings industry.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 text-center wow fadeInUp">
                                    <div class="service-box padding-top30 padding-bottom40">
                                        <div class="service-box-icon">
                                            <a href="#"><img alt="Email Marketing" src="img/icons/email-marketing.png"></a>
                                        </div>
                                        <div class="service-box-info">
                                            <a href="#">
                                                <h3 class="padding-top25">Email Marketing</h3>
                                            </a>
                                            <p>
                                                Lorem Ipsum is simply dummy text of Lorem the printing and typesettings industry.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 text-center wow fadeInRight">
                                    <div class="service-box padding-top30 padding-bottom40">
                                        <div class="service-box-icon">
                                            <a href="#"><img alt="Corportate Solutions" src="img/icons/corporate-solutions.png"></a>
                                        </div>
                                        <div class="service-box-info">
                                            <a href="#">
                                                <h3 class="padding-top25">Corporate Solutions</h3>
                                            </a>
                                            <p>
                                                Lorem Ipsum is simply dummy text of Lorem the printing and typesettings industry.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /services -->  
                <!-- testimonials -->
                <div id="testimonials" class="padding-top100">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="text-center">
                                    <h2 class="wow fadeIn">What Clients Say About Us</h2>
                                    <h4 class="wow fadeInRight">We have a lot of clients over the world. Checout their feedback and comments about us.</h4>
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
                                                                    <img alt="" src="img/testimonial/team-member-1.jpg">
                                                                </div>
                                                                <div class="testimonial-author-info">
                                                                    <a href="#"><span class="color">Monica Sing</span></a> FIFO Themes
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="testimonial item">
                                                            <p>
                                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quas animi placeat consequatur dicta repudiandae voluptatum ut, iusto qui. Natus suscipit nemo officiis quo dignissimos laudantium, deleniti expedita eveniet. Expedita?
                                                            </p>
                                                            <div class="testimonials-arrow"></div>
                                                            <div class="author">
                                                                <div class="testimonial-image ">
                                                                    <img alt="" src="img/testimonial/team-member-2.jpg">
                                                                </div>
                                                                <div class="testimonial-author-info">
                                                                    <a href="#"><span class="color">Monzurul Haque</span></a> FIFO Themes
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="testimonial item">
                                                            <p>
                                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam ducimus eaque blanditiis quas! Error nam ad facilis mollitia cum aliquid, optio voluptates a doloremque, earum tempore iste! Autem, vel, ipsam.
                                                            </p>
                                                            <div class="testimonials-arrow"></div>
                                                            <div class="author">
                                                                <div class="testimonial-image ">
                                                                    <img alt="" src="img/testimonial/team-member-3.jpg">
                                                                </div>
                                                                <div class="testimonial-author-info">
                                                                    <a href="#"><span class="color">Carol Johansen</span></a> FIFO Themes
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
                                        <h2 class="light wow fadeIn">Some Random Facts</h2>
                                        <h4 class="light wow fadeInRight">
                                            Find what is going around us. You can see some real stats here!
                                        </h4>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeIn">
                                    <div class="random-box padding-top30 padding-bottom40">
                                        <div class="random-box-icon">
                                            <i class="fa fa-coffee"></i>
                                        </div>
                                        <div class="random-box-info">
                                            <span class="facts" data-from="0" data-to="101" data-speed="5000" data-refresh-interval="50"></span>
                                            <p>
                                                COFFEES
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
                                                PROJECTS
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeIn">
                                    <div class="random-box padding-top30 padding-bottom40">
                                        <div class="random-box-icon">
                                            <i class="fa fa-user"></i>
                                        </div>
                                        <div class="random-box-info">
                                            <span class="facts" data-from="0" data-to="175" data-speed="5000" data-refresh-interval="50"></span>
                                            <p>
                                                CLIENTS
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
                <!-- Latest Posts --> 
                <div id="latest-posts" class=" margin-top100">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 text-center">
                                <h2 class="wow fadeIn">최근 면접 영상</h2>
                                <h4 class="wow fadeInRight">We regularly post updates on our blog. Feel free to join with our blog!</h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="padding-top40">
                                <!-- post item -->
                                <div class="col-lg-3 col-md-3 col-sm-6 post-item wow fadeInUp">
                                    <div class="post-img">
                                        <a href="single-post.html"><img alt="" src="img/blog/01.jpg"></a>
                                    </div>
                                    <div class="post-content blog-post-content">
                                        <h4><a href="single-post.html">Praesentium minima</a></h4>
                                        <p>
                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                        </p>
                                    </div>
                                    <div class="meta post-meta">
                                        <div class="post-date post-meta-content">
                                            <i title="12 May 2014" class="fa fa-clock-o"></i>
                                        </div>
                                        <div class="post-comment post-meta-content">
                                            <a title="Comments" href="#"><i class="fa fa-comment-o"></i> 15</a>
                                        </div>
                                        <div class="post-like  post-meta-content">
                                            <a title="Likes" href="#"><i class="fa fa-heart"></i> 20</a>
                                        </div>
                                        <div class="post-link post-meta-content">
                                            <a title="Read More" class="post-meta-link" href="#">...</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- /post item --> 
                                <!-- post item -->
                                <div class="col-lg-3 col-md-3 col-sm-6 post-item wow fadeInUp">
                                    <div class="post-img">
                                        <a href="single-post.html"><img alt="" src="img/blog/02.jpg"></a>
                                    </div>
                                    <div class="post-content blog-post-content">
                                        <h4><a href="single-post.html">Quisquam maiores</a></h4>
                                        <p>
                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                        </p>
                                    </div>
                                    <div class="meta post-meta">
                                        <div class="post-date post-meta-content">
                                            <i title="12 May 2014" class="fa fa-clock-o"></i>
                                        </div>
                                        <div class="post-comment post-meta-content">
                                            <a title="Comments" href="#"><i class="fa fa-comment-o"></i> 15</a>
                                        </div>
                                        <div class="post-like  post-meta-content">
                                            <a title="Likes" href="#"><i class="fa fa-heart"></i> 20</a>
                                        </div>
                                        <div class="post-link post-meta-content">
                                            <a title="Read More" class="post-meta-link" href="#">...</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- /post item --> 
                                <!-- post item -->
                                <div class="col-lg-3 col-md-3 col-sm-6 post-item wow fadeInUp">
                                    <div class="post-img">
                                        <a href="single-post.html"><img alt="" src="img/blog/03.jpg"></a>
                                    </div>
                                    <div class="post-content blog-post-content">
                                        <h4><a href="single-post.html">Ipsam inventores</a></h4>
                                        <p>
                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                        </p>
                                    </div>
                                    <div class="meta post-meta">
                                        <div class="post-date post-meta-content">
                                            <i title="12 May 2014" class="fa fa-clock-o"></i>
                                        </div>
                                        <div class="post-comment post-meta-content">
                                            <a title="Comments" href="#"><i class="fa fa-comment-o"></i> 15</a>
                                        </div>
                                        <div class="post-like  post-meta-content">
                                            <a title="Likes" href="#"><i class="fa fa-heart"></i> 20</a>
                                        </div>
                                        <div class="post-link post-meta-content">
                                            <a title="Read More" class="post-meta-link" href="#">...</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- /post item --> 
                                <!-- post item -->
                                <div class="col-lg-3 col-md-3 col-sm-6 post-item wow fadeInUp">
                                    <div class="post-img">
                                        <a href="single-post.html"><img alt="" src="img/blog/04.jpg"></a>
                                    </div>
                                    <div class="post-content blog-post-content">
                                        <h4><a href="single-post.html">Labore consequuntur</a></h4>
                                        <p>
                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                        </p>
                                    </div>
                                    <div class="meta post-meta">
                                        <div class="post-date post-meta-content">
                                            <i title="12 May 2014" class="fa fa-clock-o"></i>
                                        </div>
                                        <div class="post-comment post-meta-content">
                                            <a title="Comments" href="#"><i class="fa fa-comment-o"></i> 15</a>
                                        </div>
                                        <div class="post-like  post-meta-content">
                                            <a title="Likes" href="#"><i class="fa fa-heart"></i> 20</a>
                                        </div>
                                        <div class="post-link post-meta-content">
                                            <a title="Read More" class="post-meta-link" href="#">...</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- /post item --> 
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Latest Posts -->
                <!-- Slogan-->
                <div class="slogan margin-top100 bottom-pad-small">
                    <div class="pattern-overlay">
                        <div class="container">
                            <div class="row">
                                <div class="slogan-content">
                                    <div class="col-lg-10 col-md-10 wow fadeInLeft">
                                        <h2 class="slogan-title">Found a reason to work with us? Lets's start!</h2>
                                    </div>
                                    <div class="col-lg-2 col-md-2 wow fadeInRight">
                                        <div class="get-started">
                                            <a href="#" class="btn-special btn-grey pull-right">BUY NOW</a>
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
                                            <h2 class="wow fadeIn">Our Clients</h2>
                                            <h4 class="wow fadeInRight">
                                                See some of our satisfied clients over the world.
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="clearfix"></div>
                                        <div class="row text-center padding-top40">
                                            <div id="client-carousel" class="client-carousel carousel slide">
                                                <div class="carousel-inner">
                                                    <div class="item active">
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item wow fadeIn">
                                                            <div class="item-inner"><a href="#"><img alt="Upportdash" src="img/clientslogo/01.png"></a></div>
                                                        </div>
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item wow fadeIn">
                                                            <div class="item-inner"><a href="#"><img alt="Upportdash" src="img/clientslogo/02.png"></a></div>
                                                        </div>
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item wow fadeIn">
                                                            <div class="item-inner"><a href="#"><img alt="Upportdash" src="img/clientslogo/03.png"></a></div>
                                                        </div>
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item wow fadeIn">
                                                            <div class="item-inner"><a href="#"><img alt="Upportdash" src="img/clientslogo/04.png"></a></div>
                                                        </div>
                                                    </div>
                                                    <div class="item">
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item">
                                                            <div class="item-inner"><a href="#"><img alt="Upportdash" src="img/clientslogo/04.png"></a></div>
                                                        </div>
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item">
                                                            <div class="item-inner"><a href="#"><img alt="Upportdash" src="img/clientslogo/03.png"></a></div>
                                                        </div>
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item">
                                                            <div class="item-inner"><a href="#"><img alt="Upportdash" src="img/clientslogo/02.png"></a></div>
                                                        </div>
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item">
                                                            <div class="item-inner"><a href="#"><img alt="Upportdash" src="img/clientslogo/01.png"></a></div>
                                                        </div>
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

<<<<<<< HEAD
=======
	<ul class="nav nav-tabs" role="tablist">
		<li role="presentation" class="active"><a href="${pageContext.request.contextPath}/"
			aria-controls="home" role="tab" data-toggle="tab">소개</a></li>
		<li role="presentation"><a href="${pageContext.request.contextPath}/interview/uploadmode"
			aria-controls="home" role="tab" data-toggle="tab">면접진단</a></li>
		<li role="presentation"><a href="${pageContext.request.contextPath}/post/notice"
			aria-controls="home" role="" data-toggle="tab">소이팩토리</a></li>
		<li role="presentation"><a href="${pageContext.request.contextPath}/mypage/history"
			aria-controls="home" role="tab" data-toggle="tab">마이페이지</a></li>
		<li role="presentation"><a href="${pageContext.request.contextPath}/cs/notice"
			aria-controls="home" role="tab" data-toggle="tab">고객센터</a></li>
	</ul><br/>   
	
	</div>
>>>>>>> c281ba9a3715c2851d3a1329505b7eda93e55e85

