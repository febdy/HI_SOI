<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
 	
	<form class="join-form" method="post" action="${pageContext.request.contextPath}/user/join">
		<label class="block-label">아이디</label>
		<input id="id" type="text" name="userId" value=""/>
		<input id="btn-checkid" type="button" value="id 중복체크"><br/>
		<div id="chkUserId"></div>
		
		<label class="block-label">이름</label>
		<input type="text" name="userName" value=""/><br/>
		
		<label class="block-label">닉네임</label>
		<input id="nickname" type="text" name="userNickname" value=""/>
		<input id="btn-checknick" type="button" value="닉네임 중복체크"><br/>
		<div id="chkNickname"></div>
		
		<label class="block-label">비밀번호</label>
		<input id="password" type="text" name="userPwd" value=""/><br/>
		<div id="chkPassword"></div>
		
		<!-- 비밀번호 확인 작업 추가해야 함.
		<label class="block-label">비밀번호 확인</label>
		<input type="text" name="userName" value=""/> -->
		
		<!-- 휴대폰 번호, 이메일 형식 정규식 확인 작업 해야함. -->
		<label class="block-label">휴대폰 번호</label>
		<input type="text" name="userTel" value=""/><br/>
		
		<label class="block-label">이메일</label>
		<input type="text" name="userEmail" value=""/><br/>
		
		<!-- 모달로 주소 검색하여, input에 띄우게 하기. -->
		<label class="block-label">주소</label>
		<input type="text" name="userAddr" value=""/><br/>
		<input id="btn-checkaddr" type="button" value="주소 검색"><br/>
		
		<fieldset>
			<legend>약관동의</legend>
			<input id="agree-prov" type="checkbox" name="agreeProv" value="y">
			<label class="l-float">서비스 약관에 동의합니다.</label>
		</fieldset><br/>

		<input class="btn btn-default" type="submit" value="회원 가입">
		<a href="${pageContext.request.contextPath}/" class="btn btn-default">취소</a>
	</form>
</body>
<script>
	$("#btn-checkid").on("click", function() {
		var id=$("#id").val();
		console.log(id);
		
		$.ajax({
			url : "${pageContext.request.contextPath}/user/api/idchk",
			type : "post",
			data : {
				id:id
			},
			
			success : function(result) {
				if(result==true) {
					$("#chkUserId").text("사용 가능한 아이디입니다.");
				} else {
					$("#chkUserId").html("<font color=\"red\">사용중인 아이디입니다.</font>");
				}
			},
			
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});
	
	$("#btn-checknick").on("click", function() {
		var nick=$("#nickname").val();
		console.log(nick);
		
		$.ajax({
			url : "${pageContext.request.contextPath}/user/api/nickchk",
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