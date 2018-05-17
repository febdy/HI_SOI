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
                                            <li><a href="index.html">고객센터</a></li>
                                            <li><a href="#">Q&A</a></li>
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
                                <h4 class="widget"> Q&A > 글쓰기</h4>
                                <form id="asd" method="post" action="${pageContext.request.contextPath}/cs/qna/write">
                       			<div class="well">
                       			<input type="text" class="form-control" name="qnaTitle" placeholder="제목"><br>
                                <textarea class="form-control" rows="4" name="qnaContent" placeholder="내용"></textarea>

                                </div>
								
								<div class="row pull-right">
                                    <input type="submit" value="글쓰기" class="btn btn-color btn-normal btn-pad">
                                    <a href="${pageContext.request.contextPath}/cs/qna" class="btn btn-color btn-normal btn-pad">취소</a>
                                </div>
								</form>
							</div>
                        </div>
               		</div>
                </div>
                
                </section>
            <!-- /Main Section -->
            
            <!-- Footer -->
            <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
            <!-- /Footer -->
 

</body>
</html>