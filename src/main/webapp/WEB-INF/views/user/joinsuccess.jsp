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
	<p class="welcome-message">
		<span> 감사합니다.
				 회원 가입이 되었습니다. 이용하시려면 로그인 해주세요.
		</span>
		<br><br>
		<a href="${pageContext.request.contextPath}/user/loginform">로그인</a>
		<a href="${pageContext.request.contextPath}/">메인 페이지로</a>
	</p>
</body>
</html>