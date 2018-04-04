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
<h1>soiread 세부</h1>
	각 post의 영상 재생
	<div id="wrapper" class="container">
		<div class="row form-horizontal">
			<div class="col-md-2 pull-left">

			</div>
			<div class="col-md-10">
				<h1>live 모드</h1>
				<video width="640" height="344" controls="controls" poster="http://media.w3.org/2010/05/sintel/poster.png" preload="none">
					<source src="${pageContext.request.contextPath}/upload/${postVo.videoSaveName}" type="video/mp4">
					<source src="${pageContext.request.contextPath}/upload/${postVo.videoSaveName}" type="video/ogg">
				</video>
			
			</div>
		</div>
	</div>

</body>
</html>