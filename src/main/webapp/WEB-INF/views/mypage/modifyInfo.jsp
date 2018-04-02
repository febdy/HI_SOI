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
					<li role="presentation"><a href="${pageContext.request.contextPath}/mypage/collect">댓글/영상/스크랩</a></li>
					<li role="presentation" class="active"><a href="${pageContext.request.contextPath}/mypage/modifyInfo">회원정보수정</a></li>
				</ul>
			</div>
			<div class="col-md-10">
				<form class="join-form" method="post" action="${pageContext.request.contextPath}/user/join">
					<label class="block-label">아이디</label>
					<input type="text" name="userId" value=""/>
					<input id="btn-checkid" type="button" value="id 중복체크"><br/>
		
					<label class="block-label">이름</label>
					<input type="text" name="userName" value=""/><br/>
		
					<label class="block-label">닉네임</label>
					<input type="text" name="userNickname" value=""/>
					<input id="btn-checknick" type="button" value="닉네임 중복체크"><br/>
		
					<label class="block-label">비밀번호</label>
					<input type="text" name="userPwd" value=""/><br/>
		
					<!-- 비밀번호 확인 작업 추가해야 함.
					<label class="block-label">비밀번호 확인</label>
					<input type="text" name="userName" value=""/> -->
		
					<label class="block-label">휴대폰 번호</label>
					<input type="text" name="userTel" value=""/><br/>
		
					<label class="block-label">이메일</label>
					<input type="text" name="userEmail" value=""/><br/>
		
					<label class="block-label">주소</label>
					<input type="text" name="userAddr" value=""/><br/>

					<input class="btn btn-default" type="submit" value="수정 완료">
					<a href="${pageContext.request.contextPath}/" class="btn btn-default">취소</a>
				</form>
			
			</div>
		</div>
	</div>
	<br/>

	<h1>회원 정보수정</h1>
</body>
</html>