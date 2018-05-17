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
                                            <li><a href="index.html">Home</a></li>
                                            <li><a href="#">SoiFactory</a></li>
                                            <li>Products Single Page</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Title, Breadcrumb -->
			<!-- Latest Posts -->
			<div id="latest-posts" class=" margin-top100">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 col-md-12 text-center">
							<h2 class="wow fadeIn">SoiFactory</h2>
							<h4 class="wow fadeInRight">
								소이 팩토리는 서로의 면접 실력을 다듬고 면접 자세 및 음성 교정 이외에 <br /> 다양한 면접 기술을 익히기
								위한 컨텐츠 서비스 입니다.
							</h4>
						</div>
					</div>
					<br /> <br /> <br />
					<div class="row">
						<!-- Post Order -->
						<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
							<div class="display">
								<span><b>Display:</b></span>
	  							<select id="ex_select" onchange="location.href=this.value">
	  							<!-- 게시글 보기 부분 option 처리 해주어야함. -->
	  								<option value="${pageContext.request.contextPath}/post/soifactorylist?page=${pagingMaker.cri.page}&numPerPage=${pagingMaker.cri.numPerPage}&facArray=latest"
	  									<c:out value="${arrCri.facArray == 'latest'? 'selected':''}"/>>최신순</option> 
	  								<option value="${pageContext.request.contextPath}/post/soifactorylist?page=${pagingMaker.cri.page}&numPerPage=${pagingMaker.cri.numPerPage}&facArray=soi"
	  									<c:out value="${arrCri.facArray == 'soi'? 'selected':''}"/>>인기(콩)순 
	  								<option value="${pageContext.request.contextPath}/post/soifactorylist?page=${pagingMaker.cri.page}&numPerPage=${pagingMaker.cri.numPerPage}&facArray=view"
	  									<c:out value="${arrCri.facArray == 'view'? 'selected':''}"/>>조회순</option>
	  								<option value="${pageContext.request.contextPath}/post/soifactorylist?page=${pagingMaker.cri.page}&numPerPage=${pagingMaker.cri.numPerPage}&facArray=comment"
	  									<c:out value="${arrCri.facArray == 'comment'? 'selected':''}"/>>댓글순</option> 
	  							</select>
							</div>
						</div>
						<!-- /Post Order -->
						<!-- Post Search -->
						<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 pull-right">
							<div class="input-group">
								<form id="search_form" action="${pageContext.request.contextPath}/post/soifactorylist" method="get">
									<div class="col-md-9">
									<input type="hidden" name="page" value="${pagingMaker.cri.page}"> 
									<input type="text" value="Search Posts" id="kwd" name="kwd" 
										onfocus="if(this.value=='Search Posts')this.value='';"
										onblur="if(this.value=='')this.value='Search Posts';"
										class="search-input form-control product-search-height">
									</div>
									<div class="col-md-1">
									<span class="input-group-btn">
									<button type="submit"
										class="btn product-search-height">
										<i class="fa fa-search"></i>
									</button>
									</span>
									</div>
									<div class="col-md-2"></div>
								</form>
							</div>
						</div>
						<!-- /Post Search -->
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="product-grid">
								<div class="products-block">
									<div class="row product-items">
										<!-- Product Items -->
										<c:forEach items="${bindMap}" var="postVo">
											<div
												class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols first post-item wow fadeInUp">
												<div class="product-block">
													<div class="image ">
														<!-- <span class="product-label product-label-special">
                                                        <span>NEW</span>
                                                        </span> -->
														<!-- Swap image -->
														<div class="flip">
															<a
																href="${pageContext.request.contextPath}/post/soiread/${postVo.postNo}?page=${pagingMaker.cri.page}&numPerPage=${pagingMaker.cri.numPerPage}&facArray=${arrCri.facArray}"
																class="swap-image"> <img
																src="${pageContext.request.contextPath}/upload/${postVo.videoThumnail}"
																title="${postVo.postTitle}"
																class="front">
															</a>
														</div>
														<!-- /Swap image -->
														<a
															href="${pageContext.request.contextPath}/post/soiread/${postVo.postNo}?page=${pagingMaker.cri.page}&numPerPage=${pagingMaker.cri.numPerPage}&facArray=${arrCri.facArray}"
															class="pav-colorbox btn btn-theme-default cboxElement"><em
															class="fa fa-plus"></em><span>View Post</span></a>
													</div>
													<div class="product-meta">
														<div class="left">
															<h3 class="name">
																<a
																	href="${pageContext.request.contextPath}/post/soiread/${postVo.postNo}?page=${pagingMaker.cri.page}&numPerPage=${pagingMaker.cri.numPerPage}&facArray=${arrCri.facArray}">${postVo.postTitle}</a>
															</h3>
															<div class="rating">
																<img
																	src="${pageContext.request.contextPath}/resources/img/shop/stars-5.png"
																	alt="Based on 1 reviews.">
															</div>
														</div>
														<div class="right">
															<%-- <div class="rating">
                                                                <img src="${pageContext.request.contextPath}/resources/img/shop/stars-5.png" alt="Based on 1 reviews.">
                                                            </div> --%>
															<!-- <p class="description">
                                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                                                            </p> -->
															<div class="meta post-meta">
																<div class="post-date post-meta-content">
																	<i title="${postVo.postDate}" class="fa fa-clock-o"></i>
																</div>
																<div class="post-comment post-meta-content">
																	<a title="Comments"><i class="fa fa-comment-o"></i>${postVo.postCmtCnt}</a>
																</div>
																<div class="post-like post-meta-content">
																	<a title="Likes"><i class="fa fa-heart"></i>${postVo.postSoiCnt}</a>
																</div>
																<div class="post-link post-meta-content">
																	<a title="Hits"><i class="fa fa-user fa-2x"></i>${postVo.postHitCnt}</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
										<!-- /Product Items -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="pagination-centered padding-bottom30">
						<ul class="pagination">
							<c:if test="${pagingMaker.prev}">
								<!-- 이 값이 false라면 prev 실행 x -->
								<li><a
									href="${pageContext.request.contextPath}/post/soifactorylist?page=${pagingMaker.startPage-1}&numPerPage=${pagingMaker.cri.numPerPage}&facArray=${arrCri.facArray}">«</a></li>
							</c:if>

							<c:forEach begin="${pagingMaker.startPage}"
								end="${pagingMaker.endPage}" var="idx">
								<li><a
									href="${pageContext.request.contextPath}/post/soifactorylist?page=${idx}&numPerPage=${pagingMaker.cri.numPerPage}&facArray=${arrCri.facArray}" style="<c:out value="${pagingMaker.cri.page == idx?'color :#FF0000':' '}"/>">${idx}</a></li>
							</c:forEach>

							<c:if test="${pagingMaker.next}">
								<!-- 이 값이 false라면 next 실행 x -->
								<li><a
									href="${pageContext.request.contextPath}/post/soifactorylist?page=${pagingMaker.endPage+1}&numPerPage=${pagingMaker.cri.numPerPage}&facArray=${arrCri.facArray}">»</a></li>
							</c:if>

						</ul>
					</div>
					<!-- Post Write -->
					<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 pull-right">
						<a class="btn btn-color btn-normal btn-pad"
							href="${pageContext.request.contextPath}/post/soiwriteform">영상올리기</a>
					</div>
					<!-- /Post Write -->
				</div>
			</div>
			<!-- /Latest Posts -->
		</section>
		<!-- /Main Section -->

		<!-- Footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- /Footer -->
	
</body>
</html>