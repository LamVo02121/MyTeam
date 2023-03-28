<%-- 
    Document   : danhmuc
    Created on : Nov 12, 2022, 12:52:25 AM
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

	<title>Danh mục &mdash;</title>
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

	<div class="hero page-inner overlay" style="background-image: url('images/hero_bg_1.jpg');">

		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-9 text-center mt-5">
					<h1 class="heading" data-aos="fade-up">Danh mục</h1>

					<nav aria-label="breadcrumb" data-aos="fade-up" data-aos-delay="200">
						<ol class="breadcrumb text-center justify-content-center">
							<li class="breadcrumb-item "><a href="Home">Trang chủ</a></li>
							<li class="breadcrumb-item active text-white-50" aria-current="page">Danh mục</li>
                                                        <li class="breadcrumb-item active text-white-50" aria-current="page">${nameDM}</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
        
            <div class="section section-properties">   
                <div class="container">
                    <div class="col-lg-6">
<!--                        <h2 class="font-weight-bold text-primary heading">Thoi Trang</h2>-->
                        <h2 class="font-weight-bold text-primary heading">${nameDM}</h2>
                    </div>
                    <div class="row">
                        <c:forEach var="x" items="${list1}" >
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
                                    <div class="property-item mb-30">

                                            <a href="property-single.html" class="img">
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
                                                            
                                                            <span class="d-block mb-2 text-black-50">${x.date}</span>
                                                            <span class="city d-block mb-3">${x.description}</span>

                                                            <a href="Detail?pid=${x.id}" class="btn btn-primary py-2 px-3">Xem Thêm </a>
                                                    </div>
                                            </div>
                                    </div> 
                            </div>
                        </c:forEach>
                            
                    </div>
                    
                </div>
            </div>
                                           
        
<!--			<div class="row align-items-center py-5">
				<div class="col-lg-3">
					Pagination (1 of 10)
				</div>
				<div class="col-lg-6 text-center">
					<div class="custom-pagination">
						<a href="#">1</a>
						<a href="#" class="active">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a>
					</div>
				</div>
			</div>-->
		

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
