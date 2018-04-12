<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/hisoi.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/Style.css">
</head>
<body>
	<!-- 메인해더 -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- /메인해더 -->

	<div id="container">

		<ul class="nav nav-tabs" role="tablist">
			<li role="presentation"><a
				href="${pageContext.request.contextPath}/" aria-controls="home"
				role="tab" data-toggle="tab">소개</a></li>
			<li role="presentation"><a
				href="${pageContext.request.contextPath}/interview/uploadmode"
				aria-controls="home" role="tab" data-toggle="tab">면접진단</a></li>
			<li role="presentation" class="active"><a
				href="${pageContext.request.contextPath}/post/soifactorylist"
				aria-controls="home" role="" data-toggle="tab">소이팩토리</a></li>
			<li role="presentation"><a
				href="${pageContext.request.contextPath}/mypage/history"
				aria-controls="home" role="tab" data-toggle="tab">마이페이지</a></li>
			<li role="presentation"><a
				href="${pageContext.request.contextPath}/cs/notice"
				aria-controls="home" role="tab" data-toggle="tab">고객센터</a></li>
		</ul>
		<br />

	</div>
	
	<div id="wrap1" class="container">
		<div class="pull-left">
			<ol class="breadcrumb">
 				<li><a href="${pageContext.request.contextPath}/post/array?soi=selected">인기(콩)순</a></li>
  				<li><a href="${pageContext.request.contextPath}/post/array?latest=selected">최신순</a></li>
  				<li><a href="${pageContext.request.contextPath}/post/array?view=selected">조회순</a></li>
  				<li><a href="${pageContext.request.contextPath}/post/array?comment=selected">댓글순</a></li>
			</ol>
		</div>
				
		<div class="write pull-right btn btn-default">
			<div class="bottom">
				<a href="${pageContext.request.contextPath}/post/soiwriteform">영상 올리기</a>
			</div>
		</div>

		<div class="pull-right">
		<form id="search_form" action="${pageContext.request.contextPath}/post/soifactorylist" method="get">
			<input type="text" id="kwd" name="kwd" value="">
			<input type="submit" value="찾기">
			<input type="hidden" name="crtPage" value="${bindMap.crtPage}"> 
		</form>
		</div>
	</div>
		
	<div id="wrap2" class="container">
		<c:forEach items="${bindMap.postList}" var="postVo">
			<div class="box">
				<div class="image-box">
					<a href="${pageContext.request.contextPath}/post/soiread/${postVo.postNo}"> <img
						src="${pageContext.request.contextPath}/upload/${postVo.videoThumnail}"
					width="200" height="150">
					</a>
				</div>

				<div class="box-underimage">
					<div class="box-itemname">${postVo.postTitle}</div>
					<div class="box-itemprice">${postVo.postSoiCnt}콩 댓글${postVo.postCmtCnt} 조회수${postVo.postHitCnt}</div>
				</div>
			</div>
		</c:forEach>
	</div>
	<div class="pager">
		<ul>
			<c:if test="${bindMap.prev}"> <!-- 이 값이 false라면 prev 실행 x -->
				<li><a href="${pageContext.request.contextPath}/post/soifactorylist?crtPage=${bindMap.startPageBtnNo-1}">◀</a></li>
			</c:if>
						
			<c:forEach begin="${bindMap.startPageBtnNo}" end="${bindMap.endPageBtnNo}" var="idx">
				<li><a href="${pageContext.request.contextPath}/post/soifactorylist?crtPage=${idx}">${idx}</a></li>
			</c:forEach>
						
			<c:if test="${bindMap.next}"> <!-- 이 값이 false라면 next 실행 x -->
				<li><a href="${pageContext.request.contextPath}/post/soifactorylist?crtPage=${bindMap.endPageBtnNo+1}">▶</a></li>
			</c:if>
		</ul>
	</div>

	<div class="pager">
		<c:if test="${where == 'list'}">            
			<ul>
				<c:if test="${page > 1}">
                	<li><a href="board?a=list&page=1">◀</a></li>
                </c:if>
                <c:if test="${page <= 1}">
                	<li>◀</li>
                </c:if>
                     
                <c:forEach var="i" begin="1" end="${maxPageNum}" step="1">
                    <c:if test="${page == i}">
                    	<li class="selected"><a href="board?a=list&page=${i}">${i}</a></li>
                    </c:if>
                    <c:if test="${page != i}">
                    	<li><a href="board?a=list&page=${i}">${i}</a></li>
                    </c:if>
                </c:forEach>
   
                <c:if test="${page < maxPageNum}">
                	<li><a href="board?a=list&page=${maxPageNum}">▶</a></li>
                </c:if>
                <c:if test="${page >= maxPageNum}">
                	<li>▶</li>
                </c:if>
                  </ul>
               </c:if>
               
               <c:if test="${where == 'search'}">            
                  <ul>
                     <c:if test="${page > 1}">
                        <li><a href="board?a=search&kwd=${kwd}&page=1">◀</a></li>
                     </c:if>
                     <c:if test="${page <= 1}">
                        <li>◀</li>
                     </c:if>
                     
                     <c:forEach var="i" begin="1" end="${maxPageNum}" step="1">
                        <c:if test="${page == i}">
                           <li class="selected"><a href="board?a=search&kwd=${kwd}&page=${i}">${i}</a></li>
                        </c:if>
                        <c:if test="${page != i}">
                           <li><a href="board?a=search&kwd=${kwd}&page=${i}">${i}</a></li>
                        </c:if>
                     </c:forEach>
   
                     <c:if test="${page < maxPageNum}">
                        <li><a href="board?a=search&kwd=${kwd}&page=${maxPageNum}">▶</a></li>
                     </c:if>
                     <c:if test="${page >= maxPageNum}">
                        <li>▶</li>
                     </c:if>
                  </ul>
               </c:if>            
	</div>


</body>
</html>