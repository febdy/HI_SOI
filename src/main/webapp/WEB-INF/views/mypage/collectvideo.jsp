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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Style.css">
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
		<li role="presentation" class="active"><a href="${pageContext.request.contextPath}/mypage/history"
			aria-controls="home" role="tab" data-toggle="tab">마이페이지</a></li>
		<li role="presentation"><a href="${pageContext.request.contextPath}/cs/notice"
			aria-controls="home" role="tab" data-toggle="tab">고객센터</a></li>
	</ul><br/>
	
	</div>

	<div id="wrapper" class="container">
		<div id="content" class="row form-horizontal">
			<div class="col-md-2 pull-left">
				<ul class="nav nav-pills nav-stacked ">
					<li role="presentation"><a href="${pageContext.request.contextPath}/mypage/history">진단 히스토리</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/mypage/videoclip">영상 관리</a></li>
					<li role="presentation" class="active"><a href="${pageContext.request.contextPath}/mypage/collect/comment">댓글/영상/스크랩</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/mypage/modifyInfo">회원정보수정</a></li>
				</ul>
			</div>
			<div class="col-md-10">
  				<ul class="nav nav-pills">
  					<li role="presentation"><a href="${pageContext.request.contextPath}/mypage/collect/comment">댓글</a></li>
  					<li role="presentation" class="active"><a href="${pageContext.request.contextPath}/mypage/collect/video">영상</a></li>
  					<li role="presentation"><a href="${pageContext.request.contextPath}/mypage/collect/scrap">스크랩</a></li>
				</ul>
				<c:forEach items="${postList}" var="postVo"> 
					<div class="box">
						<div class="image-box">
							<a href="${pageContext.request.contextPath}/post/soiread/${postVo.postNo}"> <img
						src="http://ppss.kr/wp-content/uploads/2016/01/4-39-360x200.jpg"
						width="100" height="100">
							</a>
						</div>

						<div class="box-underimage">
							<div class="box-itemname">${postVo.postTitle}</div>
							<div class="box-itemprice">${postVo.postSoiCnt}콩 댓글${postVo.postCmtCnt} 조회수${postVo.postHitCnt}</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<br/>
</body>
</html>