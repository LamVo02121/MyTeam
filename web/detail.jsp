<%-- 
    Document   : detail
    Created on : Nov 13, 2022, 10:37:03 PM
    Author     : HPs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
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

	<title>Property &mdash; Free Bootstrap 5 Website Template by Untree.co</title>
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
	<div class="hero page-inner overlay" style="background-image: url('images/hero_bg_3.jpg');">

		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-9 text-center mt-5">
<!--					<h1 class="heading" data-aos="fade-up">5232 California AVE. 21BC</h1>-->

					<nav aria-label="breadcrumb" data-aos="fade-up" data-aos-delay="200">
						<ol class="breadcrumb text-center justify-content-center">
							<li class="breadcrumb-item "><a href="Home">Trang chủ </a></li>
							<li class="breadcrumb-item "><a href="#">Chi tiết</a></li>
							
						</ol>
					</nav>


				</div>
			</div>


		</div>
	</div>


	<div class="section">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-lg-6">
					<div class="img-property-slide-wrap">
						<div class="img-property-slide">
							<img src="images/${detail.image}" alt="Image" class="img-fluid">
							
						</div>
					</div>
				</div>
				<div class="col-lg-5">
					<h2 class="heading text-primary">${detail.name}</h2>
					<c:forEach var="i" items="${listU}" >
                                            <c:if test="${detail.user_id == i.id}">
                                                <span class="d-block mb-2 text-black-50">${detail.date}  Tác Giả : ${i.username} </span>

                                            </c:if>

                                        </c:forEach>
					<p class="text-black-50">${detail.detail}</p>
					
<!--					<div class="d-block agent-box p-5">
						<div class="img mb-4">
							<img src="images/person_2-min.jpg" alt="Image" class="img-fluid">
						</div>
						<div class="text">
							<h3 class="mb-0">Alicia Huston</h3>
							<div class="meta mb-3">Real Estate</div>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione laborum quo quos omnis sed magnam id ducimus saepe</p>
							<ul class="list-unstyled social dark-hover d-flex">
								<li class="me-1"><a href="#"><span class="icon-instagram"></span></a></li>
								<li class="me-1"><a href="#"><span class="icon-twitter"></span></a></li>
								<li class="me-1"><a href="#"><span class="icon-facebook"></span></a></li>
								<li class="me-1"><a href="#"><span class="icon-linkedin"></span></a></li>

							</ul>
						</div>
					</div>-->
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