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
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery/jquery-1.12.4.js"></script>
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
					<li role="presentation"><a href="${pageContext.request.contextPath}/mypage/collect/comment">댓글/영상/스크랩</a></li>
					<li role="presentation" class="active"><a href="${pageContext.request.contextPath}/mypage/modifyInfo">회원정보수정</a></li>
				</ul>
			</div>
			<div class="col-md-10">
				<form class="join-form" method="post" action="${pageContext.request.contextPath}/mypage/modifyComplete">
					<label class="block-label">아이디</label>
					<strong>${requestScope.userVo.userId}</strong>
					<input type="hidden" name="userId" value="${requestScope.userVo.userId}"/><br/>
		
					<label class="block-label">이름</label>
					<input type="text" name="userName" value="${requestScope.userVo.userName}"/><br/>
		
					<label class="block-label">닉네임</label>
					<input id="nickname" type="text" name="userNickname" value="${requestScope.userVo.userNickname}"/>
					<input id="btn-checknick" type="button" value="닉네임 중복체크"><br/>
					<div id="chkNickname"></div>
		
					<label class="block-label">비밀번호</label>
					<input id="password" type="text" name="userPwd" value=""/><br/>
					<div id="chkPassword"></div>
		
					<!-- 비밀번호 확인 작업 추가해야 함.
					<label class="block-label">비밀번호 확인</label>
					<input type="text" name="userName" value=""/> -->

					<label class="block-label">휴대폰 번호</label>
					<input type="text" name="userTel" value="${requestScope.userVo.userTel}"/><br/>
		
					<label class="block-label">이메일</label>
					<input type="text" name="userEmail" value="${requestScope.userVo.userEmail}"/><br/>
		
					<label class="block-label">주소</label>
					<input type="text" name="userAddr" value="${requestScope.userVo.userAddr}"/><br/>
					<input id="btn-checkaddr" type="button" value="주소 검색"><br/>
					
					<!-- 비밀 번호가 동일해야 수정 되도록, id,비밀번호 -->
					<input class="btn btn-default" type="submit" value="수정 완료">
					<a href="${pageContext.request.contextPath}/" class="btn btn-default">취소</a>
				</form>
			
			</div>
		</div>
	</div>
	<br/>

</body>

<script>
$("#btn-checknick").on("click", function() {
	var nick=$("#nickname").val();
	console.log(nick);
	
	$.ajax({
		url : "${pageContext.request.contextPath}/mypage/api/nickchkformodify",
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
</script>
</html>