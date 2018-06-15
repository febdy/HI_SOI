<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
                                    <h2 class="title">고객센터</h2>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                    <div class="breadcrumbs pull-right">
                                        <ul>
                                            <li>You are Now on:</li>
                                            <li><a href="${pageContext.request.contextPath}/cs/notice">고객센터</a></li>
                                            <li><a href="${pageContext.request.contextPath}/cs/help">도움말</a></li>
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
                                    <h3 class="title">Cutomer Service</h3>
                                    <ul class="category-list slide">
                                        <li><a href="${pageContext.request.contextPath}/cs/notice">공지사항</a></li>
                                        <li><a href="${pageContext.request.contextPath}/cs/qna">Q&A</a></li>
                                        <li><a href="${pageContext.request.contextPath}/cs/help">도움말</a></li>
                                    </ul>
                                </div>
                                <!-- Left nav Widget End -->
                            </div>
                            <!-- Sidebar End -->
                            
                            
                            <!-- 내용 부분 -->
                            <div class="posts-block col-lg-9 col-md-9 col-sm-9 col-xs-12">
                            <div id="content" class="row form-horizontal">
                            <div class="col-md-2">
                                <h4>도움말</h4>
                                </div>
                               </div><br/>
								<!-- FAQ -->
                        <div class="row margin-bottom60">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="accordionMod panel-group">
                                    <div class="accordion-item">
                                        <h4 class="accordion-toggle">업로드 모드에서 파일 업로드가 안되는데 어떻게 해야하나요?</h4>
                                        <section class="accordion-inner panel-body">
                                            <p>
												기업체에서는 면접 시간을 정해 면접자에게 알려주는데 이 때 이 시간은 반드시 지켜야 합니다. 어떤 면접자는 근처에 왔는데 찾지를 못해서 헤매다가 늦게 왔습니다. 라는 답변을 하면서 심각하게 생각하지 않는데, 미리 와서 위치를 확인한 다음 커피를 한잔 마시면서 기다릴지언정 절대로 늦어서는 안됩니다.
                                            </p>
                                        </section>
                                    </div>
                                    <div class="accordion-item">
                                        <h4 class="accordion-toggle">사이트 기록물을 모두 삭제 하려면 어떻게 해야하나요?</h4>
                                        <section class="accordion-inner panel-body">
                                            <p>
												기업체에서는 면접 시간을 정해 면접자에게 알려주는데 이 때 이 시간은 반드시 지켜야 합니다. 어떤 면접자는 근처에 왔는데 찾지를 못해서 헤매다가 늦게 왔습니다. 라는 답변을 하면서 심각하게 생각하지 않는데, 미리 와서 위치를 확인한 다음 커피를 한잔 마시면서 기다릴지언정 절대로 늦어서는 안됩니다.
                                            </p>
                                        </section>
                                    </div>
                                    <div class="accordion-item">
                                        <h4 class="accordion-toggle">캠이 없는데, 실시간 모드를 할 방법은 없나요?</h4>
                                        <section class="accordion-inner panel-body">
                                            <p>
												기업체에서는 면접 시간을 정해 면접자에게 알려주는데 이 때 이 시간은 반드시 지켜야 합니다. 어떤 면접자는 근처에 왔는데 찾지를 못해서 헤매다가 늦게 왔습니다. 라는 답변을 하면서 심각하게 생각하지 않는데, 미리 와서 위치를 확인한 다음 커피를 한잔 마시면서 기다릴지언정 절대로 늦어서는 안됩니다.
                                            </p>
                                        </section>
                                    </div>
                                    <div class="accordion-item">
                                        <h4 class="accordion-toggle">내가 작성한 댓글을 한번에 삭제할 방법은 없나요?</h4>
                                        <section class="accordion-inner panel-body">
                                            <p>
												기업체에서는 면접 시간을 정해 면접자에게 알려주는데 이 때 이 시간은 반드시 지켜야 합니다. 어떤 면접자는 근처에 왔는데 찾지를 못해서 헤매다가 늦게 왔습니다. 라는 답변을 하면서 심각하게 생각하지 않는데, 미리 와서 위치를 확인한 다음 커피를 한잔 마시면서 기다릴지언정 절대로 늦어서는 안됩니다.
                                            </p>
                                        </section>
                                    </div>
                                    <div class="accordion-item">
                                        <h4 class="accordion-toggle">회원 탈퇴는 어떻게 하나요?</h4>
                                        <section class="accordion-inner panel-body">
                                            <p>
												기업체에서는 면접 시간을 정해 면접자에게 알려주는데 이 때 이 시간은 반드시 지켜야 합니다. 어떤 면접자는 근처에 왔는데 찾지를 못해서 헤매다가 늦게 왔습니다. 라는 답변을 하면서 심각하게 생각하지 않는데, 미리 와서 위치를 확인한 다음 커피를 한잔 마시면서 기다릴지언정 절대로 늦어서는 안됩니다.
                                            </p>
                                        </section>
                                    </div>
                                    <div class="accordion-item">
                                        <h4 class="accordion-toggle">Q&A 비밀번호를 잊어버렸는데, 도와주세요.</h4>
                                        <section class="accordion-inner panel-body">
                                            <p>
												기업체에서는 면접 시간을 정해 면접자에게 알려주는데 이 때 이 시간은 반드시 지켜야 합니다. 어떤 면접자는 근처에 왔는데 찾지를 못해서 헤매다가 늦게 왔습니다. 라는 답변을 하면서 심각하게 생각하지 않는데, 미리 와서 위치를 확인한 다음 커피를 한잔 마시면서 기다릴지언정 절대로 늦어서는 안됩니다.
                                            </p>
                                        </section>
                                    </div>
                                    <div class="accordion-item">
                                        <h4 class="accordion-toggle">진단 에러가 나는데, 시스템 문제인가요. 어떻게 해야하나요?</h4>
                                        <section class="accordion-inner panel-body">
                                            <p>
												기업체에서는 면접 시간을 정해 면접자에게 알려주는데 이 때 이 시간은 반드시 지켜야 합니다. 어떤 면접자는 근처에 왔는데 찾지를 못해서 헤매다가 늦게 왔습니다. 라는 답변을 하면서 심각하게 생각하지 않는데, 미리 와서 위치를 확인한 다음 커피를 한잔 마시면서 기다릴지언정 절대로 늦어서는 안됩니다.
                                            </p>
                                        </section>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /FAQ -->
                        <!-- Star -->
                        <div class="star">
                            <div class="row text-center">
                                <div class="col-md-6 col-md-offset-3">
                                    <div class="star-divider margin-topminus30">
                                        <div class="star-divider-icon">
                                            <i class=" fa fa-star"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Star --> 
                        <!-- contact box -->                                
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                <div class="contact-box widget">
                                    <h3>More Questions?</h3>
                                    <i class="fa fa-envelope"></i>
                                    <p><br>궁금한 점을 알려주세요.</p>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                <div class="contact-box widget">
                                    <h3>비상 연락</h3>
                                    <i class="fa fa-phone"> </i>
                                    <p>전화번호 <br> <strong>(111) 222 - 3333</strong></p>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                <div class="contact-box widget">
                                    <h3>업무시간</h3>
                                    <i class="fa fa-clock-o"> </i>
                                    <ul>
                                        <li>월요일 - 금요일 9am to 5pm </li>
                                        <li>토요일 - 9am to 2pm </li>
                                        <li>일요일 - 휴무 </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- /contact box -->
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


</body>
</html>