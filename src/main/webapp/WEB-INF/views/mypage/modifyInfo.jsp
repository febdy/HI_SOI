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
                                    <h2 class="title">마이페이지</h2>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                    <div class="breadcrumbs pull-right">
                                        <ul>
                                            <li>You are Now on:</li>
                                            <li><a href="index.html">마이페이지</a></li>
                                            <li><a href="#">회원정보수정</a></li>
                                            <li>Products Single Page</li>
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
                            <div class="sidebar col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                <!-- Left nav Widget Start -->
                                <div class="widget category">
                                    <h3 class="title">My page</h3>
                                    <ul class="category-list slide">
                                        <li><a href="${pageContext.request.contextPath}/mypage/history">진단 히스토리</a></li>
                                        <li><a href="${pageContext.request.contextPath}/mypage/videoclip">영상 관리</a></li>
                                        <li><a href="${pageContext.request.contextPath}/mypage/collect/comment">내가 작성한 댓글</a></li>
                                        <li><a href="${pageContext.request.contextPath}/mypage/collect/video">내가 올린 영상</a></li>
                                        <li><a href="${pageContext.request.contextPath}/mypage/collect/scrap">스크랩 영상</a></li>
                                        <li><a href="${pageContext.request.contextPath}/mypage/beforemodify">회원 정보 수정</a></li>
                                    </ul>
                                </div>
                                <!-- Left nav Widget End -->
                            </div>
                            <!-- Sidebar End -->
                            
                            
                            <!-- 내용 부분 -->
                            <div class="posts-block col-lg-9 col-md-9 col-sm-9 col-xs-12">
                            	  <div class="my-account margin-top">
                                    <div class="row">
                                        <div class="col-sm-6 col-md-6">
                                            <div class="title-box">
                                                <h3>회원 정보 수정</h3>
                                            </div>
                                            <form action="${pageContext.request.contextPath}/mypage/modifyComplete" class="modify-form" method="post">
                                                <label for="fname"> <span class="required">* 표시는 반드시 작성해주세요.</span></label>
                                                <br/><br/>
                                                <div class="row">
                                                    <div class="form-group">
                                                        <label for="fname">이름 </label>
                                                        <h3>${requestScope.userVo.userName}</h3>
                                                        <input type="hidden" name="userName" class="form-control" value="${requestScope.userVo.userName}">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="lname">아이디 </label><br/>
                                                        <h3>${requestScope.userVo.userId}</h3>
                                                        <input type="hidden" name="userId" class="form-control" value="${requestScope.userVo.userId}">
                                                    </div>
                                                    <div class="form-group">
                                                    	<label for="fname">닉네임 <span class="required">*</span></label>
                                                    	<div id="chkNickname"></div>
                                                        <input id="nickname" type="text" name="userNickname" class="form-control" value="${requestScope.userVo.userNickname}" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="fname">변경할 비밀번호 <span class="required">*</span></label>
                                                        <div id="chkPassword"></div>
                                                        <input id="password" type="password" name="userPwd" class="form-control" value="${requestScope.userVo.userPwd}" required>
                                                    </div>
                                                    <!-- <div class="form-group">
                                                        <label for="fname">비밀번호 확인 <span class="required">*</span></label>
                                                        <input id="password" type="text" name="userPwd" value="" placeholder="Mr.">
                                                    </div> -->
                                                    <div class="form-group">
                                                        <label for="fname">이메일 <span class="required">*</span>&nbsp;&nbsp;ex)hisoi@naver.com</label>
                                                        <div id="chkEmail"></div>
                                                        <input id="email" type="text" name="userEmail" class="form-control" value="${requestScope.userVo.userEmail}" placeholder="nobody@email.com" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="fname">휴대전화번호 <span class="required">*</span>&nbsp;&nbsp;(숫자 사이에&nbsp;&nbsp;-&nbsp;&nbsp;표시)</label>
                                                        <div id="chkTel"></div>
                                                        <input id="tel" type="text" name="userTel" class="form-control" value="${requestScope.userVo.userTel}" placeholder="000-0000-0000" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="fname">주소 <span class="required">*</span></label>
                                                        <input type="text" name="userAddr" class="form-control" value="${requestScope.userVo.userAddr}" required>
                                                    </div>
                                                    <div class="row">
                                                    <div class="col-md-3 pull-right">
                                                        <input type="submit" value="수정완료" class="btn btn-color push-bottom" data-loading-text="Loading...">
                                                    </div>
                                                	</div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>

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
$("#nickname").keyup(function() {
	var nick=$("#nickname").val();
	console.log(nick);
	
	/* var check = /^.*.{6,15}$/; */
	var check = /^[가-힣a-zA-Z0-9]{6,15}$/;
	
	if(check.test(nick)) {
		$.ajax({
			url : "${pageContext.request.contextPath}/mypage/api/nickchkformodify",
			type : "post",
			data : {
				nick:nick
			},
			
			success : function(result) {
				if(result==true) {
					$("#chkNickname").text("사용 가능한 닉네임입니다.");
				} else {
					$("#chkNickname").html("<font color=\"red\">사용중인 닉네임입니다.</font>");
				}
			},
			
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	} else {
		$("#chkNickname").html("<font color=\"red\">한글, 영어, 숫자 6~15자 사용 가능(특수문자 및 공백 사용불가) </font>");
	}
});

$("#password").keyup(function(){
	var pw = $("[name=userPwd]").val();
	var check = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,20}$/;
	if(!check.test(pw)) {
		$("#chkPassword").html("<font color=\"red\">8~20자의 영문대소문자, 숫자 및 특수문자 사용</font>");
	} else {
		$("#chkPassword").text("사용 가능한 비밀번호입니다.");
	}
});

//기존에 존재하는 이메일에 대한 처리 해주어야 함.
$("#email").keyup(function(){
	var email=$("[name=userEmail]").val();
	var check = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
	
	if(!check.test(email)) {
		$("#chkEmail").html("<font color=\"red\">이메일 양식으로 작성해주세요.</font>");
	} else {
		$("#chkEmail").text("사용 가능한 이메일입니다.");
	}
});

//기존에 존재하는 휴대폰 번호에 대한 처리 해주어야 함.
$("#tel").keyup(function(){
	var tel=$("[name=userTel]").val();
	var check = /^\d{3}-\d{3,4}-\d{4}$/;
	
	if(!check.test(tel)) {
		$("#chkTel").html("<font color=\"red\">휴대폰 번호 양식이 아닙니다.</font>");
	} else {
		$("#chkTel").text("사용 가능한 휴대폰 번호입니다.");
	}
});
</script>

</html>