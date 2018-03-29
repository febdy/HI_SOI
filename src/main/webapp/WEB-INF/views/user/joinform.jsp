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
</head>
<body>
	<!-- 메인해더 -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
 	<!-- /메인해더 -->
 	
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
		
		<fieldset>
			<legend>약관동의</legend>
			<input id="agree-prov" type="checkbox" name="agreeProv" value="y">
			<label class="l-float">서비스 약관에 동의합니다.</label>
		</fieldset><br/>

		<input type="submit" value="회원 가입">
		<a href="${pageContext.request.contextPath}/" >취소</a>
	</form>
</body>
</html>