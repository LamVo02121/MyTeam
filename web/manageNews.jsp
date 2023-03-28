<%-- 
    Document   : manageNews
    Created on : Nov 19, 2022, 10:45:30 PM
    Author     : HPs
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
        <link rel="stylesheet" href="css/table.css">
    
        <title>Thông Tin Bài Viết &mdash;</title>
    </head>
<body>
<!--Main-->
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
					<h1 class="heading" data-aos="fade-up">Manager</h1>

					<nav aria-label="breadcrumb" data-aos="fade-up" data-aos-delay="200">
						<ol class="breadcrumb text-center justify-content-center">
							<li class="breadcrumb-item "><a href="Home">Trang chủ </a></li>
							<li class="breadcrumb-item active text-white-50" aria-current="page">Manager</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>
<!--Bài Viết-->

<div>
    <h1><a href="Manager">Quản lý danh mục</a> | <a href="manageAccount">Quản lý Account</a>| <a href="ManageNews">Danh sách bài viết</a></h1>
    
    <table>
        
        <h1>Danh sách bài viết</h1>
        <h4>${alert}</h4>
        <!--<a href="AddDM" class="btn btn-primary py-2 px-3"> Thêm </a>-->
        
        <tr>
            <th>ID</th>
                <th>Tên Bài Viết</th>
                <th>Danh Mục</th>
                <th>Ngày Đăng</th>
                <th>Mô Tả</th>
                <th>Chi tiết</th>
                <th>Hình Ảnh</th>
                
        </tr>
        <c:forEach var="x" items="${listN}">
            <tr>
                <td>${x.id}</td>
                    <td>${x.name}</td>
                    <c:forEach var="i" items="${listDM}" >
                        <c:if test="${x.cat_id == i.id}">
                              <td>${i.name}</td>
                        </c:if>

                    </c:forEach>
                    <td>${x.date}</td>
                    <td>${x.description}</td>
                    <td>${x.detail}</td>
                    <td> <img src="images/${x.image}" alt="Image" class="img-fluid p-3"></td>
                <td><a href="DeleteNewsAd?nid=${x.id}" class="btn btn-primary py-2 px-3"> Xóa </a></td>
                
            </tr>
        </c:forEach>
        
        
           
    </table>
   

<!--End Main-->

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