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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/board.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
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

	<div id="wrapper" class="container">
		<div id="content" class="row form-horizontal">
			<div class="col-md-offset-6">
				<form class="board-form" action="${pageContext.request.contextPath}/post/soiwrite">
					<table class="tbl-ex">
						<tr>
							<td class="label">제목</td>
							<td><input type="text" name="postTitle" value=""></td>
						</tr>
						<tr>
							<td class="label">내용</td>
							<td>
								<textarea id="content" name="postContent"rows="10" style="resize: none">></textarea>
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" name="ioi" value="" id="selectArea">
								<button type="button" class="btn btn-default" id="attachModal">파일 첨부</button>
							</td>
						</tr>
						<tr>
							<td>
								<input type="checkbox" name="postHideFace" value="Y"> 얼굴 가리기 사용<br /> 
								<input type="checkbox" name="postSharable" value="Y"> 진단 결과 스크랩 허용<br /> 
								<!-- <input type="checkbox" name="postScrap" value=""> 모의 면접 영상 스크랩 허용<br /> -->
							</td>
						</tr>
					</table>
					<br />
					<div>
						<button type="submit" class="btn btn-default">
							<span class="glyphicon glyphicon-ok text-primary">영상올리기 완료</span>
						</button>
						<a href="${pageContext.request.contextPath}/post/soifactorylist">취소</a>
					</div>
					<br />
				</form>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="modalPop" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">파일 첨부</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<ul id="listArea">

					</ul>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button id="btn_add" type="button" class="btn btn-primary" data-dismiss="modal">첨부하기</button>
				</div>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">
	$(document).ready(function() {
		
	});

	$("#attachModal").on("click", function() {
		$("#modalPop").modal();
		fetchList();
	});
	
	function fetchList() {

		$.ajax({//리스트 요청
			url : "${pageContext.request.contextPath}/post/api/modalList",
			type : "post",
			data : {},//데이터를 줄 때 parameter

			dataType : "json", //데이터를 받을때 리턴타입 , json은 문자열임(객체, 맵처럼 쌍으로 묶어 받음.)
			success : function(videoList) {
				console.log(videoList);
				
				for (var i = 0; i < videoList.length; i++) {
					render(videoList[i], "down");
				};
				
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		$(".abcd").remove();
	};

	function render(videoVo, updown) {
		var str = "";
		str += "<li class='abcd' id='g"+videoVo.videoNo+"'>";
		str += "	<table>";
		str += "			<tr>";
		str += "				<td>[" + videoVo.videoNo + "]</td>";
		str += "				<td>" + videoVo.videoOriginName + "</td>";
		str += "				<td>" + videoVo.videoDate + "</td>";
		str += "				<td><div><input class='upto' id='" + videoVo.videoNo + "' type='radio' name='upup' value='선택' data-no='"+videoVo.videoNo+"'><div></td>";
		str += "			</tr>";
		str += "		</table>";
		str += "	<br>";
		str += "</li>";

		if (updown == "up") {
			$("#listArea").prepend(str);
		} else if (updown == "down") {
			$("#listArea").append(str);
		} else {
			console.log("update 오류");
		}
	};

	$("ul").on("click", ".upto", function(){
		var no=this.id;
		console.log(no);
		
		$.ajax({//리스트 요청
			url : "${pageContext.request.contextPath}/post/api/modalTitle",
			type : "post",
			data : {no:no},//데이터를 줄 때 parameter

			dataType : "json", //데이터를 받을때 리턴타입 , json은 문자열임(객체, 맵처럼 쌍으로 묶어 받음.)
			success : function(videoVo) {
				console.log(videoVo);
				
				$("#selectArea").val(videoVo.videoOriginName);
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});

	/* function viewVideo(videoVo) {
		var str = "";
		str += "<li class='fff' id='ss"+videoVo.videoNo+"'>";
		str += videoVo.videoOriginName;
		str += "</li>";
		
		$("#selectArea").append(str);
	} */
</script>
</html>