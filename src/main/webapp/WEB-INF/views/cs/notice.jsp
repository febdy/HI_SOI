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
					<li role="presentation" class="active"><a href="${pageContext.request.contextPath}/cs/notice">공지사항</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/cs/qna">Q&A</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/cs/help">도움말</a></li>
				</ul>
			</div>
			
			<div class="col-md-10">
				<form id="search_form" action="${pageContext.request.contextPath}/qna/notice" method="get">
					<input type="text" id="kwd" name="kwd" value="">
					<input type="submit" value="찾기">
					<input type="hidden" name="crtPage" value="${bMap.crtPage}"> 
				</form>
				
				<br/><br/>
				
				<table class="table table-hover">
					<tr>
						<th><p class="text-center">번호</p></th>
						<th><p class="text-center">제목</p></th>
						<th><p class="text-center">글쓴이</p></th>
						<th><p class="text-center">조회수</p></th>
						<th><p class="text-center">작성일</p></th>
						<th><p class="text-center">&nbsp;</p></th>
					</tr>

					<c:forEach items="${bMap.boardList}" var="boardVo">
						<tr>
							<td>${boardVo.notiNo}</td>
							<!-- /board/view/${list.no}로 PathVariable 값 넘길 때 넘기는 방법 약간 다르다는 것 기억 -->
							<td><a
								href="${pageContext.request.contextPath}/board/view/${boardVo.notiNo}">${boardVo.notiTitle}</a></td>
							<td>${boardVo.userNickname}</td>
							<td>${boardVo.notiHitCnt}</td>
							<td>${boardVo.notiDate}</td>
							<td><c:if test="${authUser.userId==boardVo.userId}"> <!-- 로그인 사용자의 번호와 게시물 작성자 번호가 같다면 -->
									<a
										href="${pageContext.request.contextPath}/board/delete?notiNo=${boardVo.notiNo}"
										class="del">삭제</a>
								</c:if></td>
						</tr>
					</c:forEach>

				</table>
				<div class="pager">
					<ul>
						<c:if test="${bMap.prev}"> <!-- 이 값이 false라면 prev 실행 x -->
							<li><a href="${pageContext.request.contextPath}/cs/notice?crtPage=${bMap.startPageBtnNo-1}">◀</a></li>
						</c:if>
						
						<c:forEach begin="${bMap.startPageBtnNo}" end="${bMap.endPageBtnNo}" var="idx">
							<li><a href="${pageContext.request.contextPath}/cs/notice?crtPage=${idx}">${idx}</a></li>
						</c:forEach>
						
						<c:if test="${bMap.next}"> <!-- 이 값이 false라면 next 실행 x -->
							<li><a href="${pageContext.request.contextPath}/cs/notice?crtPage=${bMap.endPageBtnNo+1}">▶</a></li>
						</c:if>
					</ul>
				</div>
				
				<div class="write pull-right btn btn-default">
					<c:if test="${not empty authUser}">
						<div class="bottom">
							<a href="${pageContext.request.contextPath}/board/writeform" id="new-book">글쓰기</a>
						</div>
					</c:if>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>