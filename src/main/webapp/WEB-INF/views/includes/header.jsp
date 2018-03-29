<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/hisoi.css">
</head>
<body>
	<c:choose>
		<c:when test="${empty sessionScope.authUser}">
			<a href="${pageContext.request.contextPath}/user/loginform">로그인</a>
			<a href="${pageContext.request.contextPath}/user/joinform">회원가입</a>
		</c:when>
	
		<c:when test="${not empty sessionScope.authUser}">
			<a href="${pageContext.request.contextPath}/user/logout">로그아웃</a>
		</c:when>
	
	</c:choose>
</body>
</html>