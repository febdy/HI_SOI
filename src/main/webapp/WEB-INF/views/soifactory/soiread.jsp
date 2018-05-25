<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
                                            <li>영상 보기</li>
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
                        	<!-- 왼쪽 라인 -->
                            <div class="posts-block col-lg-8 col-md-8 col-sm-8 col-xs-12">
                                <!--  Single Post -->
                                <article class="post hentry">
                                    <div class="post-image">
                                    	<video width="750" height="400" controls="controls" poster="${pageContext.request.contextPath}/upload/${postVo.videoThumnail}" preload="none">
											<source src="${pageContext.request.contextPath}/upload/${postVo.videoSaveName}" type="video/mp4">
											<source src="${pageContext.request.contextPath}/upload/${postVo.videoSaveName}" type="video/ogg">
										</video>
                                    </div>
                                    <header class="post-header">
                                        <h2>${postVo.postTitle}</h2>
                                        <div class="blog-entry-meta">
                                            <div class="blog-entry-meta-date">
                                                <i class="fa fa-clock-o"></i>
                                                <span class="blog-entry-meta-date-month">${postVo.postDate}</span>
                                            </div>
                                            <div class="blog-entry-meta-author">
                                                <i class="fa fa-user"></i>
                                                <a class="blog-entry-meta-author">${postVo.writerId}</a>
                                            </div>
                                            <div class="blog-entry-meta-tags">
                                                <i id="SoiArea" class="fa fa-heart text-danger"></i>
                                                <a id="postSoiCnt" class="blog-entry-meta-sois">${postVo.postSoiCnt} soybeans</a>
                                            </div>
                                            <div class="blog-entry-meta-comments">
                                                <i class="fa fa-comments"></i>
                                                <a id="postCmtCnt" class="blog-entry-meta-comments">${postVo.postCmtCnt} comments</a>
                                            </div>
                                        </div>
                                    </header>
                                </article>
                                <!-- Star -->
                                <div class="star">
                              		<div class="row">
                                        <div class="col-md-12">
                                            <div class="star-divider">
                                                <div class="star-divider-icon">
                                                    <i class="fa fa-star"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Star -->  
                                 <!-- Comments Section -->
                                <div class="comment-wrapper">
                                    <h3 id="cmtCnt" class="title">댓글 ${postVo.postCmtCnt} 개</h3>
                                    <div class="clearfix"></div>
                                    <div class="comments-sec">
                                        <ol class="commentlist">
                                        	<!-- 댓글 여기에 붙이기 -->
                                            <li id="listArea">
                                                
                                            </li>
                                        </ol>
                                    </div>
                                    <div align="center">
										<input id="btnNext" type="button" value="더보기">
									</div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                                
                                <!-- Star-->
                                <div class="star">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="star-divider">
                                                <div class="star-divider-icon">
                                                    <i class=" fa fa-star"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Star -->  
                                <!-- Reply Section -->
                                <!-- 댓글 여기서 쓰고 입력 받은 값을 ajax로 보내기 -->
                                <div class="reply">
                                    <h3 class="title">댓글 쓰기</h3>
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <textarea id="cmtcontent" class="form-control" rows="3" cols="40" name="cmtcontent" placeholder="Comment" required></textarea>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <button id="btnInsert" class="btn btn-color pull-right" type="submit">등록</button>
                                        <div class="clearfix">
                                        </div>
                                </div>
                                <!-- /Reply Section -->
                            </div>
                            <!-- /왼쪽 라인 -->
                             <!-- Project Summary -->
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 sidebar">
                                <div class="widget">
                                    <h3 class="title">남기는 말</h3>
                                    <p>
									${fn:replace(postVo.postContent , ctrl, "</br>" )}
                                    </p>
                                </div>
                                <!-- Project Description End -->  
                                <div class="widget form-inline">
                                    <div class="favourite">
                                    <c:choose>
                                    	<c:when test="${likeChk==true}">
                                        	<a id="btnLike" class="btn btn-default"><strong><i class="fa fa-heart likeOn"></i> 좋아요</strong></a>
                                    	</c:when>
                                    	<c:otherwise>
                                    	    <a id="btnLike" class="btn btn-default"><strong><i class="fa fa-heart off"></i> 좋아요</strong></a>
                                    	</c:otherwise>
                                    </c:choose>
                                    </div>
                                    <div class="clearfix">
                                    <div class="favourite">
                                    <c:choose>
                                    	<c:when test="${scrapChk==true}">
                                    		<a id="btnScrap" class="btn btn-default"><strong><i class="fa fa-star on"></i> 스크랩</strong></a>
                                		</c:when>
                                		<c:otherwise>
                                			<a id="btnScrap" class="btn btn-default"><strong><i class="fa fa-star off"></i> 스크랩</strong></a>
                                		</c:otherwise>
                                		
                                	</c:choose>
                                	</div>
                                </div><br/>
                                
                                <!-- Project Details Start -->
                                <div class="widget project_details">
                                    <h3 class="title">진단 결과</h3>
                                    <div class="details-content">
                                    	<span><strong>자세</strong><em><a>부산스러움</a></em></span>
                                        <span><strong>음성</strong><em><a>목소리 떨림</a><a>호흡 불안정</a><a>훌륭한 답변</a></em></span>
                                        <span><strong>점수</strong><em>
												<img src="${pageContext.request.contextPath}/resources/img/shop/stars-5.png" alt="Based on 1 reviews.">
										</em>
										</span>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="widget">
                                	<a href="${pageContext.request.contextPath}/post/soifactorylist?page=${fCri.page}&numPerPage=${fCri.numPerPage}&findType=${fCri.findType}&keyword=${fCri.keyword}&facArray=${arrCri.facArray}" class="btn-normal btn-color"><i class="fa fa-hand-right icon-large"></i>글목록</a>
									<c:if test="${authUser.userId==requestScope.postVo.writerId}">
                                    	<a href="${pageContext.request.contextPath}/post/soimodifyform?postNo=${postVo.postNo}&writerId=${postVo.writerId}&page=${fCri.page}&numPerPage=${fCri.numPerPage}&findType=${fCri.findType}&keyword=${fCri.keyword}&facArray=${arrCri.facArray}" class="btn-normal btn-color"><i class="fa fa-hand-right icon-large"></i>글수정</a>
                                    	<a href="${pageContext.request.contextPath}/post/soidelete?postNo=${postVo.postNo}&page=${fCri.page}&numPerPage=${fCri.numPerPage}&findType=${fCri.findType}&keyword=${fCri.keyword}&facArray=${arrCri.facArray}" class="btn-normal btn-color"><i class="fa fa-hand-right icon-large"></i>글삭제</a>
                                    </c:if>
                                </div>
                            </div>
                            <!-- /Project Summary -->
                            
                            
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
	var authUser='${sessionScope.authUser}';
	var page=1;

	$(document).ready(function() { //페이지의 내용이 로딩되기 이전에 데이터 요청, 화면 켜지자 마자 뿌려주기
		fetchList();
	});
	
	$("#btnNext").on("click", function() {
		if (authUser=="") {
			alert("로그인이 필요한 서비스 입니다.");
		} else {
			page = page + 1; //page+=1;
			console.log(page);
		
			fetchList();
		}
	});

	function fetchList() {
		var no= ${postVo.postNo};
		
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
		var userId='${authUser.userId}';
		var cmtWriter=CommentVo.userId;
		
		var str = "";
		str += "<li>";
		str += "<div class='comment' id='g"+CommentVo.cmtNo+"'>";
 		str += "    <div class='avatar'>";
		str += "        <img alt='' src='${pageContext.request.contextPath}/resources/img/team/team-member-3.jpg'>";
		str += "    </div>";
 		str += "    <div class='comment-des'>";
  		str += "        <div class='arrow-comment'>";
		str += "        </div>";
		str += "        <div class='comment-by' style='margin-right: 400px;'>";
		str += "            <strong>"+CommentVo.userId+"</strong>";
		str += "            <span class='date'>&nbsp;&nbsp;&nbsp;"+CommentVo.cmtDate+"</span>";
		str += "            <span class='reply'><a href=''><i class='fa fa-reply'></i> Reply</a></span>";
		if(userId==cmtWriter) {
		str += "            <span id='"+CommentVo.cmtNo+"' class='delete reply'><a href='javascript:void(0)'><i class='fa fa-trash-o'></i></a></span>";
		str += "            <span id='"+CommentVo.cmtNo+"' class='modify reply'><a href='javascript:void(0)'><i class='fa fa-pencil-square-o'></i></a></span>";
		}
		str += "        </div>";
		str += "        <div id='g"+CommentVo.cmtNo+"modifyCmt'>";
		str += "        	<p><pre id='g"+CommentVo.cmtNo+"abc' style='white-space: pre-wrap;'>"+CommentVo.cmtContent+"</pre></p>";
		str += "        </div>";
 		str += "    </div>";
 		str += "    <div class='clearfix'>";
		str += "    </div>";
		str += "</div>";
		str += "</li>";

		if (updown == "up") {
			$("#listArea").prepend(str);
		} else if (updown == "down") {
			$("#listArea").append(str);
		} else {
			console.log("update 오류");
		}
	};
	
	//댓글 버튼 클릭
	$("#btnInsert").on("click", function(){
		var content = $("#cmtcontent").val();
		content=content.replace('\r\n', '</br>');
		var postNo = ${postVo.postNo};
		
		var commentVo = {
				cmtContent : content,
				postNo : postNo
		}
		
		if (authUser=="") {
			alert("로그인이 필요한 서비스 입니다.");
		} else if (content=="") {
			alert("글을 작성해주세요.");
		} else {
			$.ajax({
				url : "${pageContext.request.contextPath}/comment/api/addcomment",
				type : "post",
				contentType : "application/json", 
				data : JSON.stringify(commentVo), 
	
				dataType : "json", 
				success : function(commentVo){
					//로그인 여부 서버단에서 조건 걸기 
					
					var cmtNo=commentVo.cmtNo;
					
					getComment(cmtNo);
					
					$("[name=cmtcontent]").val("");
				},
				
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
				
			});
		}
	});
	
	//댓글 쓰기 및 댓글 수 증가
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
				//댓글 쓰기
				render(writeCmt, "up");
				
				//댓글 표시 숫자 증가
				var stat=$("#postCmtCnt").text();
				stat=stat.split(" ");
				var num=parseInt(stat);
				num++;
				$("#postCmtCnt").text(num+" comments");
				
				//댓글 표시 숫자 증가
				var stat=$("#cmtCnt").text();
				stat=stat.split(" ")[1];
				var num=parseInt(stat);
				num++;
				$("#cmtCnt").text("댓글 "+ num +" 개");
			},
			
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}

		});
		
	};
	

	//댓글 삭제 버튼
	$("li").on("click",".delete", function(){
		var no = this.id;
		var postNo = ${postVo.postNo};
		console.log(no);
		console.log(postNo);
		
		var commentVo = {
				cmtNo : no,
				postNo : postNo
		}
		
		$.ajax({
			//보내기
			url : "${pageContext.request.contextPath}/comment/api/deleteComment",
			type : "post",
			contentType : "application/json", 
			data : JSON.stringify(commentVo), 

			dataType : "json",
			success : function(count) {
				if(count==1){
					console.log(count+"개 제거 완료")
					
					$("#g" + no).remove();
					
					alert("댓글 삭제에 성공하였습니다.");
					
					var stat=$("#postCmtCnt").text();
					stat=stat.split(" ");
					var num=parseInt(stat);
					num--;
					$("#postCmtCnt").text(num+" comments");
					
					//댓글 표시 숫자 감소
					var stat=$("#cmtCnt").text();
					stat=stat.split(" ")[1];
					var num=parseInt(stat);
					num--;
					$("#cmtCnt").text("댓글 "+ num +" 개");
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});
	
	//수정 클릭
	$("li").on("click",".modify", function(){
		var no = this.id;

		var oldContent = $("#g"+no+"abc").text();

		var str = "";
		
		str += "<textarea type='text' id='"+no+"reContent' maxlength='200' width='80' style='width:100%; height:60;'>";
		str += "</textarea>";
		str += "<div align=right>";
		str += "<input id='"+no+"' class='save' type='button' value='저장' style='margin-right:10px'/>";
		str += "<input id='"+no+"' class='cancel' type='button' value='취소'/>";
		str += "</div>";
		
		$("#g"+no+"modifyCmt").html(str);
		/* $("#g"+no+"modifyCmt").append(cancel); */
		
		$("#"+no+"reContent").val(oldContent);

		var recon=$("#reContent").text();
	});
	
	//수정하기 저장
	$("li").on("click", ".save", function() {
		var no = this.id 
		
		console.log(no);
		var newcontent = $("#"+no+"reContent").val();
		
		var commentVo = {
				cmtContent : newcontent,
				cmtNo : no
		}
		
		$.ajax({
			//보내기
			url : "${pageContext.request.contextPath}/comment/api/modifyComment",
			type : "post",
			contentType : "application/json", 
			data : JSON.stringify(commentVo), 

			dataType : "json",
			success : function(count) {
				if(count==1){
					console.log(count+"개 수정 완료");
					
					var renewstr = "<p><pre id='g"+no+"abc' style='white-space: pre-wrap;'>"+newcontent+"</pre></p>";
					$("#g"+no+"modifyCmt").html(renewstr);
					
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});
	
	//수정하기 취소
	$("li").on("click", ".cancel", function() {
		var no = this.id;
		var oldcontent = $("#"+no+"reContent").val();
		console.log(no);
		
		var oldstr = "<p><pre id='g"+no+"abc' style='white-space: pre-wrap;'>"+oldcontent+"</pre></p>";
		$("#g"+no+"modifyCmt").html(oldstr);
	});
	
	var scrapChk=<c:out value="${scrapChk}"/>;
	var postNo="<c:out value='${postVo.postNo}'/>";
	var userId="<c:out value='${authUser.userId}'/>";
	
	//스크랩 기능
	$("#btnScrap").on("click", function() {
		if(userId == "") {
			alert("로그인이 필요한 서비스 입니다.");
		} else if (scrapChk==true && userId != "") {
			userScrap(userId, postNo, false);
			scrapChk=false;
		} else if (scrapChk==false && userId != "") {
			userScrap(userId, postNo, true);
			scrapChk=true;
		}
	});
	
	function userScrap(userId, postNo, scrapX) {
		scrapVo= {
				userId : userId,
				postNo : postNo,
				scrapX : scrapX
		}
		$.ajax({
			//보내기
			url : "${pageContext.request.contextPath}/post/api/userscrap",
			type : "post",
			contentType : "application/json", 
			data : JSON.stringify(scrapVo), 

			dataType : "json",
			success : function(scrapChk) {
				if(scrapX==true) {
					$("#btnScrap i").removeClass("off");
					$("#btnScrap i").addClass("on");
					
				} else {
					$("#btnScrap i").removeClass("on");
					$("#btnScrap i").addClass("off");
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	};
	
	var likeChk=<c:out value="${likeChk}"/>;
	console.log(likeChk);
	console.log(postNo);
	console.log(userId);
	
	//좋아요(콩) 기능
	$("#btnLike").on("click", function() {
		if (userId == "") {
			console.log("로그인이 필요한 서비스입니다.");
		} else if (likeChk == true && userId != "") {
			userLike(userId, postNo, false);
			likeChk = false;
		} else if (likeChk == false && userId != "") {
			userLike(userId, postNo, true);
			likeChk = true;
		}
	});
	
	function userLike(userId, postNo, likeX) {
		likeVo= {
				userId : userId,
				postNo : postNo,
				likeX : likeX
		}
		$.ajax({
			//보내기
			url : "${pageContext.request.contextPath}/post/api/userlike",
			type : "post",
			contentType : "application/json", 
			data : JSON.stringify(likeVo), 

			dataType : "json",
			success : function(determine) {
				if(likeX==true && determine==true) {
					$("#btnLike i").removeClass("off");
					$("#btnLike i").addClass("likeOn");
					
					var stat=$("#postSoiCnt").text();
					stat=stat.split(" ");
					var num=parseInt(stat);
					num++;
					$("#postSoiCnt").text(num+" soybeans");
				} else {
					$("#btnLike i").removeClass("likeOn");
					$("#btnLike i").addClass("off");
					
					var stat=$("#postSoiCnt").text();
					stat=stat.split(" ");
					var num=parseInt(stat);
					num--;
					$("#postSoiCnt").text(num+" soybeans");
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	};
	
	//콩 수 증가
	/*function likeCntUp() {
		var postNo = ${postVo.postNo};
			
		$.ajax({
			url : "${pageContext.request.contextPath}/post/api/updateLike",
			type : "post",
			data : {
				postNo : postNo
			},

			dataType : "json", 
			success : function(soi){
				
				//콩 수 증가
				var stat=$("#postSoiCnt").text();
				stat=stat.split(" ");
				var num=parseInt(stat);
				num++;
				$("#postSoiCnt").text(num+" soybeans");
			},
			
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
			
		});

	};*/
	
	//스크랩 기능
	/* $("#btnScrap").on("click", function(){
		if (authUser=="") {
			alert("로그인이 필요한 서비스 입니다.");
			location.href='${pageContext.request.contextPath}/';
		} else {
			var postNo = ${postVo.postNo};
			
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
		}
	}); */
	
</script>

</html>