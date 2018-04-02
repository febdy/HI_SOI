<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/hisoi.css">
</head>
<body>
	<!-- 메인해더 -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
 	<!-- /메인해더 -->
 	
	<div id="container">

	<ul class="nav nav-tabs" role="tablist">
		<li role="presentation"><a href="${pageContext.request.contextPath}/"
			aria-controls="home" role="tab" data-toggle="tab">소개</a></li>
		<li role="presentation"><a href="${pageContext.request.contextPath}/interview/uploadmode"
			aria-controls="home" role="tab" data-toggle="tab">면접진단</a></li>
		<li role="presentation"><a href="${pageContext.request.contextPath}/post/soifactorylist"
			aria-controls="home" role="" data-toggle="tab">소이팩토리</a></li>
		<li role="presentation"><a href="${pageContext.request.contextPath}/mypage/history"
			aria-controls="home" role="tab" data-toggle="tab">마이페이지</a></li>
		<li role="presentation" class="active"><a href="${pageContext.request.contextPath}/cs/notice"
			aria-controls="home" role="tab" data-toggle="tab">고객센터</a></li>
	</ul><br/>
	
	</div>

	<div id="wrapper" class="container">
		<div id="content" class="row form-horizontal">
			<div class="col-md-2 pull-left">
				<ul class="nav nav-pills nav-stacked ">
					<li role="presentation"><a href="${pageContext.request.contextPath}/cs/notice">공지사항</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/cs/qna">Q&A</a></li>
					<li role="presentation" class="active"><a href="${pageContext.request.contextPath}/cs/help">도움말</a></li>
				</ul>
			</div>
			<div class="col-md-10"></div>
		</div>
	</div>
	<br/>

	<h1>Help</h1>
	
</body>
</html>