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
		<li role="presentation"><a href="${pageContext.request.contextPath}/post/notice"
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
					<li role="presentation"><a href="${pageContext.request.contextPath}/qna/notice">공지사항</a></li>
					<li role="presentation" class="active"><a href="${pageContext.request.contextPath}/cs/qna">Q&A</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/qna/help">도움말</a></li>
				</ul>
			</div>
			<div class="col-md-10"></div>
		</div>
	</div>
	
	<br/>

	<div id="content">
		<div id="board">
			<form id="search_form" action="${pageContext.request.contextPath }" method="get">
				<input type="text" id="kwd" name="searchValue" value="">
				<input type="submit" value="찾기">
				<input type="hidden" name="crtPage" value="${bmap.crtPage}">
			</form>

			<table class="tbl-ex">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>글쓴이</th>
					<th>조회수</th>
					<th>작성일</th>
					<th>&nbsp;</th>
				</tr>
						
				<c:forEach items="${bmap.boardList}" var="b" varStatus="status">
					<tr>
						<td>${b.no}</td>
						<td><a href="${pageContext.request.contextPath }/board/view?no=${b.no}&crtPage=${bmp.crtPage}">${b.title}</a></td>
						<td>${b.userName}</td>
						<td>${b.hit}</td>
						<td>${b.regDate}</td>
						<td><c:if test="${b.userNo == authUser.no}">
							<a href="${pageContext.request.contextPath }/board/delete?no=${b.no}&userNo=${b.userNo}" class="del">삭제</a>
							</c:if></td>
					</tr>
				</c:forEach>
			
			</table>
		</div>
		<div class="bottom">
			<%-- <c:if test="${not empty authUser}"> --%>
				<a href="${pageContext.request.contextPath }/cs/writeform" id="new-book">글쓰기</a>
			<%-- </c:if> --%>
		</div>
	</div>
</body>
</html>