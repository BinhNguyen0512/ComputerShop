<%@ page  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>List Profile KH</title>
		<base href="${pageContext.servletContext.contextPath}/">

		

	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	
	    <!-- Mobile Metas -->
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	
	    <!-- Site Metas -->
	    <meta name="keywords" content="">
	    <meta name="description" content="">
	    <meta name="author" content="">
	
	    <!-- Site Icons -->
	    <link rel="shortcut icon" href="images/iconlogo.png" type="image/x-icon">
	    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
	
	    <!-- Bootstrap CSS -->
	    <link rel="stylesheet" href="css/bootstrap.min.css">
	    <!-- Site CSS -->
	    <link rel="stylesheet" href="css/style.css">
	    <!-- Responsive CSS -->
	    <link rel="stylesheet" href="css/responsive.css">
	    <!-- Custom CSS -->
	    <link rel="stylesheet" href="css/custom.css">
	
	    <!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	    <![endif]-->
		
		
		<style>
		div.ListChiTietDH
		{
			width:80%;
			margin-left: 400px;
			margin-top: 100px;
		}
		div.ListChiTietDH th
		{
		  background-color: #4CAF50;
	  	  color: white;
		}

		</style>
	</head>
	<body>
	
	
			 <!-- Start Main Top -->
	    <div class="main-top">     <!-- //đầu trang -->
	        <div class="container-fluid">
	            <div class="row">
	                <div class="col-lg-6 col-md-8 col-sm-12 col-xs-12">
	                    
	                   <img style="width: 100px;height:100px;"  alt="" src="images/A.logoByD.jpg">
	                </div>
	                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
	                    <div class="login-box">
	                     
	                         
	                        <th>   <button><a href ="ShopMayTinh/login.htm">Đăng Xuất</a></button></th>
	                   <button><a href ="ShopMayTinh/updateProfileNV.htm">Tài Khoản: ${tenUser}</a> </button>
	                    <button><a href ="ShopMayTinh/changePassword.htm">Đổi mật khẩu</a> </button>
	                       
	                    </div>
	                    
	                </div>
	            </div>
	        </div>
	    </div>
	    <!-- End Main Top -->
	
	    <header class="main-header">   <!--  Menu -->
        <!-- Start Navigation -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
            <div class="container">
                <!-- Start Header Navigation -->
                <div class="navbar-header">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                    <a class="navbar-brand" href="user/index.htm"><img src="images/logo1.png" class="logo" alt=""></a>
                </div>
                <!-- End Header Navigation -->

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                        <li class="nav-item "><a class="nav-link" href="ShopMayTinh/ListNV.htm">Nhân Viên</a></li>
                        <li class="nav-item"><a class="nav-link" href="ShopMayTinh/ListKH.htm">Khách Hàng</a></li>
                        <li class="nav-item"><a class="nav-link" href="ShopMayTinh/admin/typeProduct/ListLoaiSP.htm">Loại Sản Phẩm</a></li>  
                        <li class="nav-item"><a class="nav-link" href="ShopMayTinh/admin/product/ListSP.htm">Sản phẩm</a></li>
                        <li class="nav-item"><a class="nav-link" href="ShopMayTinh/ListDH.htm">Đơn Hàng</a></li>
                        <li class="nav-item"><a class="nav-link" href="ShopMayTinh/ListChiTietDH.htm">Chi Tiết ĐH</a></li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->


                <!-- Start Atribute Navigation -->
                <div class="attr-nav">
        
                </div>
                <!-- End Atribute Navigation -->
            </div>
            <!-- Start Side Menu -->
            <div class="side">                <!-- giỏ hàng -->
                <a href="#" class="close-side"><i class="fa fa-times"></i></a>
                <li class="cart-box">
                    <ul class="cart-list">
                        <li>
                            <a href="#" class="photo"><img src="images/img-pro-01.jpg" class="cart-thumb" alt="" /></a>
                            <h6><a href="#">Delica omtantur </a></h6>
                            <p>1x - <span class="price">$80.00</span></p>
                        </li>
                        <li>
                            <a href="#" class="photo"><img src="images/img-pro-02.jpg" class="cart-thumb" alt="" /></a>
                            <h6><a href="#">Omnes ocurreret</a></h6>
                            <p>1x - <span class="price">$60.00</span></p>
                        </li>
                        <li>
                            <a href="#" class="photo"><img src="images/img-pro-03.jpg" class="cart-thumb" alt="" /></a>
                            <h6><a href="#">Agam facilisis</a></h6>
                            <p>1x - <span class="price">$40.00</span></p>
                        </li>
                        <li class="total">
                            <a href="cart.html" class="btn btn-default hvr-hover btn-cart">Xem Giỏ Hàng</a>
                            <span class="float-right"><strong>Total</strong>: $180.00</span>
                        </li>
                    </ul>
                </li>
            </div>
            <!-- End Side Menu -->
        </nav>
        <!-- End Navigation -->
    </header>
		<div class = "ListChiTietDH">
			<table border="1" style="width:70%">
				<tr>
					<th>Mã Đơn Hàng</th>
					<th>Mã Sản Phẩm</th>
					<th>Số Lượng</th>

				</tr>
				
				
				<c:forEach var="u" items="${ctdh}"> 
					<tr>
						<td>${u.maDH}</td> 
						<td>${u.sanPham.maSP}</td>
						<td>${u.soLuong}</td>

					</tr>
					
				</c:forEach>
				

				
			</table>
		</div>
	</body>
</html>