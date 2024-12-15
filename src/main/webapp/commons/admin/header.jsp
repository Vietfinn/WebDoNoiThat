<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>

<!-- DangNhap, DangKy -->
<!-- BEGIN TOP BAR -->
<div class="pre-header">
	<div class="container">
		<!-- BEGIN TOP BAR MENU -->
		<div class="col-md-12 col-sm-12 additional-nav">
			<ul class="list-unstyled list-inline pull-right">
				<li><c:choose>
						<c:when test="${sessionScope.account == null}">
							<a href="${pageContext.request.contextPath}/login">Login</a>
								| <a href="${pageContext.request.contextPath}/register">Register</a>
						</c:when>
						<c:otherwise>
							<a href="${pageContext.request.contextPath}/admin/myaccount">${sessionScope.account.fullname}</a>
								| <a href="${pageContext.request.contextPath}/logout">Logout</a>
						</c:otherwise>
					</c:choose></li>
			</ul>
		</div>
		<!-- END TOP BAR MENU -->
	</div>
</div>
<!-- END TOP BAR -->

<!-- BEGIN HEADER -->
<div class="header">
	<div class="container">
		<a class="site-logo" href="${pageContext.request.contextPath}/admin/home"><img
			src="${URL}assets/frontend/layout/img/logos/logo2.png"
			alt="Carft Corner"></a> <a href="javascript:void(0);"
			class="mobi-toggler"><i class="fa fa-bars"></i></a>

		<!-- BEGIN CART -->
		<div class="top-cart-block">
		    <div class="top-cart-info">
		        <c:choose>
		            <c:when test="${sessionScope.cartItemCount != null && sessionScope.cartItemCount > 0}">
		                <a href="${pageContext.request.contextPath}/admin/cart"
		                   class="top-cart-info-count">${sessionScope.cartItemCount} items</a>
		            </c:when>
		            <c:otherwise>
		                <a href="${pageContext.request.contextPath}/admin/cart"
		                   class="top-cart-info-count">0 items</a>
		            </c:otherwise>
		        </c:choose>
		    </div>
		    <i class="fa fa-shopping-cart" style="background-color: black"></i>
		</div>
		<!-- END CART -->

		<!-- BEGIN NAVIGATION -->
		<div class="header-navigation">
			<ul>
				<li class="admin-theme dropdown active"><a
					class="dropdown-toggle" data-toggle="dropdown" href="#">
						Product</a>
					<ul class="dropdown-menu">
						<li><a href="${pageContext.request.contextPath}/admin/products">Product Management</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/categories">Category Management</a></li>
						<li><a href="#">Inventory Management</a></li>
					</ul></li>

				<li class="admin-theme dropdown active"><a
					class="dropdown-toggle" data-toggle="dropdown" href="#">
						Finance</a>
					<ul class="dropdown-menu">
						<li><a href="${URL}admin/payment-method"> Payment Method
						</a></li>
						<li><a href="#">Revenue Management</a></li>
						<li><a href="#">Transaction History</a></li>
					</ul></li>

				<li class="admin-theme dropdown active"><a
					class="dropdown-toggle" data-toggle="dropdown" href="#">
						Content</a>
					<ul class="dropdown-menu">
						<li><a href="#">Blog Management</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/designs">Design Management</a></li>
					</ul></li>

				<li class="admin-theme dropdown active"><a
					class="dropdown-toggle" data-toggle="dropdown" href="#">
						Account</a>
					<ul class="dropdown-menu">
						<li><a href="#">Customer Management</a></li>
						<li><a href="#">Employee Management</a></li>
					</ul></li>
					
				<li><a href="#"> Order</a></li>


				<li><a href="${URL}admin/promote"> Promotion</a></li>

				<li><a
					href="${URL}admin/appointment-calendar"> Appointment</a></li>
			</ul>
		</div>
	</div>
	<!-- END NAVIGATION -->
</div>
<!-- Header END -->