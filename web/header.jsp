<%-- 
    Document   : header
    Created on : Nov 13, 2022, 10:57:19 PM
    Author     : HPs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="site-nav">
    <div class="container">
            <div class="menu-bg-wrap">
                    <div class="site-navigation">
                            <a href="Home" class="logo m-0 float-start">MY TEAM</a>

                            <ul class="js-clone-nav d-none d-lg-inline-block text-start site-menu float-end">
                                    <li class="active"><a href="Home">Trang Chủ </a></li>
                                    <li class="has-children">
                                            <a href="Categories?sid=1">Danh Mục</a>
                                            <ul class="dropdown">

                                                <c:forEach var="x" items="${listDM}" >
                                                    <li><a href="Categories?sid=${x.id}">${x.name}</a></li>
                                                </c:forEach>

                                            </ul>
                                    </li>                                                
                                    <li><a href="video.jsp">Video</a></li>
                                    <c:if test="${sessionScope.user.isAdmin == 1}">
                                        <li><a href="Manager">Manager</a></li>
                                    </c:if>
                                    <c:if test="${sessionScope.user != null}">
                                        <li><a href="ShowProfile?uid=${sessionScope.user.id}">Welcome ${sessionScope.user.username}</a></li>
                                        <li><a href="Logout">Đăng xuất</a></li>
                                    </c:if>
                                    <c:if test="${sessionScope.user == null}">
                                        <li><a href="login.jsp">Đăng nhập</a></li>
                                    </c:if>
                                    
                            </ul>

                            <a href="#" class="burger light me-auto float-end mt-1 site-menu-toggle js-menu-toggle d-inline-block d-lg-none" data-toggle="collapse" data-target="#main-navbar">
                                    <span></span>
                            </a>

                    </div>
            </div>
    </div>
</nav>