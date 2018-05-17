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
                                    <h2 class="title">회원 가입</h2>
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
                            <!-- Login -->
                            <div class="featured-boxes login">
                                <!-- Registration -->
                                <div class="col-md-6 col-md-offset-3">
                                    <div class="featured-box featured-box-secundary default info-content">
                                        <h2 class="form-signin-heading">일반 회원 가입</h2>
                                        <div class="box-content">
                                            <form action="${pageContext.request.contextPath}/user/join" id="signup" method="post">
                                                <label for="fname"> <span class="required">* 표시는 반드시 작성해주세요.</span></label>
                                                <br/><br/>
                                                <div class="row">
                                                    <div class="form-group">
                                                        <label for="fname">이름 <span class="required">*</span></label>
                                                        <input type="text" id="name" value="" name="userName" class="form-control" placeholder="이름" style="margin-bottom :5px;" required>
                                                       
                                                    </div>
                                                	<div class="col-md-12" id="chkName"></div>

                                                    <div class="form-group">
                                                        <label for="lname">아이디 <span class="required">*</span></label>
                                                            <input type="text" id="id" value="" name="userId" class="form-control" placeholder="아이디" style="margin-bottom :5px;" required>             	
                                                        
                                                    </div>
                                                    <div class="col-md-12" id="chkUserId"></div>

                                                
                                                    <div class="form-group">
                                                        <label for="fname">닉네임 <span class="required">*</span></label>
                                                            <input type="text" id="nickname" value="" name="userNickname" class="form-control" placeholder="닉네임" style="margin-bottom :5px;" required>
                                                        
                                                    </div>
                                                    <div class="col-md-12" id="chkNickname"></div>
                                                
                                                    <div class="form-group">
                                                        <label for="fname">비밀번호 <span class="required">*</span></label>
                                                            <input type="password" id="password" name="userPwd" value="" class="form-control" placeholder="비밀번호" style="margin-bottom :5px;" required>
                                                    
                                                    </div>
                                                    <div class="col-md-12" id="chkPassword"></div>
                                                
                                                
                                                <!-- 비밀번호 재확인  -->
                                                <!-- <div class="row">
                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                            <input type="password" id="rePassword" name="userPwd" value="" class="form-control" placeholder="비밀번호">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12" id="chkRePassword"></div>
                                                </div> -->
                                                
                                                
                                                    <div class="form-group">
                                                        <label for="fname">이메일 <span class="required">*</span>&nbsp;&nbsp;ex)hisoi@naver.com</label>
                                                            <input type="text" name="userEmail" id="email" value="" class="form-control" placeholder="이메일" style="margin-bottom :5px;" required>
                                                        
                                                    </div>
                                                    <div class="col-md-12" id="chkEmail"></div>
                                                
                                                    <div class="form-group">
                                                        <label for="fname">휴대전화번호 <span class="required">*</span>&nbsp;&nbsp;(숫자 사이에&nbsp;&nbsp;-&nbsp;&nbsp;표시)</label>
                                                            <input type="text" name="userTel" id="tel" value="" class="form-control" placeholder="휴대전화번호" style="margin-bottom :5px;" required>
                                                        
                                                    </div>
                                                    <div class="col-md-12" id="chkTel"></div>
                                                
                                                    <div class="form-group">
                                                        <label for="fname">주소 <span class="required">*</span></label>
                                                            <input type="text" value="" name="userAddr" class="form-control" placeholder="주소" style="margin-bottom :5px;" required>
                                                        
                                                    </div>
                                                	<div class="row">
                                                    	<div class="col-md-3 pull-right">
                                                        	<input type="submit" value="가입하기" class="btn btn-color push-bottom" data-loading-text="Loading...">
                                                    	</div>
                                                	</div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Registration -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Main Content -->
            </section>
            <!-- /Main Section -->
            
            <!-- Footer -->
            <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
            <!-- /Footer -->
        
</body>    
   
<script>
//기존에 존재하는 이메일에 대한 처리 해주어야 함.
$("#name").keyup(function(){
	var name=$("[name=userName]").val();
	var check = /^[가-힣a-zA-Z]+$/;
	
	if(!check.test(name)) {
		$("#chkName").html("<font color=\"red\">이름 양식으로 작성해주세요.</font>");
	} else {
		$("#chkName").text("");
	}
});

$("#id").keyup(function() {
	var id=$("#id").val();
	console.log(id);
	
	var check = /^[a-zA-Z0-9]{4,15}$/;
	
	if(check.test(id)) {
		$.ajax({
			url : "${pageContext.request.contextPath}/user/api/idchk",
			type : "post",
			data : {
				id:id
			},
			
			success : function(result) {
				if(result==true) {
					$("#chkUserId").text("사용 가능한 아이디입니다.");
				} else {
					$("#chkUserId").html("<font color=\"red\">사용중인 아이디입니다.</font>");
				}
			},
			
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	} else {
		$("#chkUserId").html("<font color=\"red\">영어, 숫자 조합 4~15자 사용 가능(특수문자 및 공백 사용불가)</font>");
	}
});

$("#nickname").keyup(function() {
	var nick=$("#nickname").val();
	console.log(nick);
	
	var check = /^[가-힣a-zA-Z0-9]{6,15}$/;
	
	if(check.test(nick)) {
		$.ajax({
			url : "${pageContext.request.contextPath}/user/api/nickchk",
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