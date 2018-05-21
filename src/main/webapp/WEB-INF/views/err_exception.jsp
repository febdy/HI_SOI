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
                                    <h2 class="title">404 Not Found</h2>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                    <div class="breadcrumbs pull-right">
                                        <ul>
                                            <li>You are Now on:</li>
                                            <li><a href="index.html">Home</a></li>
                                            <li><a href="#">Pages</a></li>
                                            <li>404 Not Found</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Main Content -->
                <div class="content margin-top60 margin-bottom60">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <h2 class="text-center">Whoops... Page Not Found !!!</h2>
                                <div id="not-found">
                                    <h2>404 <i class="fa fa-question"></i></h2>
                                </div>
                                <div class="back-home">
                                    <p>Your requested page could not be found or it is currently unavailable.<br>
                                        Please <a href="index.html">click here</a> to go back to our home page or use the search form below
                                    </p>
                                    <!-- Search Widget -->
                                    <div class="widget search-form">
                                        <div class="input-group">
                                            <input type="text" value="Search..." onfocus="if(this.value=='Search...')this.value='';" onblur="if(this.value=='')this.value='Search...';" class="search-input form-control">
                                            <span class="input-group-btn">
                                            <button type="submit" class="subscribe-btn btn"><i class="fa fa-search"></i></button>
                                            </span>
                                        </div>
                                        <!-- /input-group -->
                                    </div>
                                    <!-- /Search Widget -->
                                </div>
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
</html>