<%-- 
    Document   : index
    Created on : Nov 12, 2022, 12:41:16 AM
    Author     : dung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="author" content="Untree.co">
	<link rel="shortcut icon" href="favicon.png">

	<meta name="description" content="" />
	<meta name="keywords" content="bootstrap, bootstrap5" />
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">


	<link rel="stylesheet" href="fonts/icomoon/style.css">
	<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

	<link rel="stylesheet" href="css/tiny-slider.css">
	<link rel="stylesheet" href="css/aos.css">
	<link rel="stylesheet" href="css/style.css">

	<title>MY TEAM &mdash;</title>
</head>
<body>

	<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close">
				<span class="icofont-close js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>

        <jsp:include page="header.jsp"></jsp:include>

	<div class="hero">


		<div class="hero-slide">
			<div class="img overlay" style="background-image: url('images/hero_bg_3.jpg')"></div>
			<div class="img overlay" style="background-image: url('images/hero_bg_2.jpg')"></div>
			<div class="img overlay" style="background-image: url('images/hero_bg_1.jpg')"></div>
		</div>

		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-9 text-center">
					<h1 class="heading" data-aos="fade-up">Tìm kiếm bài viết !</h1>
					<form action="Search" method="post" class="narrow-w form-search d-flex align-items-stretch mb-3" data-aos="fade-up" data-aos-delay="200">
						<input type="text" class="form-control px-4" placeholder="Search" name="txt">
						<button type="submit" class="btn btn-primary">Search</button>
					</form>
				</div>
			</div>
		</div>
	</div>


	<div class="section">
		<div class="container">
			<div class="row mb-5 align-items-center">
				<div class="col-lg-6">
					<h2 class="font-weight-bold text-primary heading">Tin tức mới nhất !</h2>
				</div>
			
			</div>
			<div class="row">
				<div class="col-12">


					<div class="property-slider-wrap">
                                            <p>${n}</p>
						<div class="property-slider">
                                                    <c:forEach var="x" items="${list}" >
                                                        <div class="property-item">
                                                                
								<a href="#" class="img">
									<img src="images/${x.image}" alt="Image" class="img-fluid">
								</a>

								<div class="property-content">
									<div class="price mb-2"><span>${x.name}</span></div>
									<div>
                                                                            <c:forEach var="i" items="${listDM}" >
                                                                                <c:if test="${x.cat_id == i.id}">
                                                                                    <span class="d-block mb-2 text-black-50">Danh mục: ${i.name} </span>
                                                                                    
                                                                                </c:if>

                                                                            </c:forEach>
                                                                            <c:forEach var="i" items="${listU}" >
                                                                                <c:if test="${x.user_id == i.id}">
                                                                                    <span class="d-block mb-2 text-black-50">Tác Giả : ${i.username} </span>

                                                                                </c:if>

                                                                            </c:forEach>
										
                                                                                <span class="d-block mb-2 text-black-50">${x.date} </span>
                                                                                
                                                                                
                                                                                
										<span class="city d-block mb-3">${x.description}</span>


										<a href="Detail?pid=${x.id}" class="btn btn-primary py-2 px-3">Xem Thêm</a>
									</div>
								</div>
							</div>  

                                                    </c:forEach>
							
							
						</div>


						<div id="property-nav" class="controls" tabindex="0" aria-label="Carousel Navigation">
							<span class="prev" data-controls="prev" aria-controls="property" tabindex="-1">Prev</span>
							<span class="next" data-controls="next" aria-controls="property" tabindex="-1">Next</span>
						</div>

					</div>
				</div>

			</div>
		</div>
	</div>

	<section class="features-1">
		<div class="container">
			<div class="row">
				<div class="col-6 col-lg-3"  data-aos="fade-up" data-aos-delay="300">
					<div class="box-feature">
						<span class="flaticon-house"></span>
						<h3 class="mb-3">Tin tức nổi bật</h3>
						<p>Các tin tức hót, về đời sống xã hội luôn được chúng tôi cập nhật hằng ngày.</p>
						<p><a href="#" class="learn-more">Xem Thêm</a></p>
					</div>
				</div>
				<div class="col-6 col-lg-3"  data-aos="fade-up" data-aos-delay="500">
					<div class="box-feature">
						<span class="flaticon-building"></span>
						<h3 class="mb-3">Cùng nhau phát triển</h3>
						<p>Với đội ngũ chất lượng chúng tôi luôn đảm bảo những tin tức nóng nhất đến tay người đọc.</p>
						<p><a href="#" class="learn-more">Xem thêm</a></p>
					</div>
				</div>
				<div class="col-6 col-lg-3"  data-aos="fade-up" data-aos-delay="400">
					<div class="box-feature">
						<span class="flaticon-house-3"></span>
						<h3 class="mb-3">Thỏa sức sáng tạo</h3>
						<p>Nơi các tác giả có thể thỏa sức sáng tao cùng với nhiều tác phẩm hay của mình, những tác giả trẻ tuổi đầy sáng tạo.</p>
						<p><a href="#" class="learn-more">Xem Thêm</a></p>
					</div>
				</div>
				<div class="col-6 col-lg-3"  data-aos="fade-up" data-aos-delay="600">
					<div class="box-feature">
						<span class="flaticon-house-1"></span>
						<h3 class="mb-3">Ngôi nhà nổi bật</h3>
						<p>Tự hào với nhiều năm phát triển,ngày càng trở thành bạn với nhiều độc giả khắp nơi của Việt Nam.</p>
						<p><a href="#" class="learn-more">Xem Thêm</a></p>
					</div>
				</div>	
			</div>
		</div>
	</section>



	<div class="section sec-testimonials">
		<div class="container">
			<div class="row mb-5 align-items-center">
				<div class="col-md-6">
					<h2 class="font-weight-bold heading text-primary mb-4 mb-md-0">Độc giả nói gì ?</h2>
				</div>
				<div class="col-md-6 text-md-end">
					<div id="testimonial-nav">
						<span class="prev" data-controls="prev">Prev</span>
						
						<span class="next" data-controls="next">Next</span>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-4">
					
				</div>
			</div>
			<div class="testimonial-slider-wrap">
				<div class="testimonial-slider">
					<div class="item">
						<div class="testimonial">
							<img src="images/person_1-min.jpg" alt="Image" class="img-fluid rounded-circle w-25 mb-4">
							<div class="rate">
								<span class="icon-star text-warning"></span>
								<span class="icon-star text-warning"></span>
								<span class="icon-star text-warning"></span>
								<span class="icon-star text-warning"></span>
								<span class="icon-star text-warning"></span>
							</div>
							<h3 class="h5 text-primary mb-4">Quốc Thiên</h3>
							<blockquote>
								<p>&ldquo;My Team đã mang đến cho chúng tôi các tin tức hay các thông tin bổ ích hằng ngày, giúp chúng tôi theo kịp với nhịp sống hằng ngày.&rdquo;</p>
							</blockquote>
							<p class="text-black-50">Độc giả</p>
						</div>
					</div>

					<div class="item">
						<div class="testimonial">
							<img src="images/person_2-min.jpg" alt="Image" class="img-fluid rounded-circle w-25 mb-4">
							<div class="rate">
								<span class="icon-star text-warning"></span>
								<span class="icon-star text-warning"></span>
								<span class="icon-star text-warning"></span>
								<span class="icon-star text-warning"></span>
								<span class="icon-star text-warning"></span>
							</div>
							<h3 class="h5 text-primary mb-4">Minh Anh</h3>
							<blockquote>
								<p>&ldquo;My Team cho chúng tôi những trải nghiên về các bài báo , với sức sáng tạo không ngừng, my team đã ghi điểm trong lòng tôi một cách hoàn hảo.&rdquo;</p>
							</blockquote>
							<p class="text-black-50">Độc giả</p>
						</div>
					</div>

					<div class="item">
						<div class="testimonial">
							<img src="images/person_3-min.jpg" alt="Image" class="img-fluid rounded-circle w-25 mb-4">
							<div class="rate">
								<span class="icon-star text-warning"></span>
								<span class="icon-star text-warning"></span>
								<span class="icon-star text-warning"></span>
								<span class="icon-star text-warning"></span>
								<span class="icon-star text-warning"></span>
							</div>
							<h3 class="h5 text-primary mb-4">Minh Quốc</h3>
							<blockquote>
								<p>&ldquo;Các bạn đã làm rất tốt, nếu hỏi tôi muốn tìm hiểu tin tức hay và chắc lượng ở đâu tôi sẽ không ngần ngại mà nới đo chính là MY TEAM.&rdquo;</p>
							</blockquote>
							<p class="text-black-50">Độc Giả</p>
						</div>
					</div>

					<div class="item">
						<div class="testimonial">
							<img src="images/person_4-min.jpg" alt="Image" class="img-fluid rounded-circle w-25 mb-4">
							<div class="rate">
								<span class="icon-star text-warning"></span>
								<span class="icon-star text-warning"></span>
								<span class="icon-star text-warning"></span>
								<span class="icon-star text-warning"></span>
								<span class="icon-star text-warning"></span>
							</div>
							<h3 class="h5 text-primary mb-4">Hồng Ánh</h3>
							<blockquote>
								<p>&ldquo;Với các bài báo nổi bật, tin tức luôn được cập nhật hằng ngày phải nói quá đỉnh. My Team đã làm việc quá tốt, mong rằng các bạn cố gắng nhiều hơn nhé !.&rdquo;</p>
							</blockquote>
							<p class="text-black-50">Độc Giả</p>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>


	<div class="section section-4 bg-light">
		<div class="container">
			<div class="row justify-content-center  text-center mb-5">
				<div class="col-lg-5">
					<h2 class="font-weight-bold heading text-primary mb-4">Nơi bạn có thể tìm kiếm các tin tức hay !</h2>
					<p class="text-black-50">Các tin tức luôn được chúng tôi cập nhật một cách nhanh chống, nơi các bạn có thể đọc báo theo ý thích các nhiều thể loại dành cho bạn.</p>
				</div>
			</div>
			<div class="row justify-content-between mb-5">
				<div class="col-lg-7 mb-5 mb-lg-0 order-lg-2">
					<div class="img-about dots">
						<img src="images/hero_bg_3.jpg" alt="Image" class="img-fluid">
					</div>
				</div>
				<div class="col-lg-4">
					<div class="d-flex feature-h">
						<span class="wrap-icon me-3">
							<span class="icon-home2"></span>
						</span>
						<div class="feature-text">
							<h3 class="heading">Kết hợp</h3>
							<p class="text-black-50">Là nơi kết hợp với nhiều tờ báo nổi tiếng.</p>   
						</div>
					</div>

					<div class="d-flex feature-h">
						<span class="wrap-icon me-3">
							<span class="icon-person"></span>
						</span>
						<div class="feature-text">
							<h3 class="heading">Top Website có lượt đọc cao</h3>
							<p class="text-black-50">2 triệu lượt đọc hằng ngày.</p>   
						</div>
					</div>

					<div class="d-flex feature-h">
						<span class="wrap-icon me-3">
							<span class="icon-security"></span>
						</span>
						<div class="feature-text">
							<h3 class="heading">Thông tin chính thống</h3>
							<p class="text-black-50">Các tin tức luôn mang sự chính xác và trung thực.</p>   
						</div>
					</div>
				</div>
			</div>
			<div class="row section-counter mt-5">
				<div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="300">
					<div class="counter-wrap mb-5 mb-lg-0">
						<span class="number"><span class="countup text-primary">3298</span></span>
						<span class="caption text-black-50">Đăng Ký</span>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="400">
					<div class="counter-wrap mb-5 mb-lg-0">
						<span class="number"><span class="countup text-primary">2181</span></span>
						<span class="caption text-black-50">Share</span>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="500">
					<div class="counter-wrap mb-5 mb-lg-0">
						<span class="number"><span class="countup text-primary">9316</span></span>
						<span class="caption text-black-50">Lượt đọc</span>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="600">
					<div class="counter-wrap mb-5 mb-lg-0">
						<span class="number"><span class="countup text-primary">1191</span></span>
						<span class="caption text-black-50">Tác giả tham gia viết bài</span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="section">
		<div class="row justify-content-center footer-cta" data-aos="fade-up">
			<div class="col-lg-7 mx-auto text-center">
				<h2 class="mb-4 ">Hãy trở thành Tác giả cho My Team</h2>
				<p><a href="register.jsp" target="_blank" class="btn btn-primary text-white py-3 px-4">Đăng ký tại đây !</a></p>
			</div> <!-- /.col-lg-7 
		</div> <!-- /.row -->
            </div>
        </div>
	<div class="section section-5 bg-light">
		<div class="container">
			<div class="row justify-content-center  text-center mb-5">
				<div class="col-lg-6 mb-5">
					<h2 class="font-weight-bold heading text-primary mb-4">Thành Viên nổi bật</h2>
					<p class="text-black-50">Đội ngữ sáng tạo và chính của MY TEAM</p>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0">
					<div class="h-100 person">

						<img src="images/person_1-min.jpg" alt="Image"
						class="img-fluid">

						<div class="person-contents">
							<h2 class="mb-0"><a href="#">Nhật ANh</a></h2>
							<span class="meta d-block mb-3">Real Estate Agent</span>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Facere officiis inventore cumque tenetur laboriosam, minus culpa doloremque odio, neque molestias?</p>

							<ul class="social list-unstyled list-inline dark-hover">
								<li class="list-inline-item"><a href="#"><span class="icon-twitter"></span></a></li>
								<li class="list-inline-item"><a href="#"><span class="icon-facebook"></span></a></li>
								<li class="list-inline-item"><a href="#"><span class="icon-linkedin"></span></a></li>
								<li class="list-inline-item"><a href="#"><span class="icon-instagram"></span></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0">
					<div class="h-100 person">

						<img src="images/person_2-min.jpg" alt="Image"
						class="img-fluid">

						<div class="person-contents">
							<h2 class="mb-0"><a href="#">Minh Ngọc</a></h2>
							<span class="meta d-block mb-3">Real Estate Agent</span>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Facere officiis inventore cumque tenetur laboriosam, minus culpa doloremque odio, neque molestias?</p>

							<ul class="social list-unstyled list-inline dark-hover">
								<li class="list-inline-item"><a href="#"><span class="icon-twitter"></span></a></li>
								<li class="list-inline-item"><a href="#"><span class="icon-facebook"></span></a></li>
								<li class="list-inline-item"><a href="#"><span class="icon-linkedin"></span></a></li>
								<li class="list-inline-item"><a href="#"><span class="icon-instagram"></span></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0">
					<div class="h-100 person">

						<img src="images/person_3-min.jpg" alt="Image"
						class="img-fluid">

						<div class="person-contents">
							<h2 class="mb-0"><a href="#">Hoài Bảo</a></h2>
							<span class="meta d-block mb-3">Real Estate Agent</span>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Facere officiis inventore cumque tenetur laboriosam, minus culpa doloremque odio, neque molestias?</p>

							<ul class="social list-unstyled list-inline dark-hover">
								<li class="list-inline-item"><a href="#"><span class="icon-twitter"></span></a></li>
								<li class="list-inline-item"><a href="#"><span class="icon-facebook"></span></a></li>
								<li class="list-inline-item"><a href="#"><span class="icon-linkedin"></span></a></li>
								<li class="list-inline-item"><a href="#"><span class="icon-instagram"></span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

        <jsp:include page="footer.jsp"></jsp:include>

    <!-- Preloader -->
    <div id="overlayer"></div>
    <div class="loader">
    	<div class="spinner-border" role="status">
    		<span class="visually-hidden">Loading...</span>
    	</div>
    </div>


    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/tiny-slider.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/navbar.js"></script>
    <script src="js/counter.js"></script>
    <script src="js/custom.js"></script>
  </body>
  </html>

