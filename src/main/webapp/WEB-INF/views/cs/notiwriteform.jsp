<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
			<div id="board">
				<form class="board-form" method="post" action="${pageContext.request.contextPath}/cs/notice/write">
				<table class="tbl-ex">
					<tr>
						<th colspan="2">글쓰기</th>
					</tr>
					<tr>
						<td class="label">제목</td>
						<td><input type="text" name="notiTitle" value=""></td>
					</tr>
					<tr>
						<td class="label">내용</td>
						<td>
							<textarea id="content" name="notiContent"></textarea>
						</td>
					</tr>
				</table>
				<div class="bottom">
					<a href="${pageContext.request.contextPath}/cs/notice">취소</a>
					<input type="submit" value="등록">
				</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>