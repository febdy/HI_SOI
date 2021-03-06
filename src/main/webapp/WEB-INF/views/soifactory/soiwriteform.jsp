<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

		<!-- Header -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		<!-- /Header -->

		<!-- Main Section -->
            <section id="main">
                <!-- Title, Breadcrumb -->
                <div class="breadcrumb-wrapper">
                    <div class="pattern-overlay">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                    <h2 class="title">소이팩토리</h2>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                    <div class="breadcrumbs pull-right">
                                        <ul>
                                            <li>You are Now on:</li>
                                            <li><a href="index.html">소이팩토리</a></li>
                                            <li>영상 올리기</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Title, Breadcrumb -->
                
                <!-- Main Content -->
                <div class="content margin-top60 margin-bottom60">
                    <div class="container">
                        <div class="row">
                        
                            <!-- 내용 부분 -->
                            <div class="col-md-offset-2 posts-block col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                <h4 class="widget">소이팩토리 > 영상 올리기</h4>
                                <form id="form" class="form-horizontal">
                       				<div class="well">
                       					<input type="text" class="form-control" name="postTitle" placeholder="제목"><br>
                                		<textarea class="form-control" rows="4" name="postContent" placeholder="남기는 말"></textarea>
										<div>
											<input type="text" name="videoTitle" value="" id="selectArea" readonly="readonly">
											<input type="hidden" name="videoNo" id="selectVideoNo">
											<button type="button" class="btn btn-default" id="attachModal">파일 첨부</button>
										</div><br/>
										<div class="row form-horizontal">
										<div class="col-md-3">
										<input type="checkbox" name="postHideFace" value="Y"> 얼굴 가리기 사용
										</div>
										<div class="col-md-3">
										<input type="checkbox" name="postSharable" value="Y"> 진단 결과 스크랩 허용 
										</div>
										<div class="col-md-6">
										</div>
										<!-- <input type="checkbox" name="postScrap" value=""> 모의 면접 영상 스크랩 허용<br /> -->
										</div>
									</div>
								</form>
								<div class="row pull-right">
                                    <button id="postWrite" type="submit" class="btn btn-color btn-normal btn-pad">영상 올리기</button>
                                    <a href="${pageContext.request.contextPath}/post/soifactorylist" class="btn btn-color btn-normal btn-pad">취소</a>
                           		</div>
							</div>
                        </div>
               		</div>
                </div>
                
                </section>
            <!-- /Main Section -->
            
        <!-- Modal -->
        <section id="modals">
			<div class="modal fade marginTop-60 marginBottom-60" id="modalPop" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="form-signin-heading modal-title">내 영상 보관함</h4>
						</div>
						<div class="modal-body scrollBlind">
							<table class="table">
								<thead>
                                    <tr>
                                    	<th>&nbsp;</th>
                                        <th>제목</th>
										<th>작성일</th>
										<th>&nbsp;</th>
                                    </tr>
                                </thead>
								<tbody id="listArea">

								</tbody>
							</table>
							
							<%-- <div class="pagination-centered padding-bottom30">
								<ul class="pagination">
									<c:if test="${myVideoMap.prev}">
										<!-- 이 값이 false라면 prev 실행 x -->
										<li><a href="${pageContext.request.contextPath}/mypage/videoclip?crtPage=${myVideoMap.startPageBtnNo-1}">«</a></li>
									</c:if>

									<c:forEach begin="${myVideoMap.startPageBtnNo}" end="${myVideoMap.endPageBtnNo}" var="idx">
										<li><a href="${pageContext.request.contextPath}/mypage/videoclip?crtPage=${idx}">${idx}</a></li>
									</c:forEach>

									<c:if test="${myVideoMap.next}">
										<!-- 이 값이 false라면 next 실행 x -->
										<li><a href="${pageContext.request.contextPath}/mypage/videoclip?crtPage=${myVideoMap.endPageBtnNo+1}">»</a></li>
									</c:if>
								</ul>
							</div> --%>
							
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
							<button id="btn_add" type="button" class="btn btn-color" data-dismiss="modal">영상 첨부</button>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- /Main Section -->
		
		<!-- Footer -->
        <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
        <!-- /Footer -->

</body>

<script>

$(document).ready(function() {
	var frm = $("#form");
	
	$("#postWrite").on("click", function(){
		var title = $("[name='postTitle']").val();
		var content = $("[name='postContent']").val();
		var video = $("[name='videoTitle']").val();
		
		if (title =="" || content=="" || video=="") {
			alert("입력란을 모두 작성해주세요");
		} else {
			frm.attr("method", "post");
			frm.attr("action", "${pageContext.request.contextPath}/post/soiwrite");
			frm.submit();
		}
	});
});

$("#attachModal").on("click", function() {
	$("#modalPop").modal();
	fetchList();
});

function fetchList() {

	$.ajax({//리스트 요청
		url : "${pageContext.request.contextPath}/post/api/modallist",
		type : "post",
		data : { },//데이터를 줄 때 parameter

		dataType : "json", //데이터를 받을때 리턴타입 , json은 문자열임(객체, 맵처럼 쌍으로 묶어 받음.)
		success : function(myVideoMap) {
			console.log(myVideoMap);
			
			for (var i = 0; i < myVideoMap.length; i++) {
				render(myVideoMap[i], "down");
			};
			
			return myVideoMap;
	
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
	$(".abcd").remove();
};

function render(videoVo, updown) {
	var str = "";
	str += "			<tr class='abcd' id='g"+videoVo.videoNo+"'>";
	str += "				<td width='5%'>[" + videoVo.rn + "]</td>";
	str += "				<td width='70%'>" + videoVo.videoOriginName + "</td>";
	str += "				<td width='20%'>" + videoVo.videoDate + "</td>";
	str += "				<td width='5%'><input class='upto' id='" + videoVo.videoNo + "' type='radio' name='upup' value='선택' data-no='"+videoVo.videoNo+"'></td>";
	str += "			</tr>";
	str += "	<br>";

	if (updown == "up") {
		$("#listArea").prepend(str);
	} else if (updown == "down") {
		$("#listArea").append(str);
	} else {
		console.log("update 오류");
	}
};


$("tbody").on("click", ".upto", function(){
	var no=this.id;
	console.log(no);
	
	$.ajax({//리스트 요청
		url : "${pageContext.request.contextPath}/post/api/modaltitle",
		type : "post",
		data : {no:no},//데이터를 줄 때 parameter

		dataType : "json", //데이터를 받을때 리턴타입 , json은 문자열임(객체, 맵처럼 쌍으로 묶어 받음.)
		success : function(videoVo) {
			console.log(videoVo);
			
			$("#btn_add").on("click", function() {
				$("#selectArea").val(videoVo.videoOriginName);
				$("#selectVideoNo").val(videoVo.videoNo);
			});
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
});


</script>
</html>