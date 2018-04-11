<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/hisoi.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

	<div id="wrapper" class="container form-horizontal">
				<form id="board" class="board-form">
					<table class="tbl-ex">
						<tr>
							<th> 영상 보기 </th>
						</tr>
						<tr>
							<td class="label"> 제목 </td>
							<td>${postVo.postTitle}</td>
						</tr>
					</table>
				</form>
			<div class="col-md-6 pull-left">
				<video width="500" height="250" controls="controls" poster="${pageContext.request.contextPath}/upload/${postVo.videoThumnail}" preload="none">
					<source src="${pageContext.request.contextPath}/upload/${postVo.videoSaveName}" type="video/mp4">
					<source src="${pageContext.request.contextPath}/upload/${postVo.videoSaveName}" type="video/ogg">
				</video>
				<div>
				<!-- 콩(좋아요)수 올리기 -->
				<div class="pull-right">
					<button>
					<span id="btnLike" class="glyphicon glyphicon-thumbs-up text-danger" style="font-size: 15px"></span>
					</button>
					<button>
					<span id="btnScrap" class="glyphicon glyphicon-star-empty text-warning" style="font-size: 15px"></span>
					</button>
				</div>
				<form id="conte" class="board-form">
					<table class="tbl-ex">
						<tr>
						<td class="label">내용</td>
						<td>
							<div class="view-content"> <!-- 치환 한 것 기억 -->
								${fn:replace(postVo.postContent , ctrl, "</br>" )}
							</div>
						</td>
						</tr>
					</table>
				</form>
				</div>
			</div>
			<div class="col-md-6">
				<div class="scrollBlind">
					<div class="view">
					<!-- 댓글 여기에 붙이기 -->
					<ul id="listArea">
					
					</ul>
							
					</div>
				</div>
				<div>
					<div class="form-group pull-left">
						<div class="col-md-10">
						<!-- 댓글 여기서 쓰고 입력 받은 값을 ajax로 보내기 -->
						<textarea class="form-control" name="cmtcontent" id="cmtcontent" rows="5" style="resize:none">
							
						</textarea>
						</div>
							<button type="submit" class="btn btn-default" id="btnInsert">
							<span class="text-primary"> 댓글 입력</span>
						</button>
					</div>
				</div>
			</div>
			<div class="bottom">
				<a href="${pageContext.request.contextPath}/post/soifactorylist">글목록</a>
				<c:if test="${authUser.userId==requestScope.postVo.writerId}">
				<!-- 소이팩토리 글 수정 -->
				<a href="${pageContext.request.contextPath}/board/modifyform?no=${requestScope.boardVo.no}">글수정</a>
				<!-- 소이팩토리 글 삭제 -->
				<a href="${pageContext.request.contextPath}/post/soidelete?postNo=${postVo.postNo}">글삭제</a>
				</c:if>
			</div>
		</div>

</body>

<script>
	var page=1;
	
	$(document).ready(function() { //페이지의 내용이 로딩되기 이전에 데이터 요청, 화면 켜지자 마자 뿌려주기
		fetchList();
	});

	function fetchList() {
		var no= ${postVo.postNo};
		
		console.log(no);
		
		$.ajax({//리스트 요청
			url : "${pageContext.request.contextPath}/comment/api/commentlist",
			type : "post",
			data : {
				no : no,
				page : page
			}, //데이터를 줄 때 parameter

			dataType : "json", //데이터를 받을때 리턴타입 , json은 문자열임(객체, 맵처럼 쌍으로 묶어 받음.)
			success : function(commentList) {
				console.log(commentList); //glist가 콘솔창에 도착했는지 테스트, 여기까지 성공했다면, 위에 주석처리 한 것을 하나하나 
				
				for (var i = 0; i < commentList.length; i++) {
					render(commentList[i], "down");
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	};
	
	function render(CommentVo, updown) {
		var str = "";
		str += "<li id='g"+CommentVo.cmtNo+"'></li>";
		str += "<li>" + CommentVo.userId + "</li>";
		str += "<li>" + CommentVo.cmtContent + "</li>";
		str += "<li>" + CommentVo.cmtDate + "</li>";
		str += "<br>";

		if (updown == "up") {
			$("#listArea").prepend(str);
		} else if (updown == "down") {
			$("#listArea").append(str);
		} else {
			console.log("update 오류");
		}
	};
	
	//스크롤 이벤트
	$(window).on("scroll", function() { //좌표를 찍어서 windowTop의 좌표가  document의 좌표와 같아지면 페이지가 5개씩 더 뿌려짐.
		console.log($(window).scrollTop()+"/"+$(document).height()+"/"+$(window).height());
		
		if($(window).scrollTop()==$(document).height()-$(window).height()) {
			page = page + 1; //page+=1;
			console.log(page);
	
			fetchList();
		}
	});
	
	$("#btnInsert").on("click", function(){
		
		var content = $("#cmtcontent").val();
		var postNo = ${postVo.postNo};
		console.log(content);
		console.log(postNo);
		
		var commentVo = {
				cmtContent : content,
				postNo : postNo
		}
		
		$.ajax({
			url : "${pageContext.request.contextPath}/comment/api/addcomment",
			type : "post",
			contentType : "application/json", 
			data : JSON.stringify(commentVo), 

			dataType : "json", 
			success : function(commentVo){
				//로그인 여부 서버단에서 조건 걸기 
				console.log(commentVo);
				
				var cmtNo=commentVo.cmtNo;
				
				getComment(cmtNo);
				
				$("[name=cmtcontent]").val("");
			},
			
			error : function(XHR, status, error) {
				alert("로그인이 필요합니다.");
		        window.location.replace("/hi/user/loginform");
				//console.error(status + " : " + error);
			}
			
		});
	});

	function getComment(cmtNo) {
		$.ajax({
			//보내기
			url : "${pageContext.request.contextPath}/comment/api/getComment",
			type : "post",
			data : {
				cmtNo : cmtNo
			},
			//받기
			dataType : "json",
			success : function(writeCmt){
				console.log(writeCmt);
				render(writeCmt,"up")
			},
			
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}

			});
		
	};
	
	//콩 갯수 업데이트(증가)
	$("#btnLike").on("click", function(){
		var postNo = ${postVo.postNo};
		console.log(postNo);
		
		$.ajax({
			url : "${pageContext.request.contextPath}/post/api/updateLike",
			type : "post",
			data : {
				postNo : postNo
			},

			dataType : "json", 
			success : function(soi){
				console.log(soi);
			},
			
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
			
		});
	});
	
	//스크랩 기능
	$("#btnScrap").on("click", function(){
		var postNo = ${postVo.postNo};
		console.log(postNo);
		
		$.ajax({
			url : "${pageContext.request.contextPath}/post/api/addScrapPost",
			type : "post",
			data : {
				postNo : postNo
			},

			dataType : "json", 
			success : function(soi){
				console.log(soi);
			},
			
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
			
		});
	});
</script>


</html>