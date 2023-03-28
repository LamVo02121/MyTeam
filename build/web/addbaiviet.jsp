<%-- 
    Document   : baiviet
    Created on : Nov 12, 2022, 2:08:47 AM
    Author     : dung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    
        <title>Bài Viết &mdash;</title>
		
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
					<h1 class="heading" data-aos="fade-up">Bài Viết</h1>

					<nav aria-label="breadcrumb" data-aos="fade-up" data-aos-delay="200">
						<ol class="breadcrumb text-center justify-content-center">
							<li class="breadcrumb-item "><a href="Home">Trang chủ </a></li>
							<li class="breadcrumb-item active text-white-50" aria-current="page">Bài Viết</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
    <div>
        <h1><a href="ShowNews">Bài Viết</a></h1>
       

    </div>

	<div class="section">
                
		<div class="container">
			<div class="row">
                                <p>${alert}</p>
				<div class="col-lg-8" data-aos="fade-up" data-aos-delay="200">
                                    <form action="AddNews" method="post">
						<div class="row">
							<div class="col-12 mb-3">
                                                            
                                                            <input name="name" type="text" class="form-control" placeholder="TÊN BÀI VIẾT">
</div>
                                                        
                                                    
							<div class="col-6 mb-3">
                                                             <select name="cater" class="form-control">
                                                                <c:forEach var="x" items="${listDM}" >
                                                                     <option value="${x.id}">${x.name}</option> 
                                                                </c:forEach>
                                                                
																  
                                                            </select>
                                                       </div>
                                                                
							<div class="col-12 mb-3">
								<label>Mô tả</label>
                                                                <textarea name="description" class="form-control" rows="3"></textarea>
                                                           
							</div>
							<div class="col-12 mb-3">
								<label>Chi tiết</label>
								<textarea name="detail" class="form-control" rows="8"></textarea>
                                                           
							</div>
							
                                                                
                                                        <div class="col-6 mb-3">
                                                            <label>Hình ảnh</label>
                                                            <input type="file" class="form-control" name="image" />
                                                         </div>

							<div class="col-12">
                                                            <input type="reset" value="Cancel" class="btn btn-primary">
								<input type="submit" value="Thêm" class="btn btn-primary">
							</div>
						</div>
					</form>
				</div>
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

