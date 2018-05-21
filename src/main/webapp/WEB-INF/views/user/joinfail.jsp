<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        
            <!-- Header -->
            <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
            <!-- /Header -->  
            
            <!-- Main Section -->
            <section id="main">
                <div class="breadcrumb-wrapper">
                    <div class="pattern-overlay">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                    <h2 class="title">회원가입 결과</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Main Content -->
                <div class="content margin-top60 margin-bottom60">
                    <div class="container">
                        <div class="row">
                            <article class="col-sm-12 col-md-12 content">
                                <div class="my-account">
                                    <div class="bottom-padding">
                                        <p><strong>회원가입 오류</strong></p>
                                        <div class="alert alert-danger">
                                            <ul class="list-unstyled">
                                                <li><strong>회원가입에 실패하였습니다. 다시 시도해주세요.</strong></li>
                                            </ul>
                                        </div>
                                        <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order wont be shipped until the funds have cleared in our account.</p>
                                    </div>
                                </div>
                            </article>
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
</html>