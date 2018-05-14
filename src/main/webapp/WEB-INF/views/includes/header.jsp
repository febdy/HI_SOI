<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
                                    <a href="${pageContext.request.contextPath}/" class="pull-left">(Lost Password?)</a>
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

        
        