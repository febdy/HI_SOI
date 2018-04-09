<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/hisoi.css">
</head>
<body>
	<div id="container">
		<div id="content">
			<div id="board" class="board-form">
				<table class="tbl-ex">
					<tr>
						<th colspan="2">글보기</th>
					</tr>
					<tr>
						<td class="label">제목</td>
						<td>${requestScope.csVo.notiTitle}</td>
					</tr>
					<tr>
						<td class="label">내용</td>
						<td>
							<div class="view-content">
								<!-- 치환 한 것 기억 -->
								${fn:replace(csVo.notiContent , ctrl, "</br>" )}
							</div>
						</td>
					</tr>
				</table>
				<div class="bottom">
					<c:if test="${authUser.userLevel=='administer'}">
						<a href="${pageContext.request.contextPath}/cs/notice">글목록</a>
						<a href="${pageContext.request.contextPath}/cs/notice/modifyform?notiNo=${requestScope.csVo.notiNo}">글수정</a>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</body>
</html>