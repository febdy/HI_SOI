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
 	
	<form class="login-form" method="post" action="${pageContext.request.contextPath}/user/login">
		<label>아이디</label>
		<input type="text" name="id"><br/>
		
		<label>패스워드</label>
		<input type="text" name="password">
		
		<input type="submit" value="로그인">
	</form>
</body>
</html>