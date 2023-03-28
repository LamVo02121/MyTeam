<%-- 
    Document   : profileEdit
    Created on : Nov 14, 2022, 1:59:22 PM
    Author     : HPs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    
        <title>Profile &mdash;</title>
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
					<h1 class="heading" data-aos="fade-up">Profile</h1>

					<nav aria-label="breadcrumb" data-aos="fade-up" data-aos-delay="200">
						<ol class="breadcrumb text-center justify-content-center">
							<li class="breadcrumb-item "><a href="Home">Trang chủ </a></li>
							<li class="breadcrumb-item active text-white-50" aria-current="page">Profile</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
    <div>
         <h1><a href="ShowProfile">Thông tin tác giả</a> | <a href="ShowNews">Danh sách bài viết</a></h1>
       

    </div>

	<div class="section">
		<div class="container">
			<div class="row">
				
				</div>
				<div class="col-lg-8" data-aos="fade-up" data-aos-delay="200">
                                    <form action="UpdateProfile" method="post">
						<div class="row">
							
                                                    <input hidden="" name="id" value="${p.id}">
                                                        
                                                        <div class="col-6 mb-1">
                                                            <label>Họ và tên</label>
                                                            <input name="fullname" value="${p.fullname}" type="text" class="form-control" placeholder="Họ và tên">
							</div>
                                                             <div class="col-6 mb-2">
                                                                 <label>Ngày sinh</label>
                                                                 <input name="date" value="${p.date}" type="date" class="form-control" placeholder="Ngày Sinh">
							</div>
							<div class="col-6 mb-3">
                                                            <label>Địa chỉ</label>
								<input  name="address" value="${p.address}" type="text" class="form-control" placeholder="Địa Chỉ">
							</div>
							
							<div class="col-6 mb-5">
                                                            <label>Email</label>
								<input name="email" value="${p.email}" type="email" class="form-control" placeholder="EMAIL">
							</div>
							<div class="col-12 mb-6">
                                                            <label>Mô tả bản thân</label>
                                                            <textarea name="about" class="form-control" rows="8">${p.about}</textarea>
								
							</div>
								<div class="col-13">
									<input type="submit" value="Lưu" class="btn btn-primary">
								</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div> <!-- /.untree_co-section -->

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
