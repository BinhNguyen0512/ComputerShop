<%@ page  pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Đổi mật khẩu</title>
		
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

			div.changePassword{
			 border-radius: 5px;
			 background-color: #f2f2f2;
			 padding: 20px;
			 width: 500px;
			 margin-left:500px;
			}
			div.changePassword input{
			  width: 100%;
			  padding: 12px 20px;
			  margin: 8px 0;
			  box-sizing: border-box;
			}
			div.changePassword button{
		      margin-left: 100px;
			   width: 100%;
			  background-color: #4CAF50;
			  color: white;
			  padding: 14px 20px;
			  margin: 8px 0;
			  border: none;
			  border-radius: 4px;
			  cursor: pointer; 
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
		<div class = "changePassword">
			<form:form action="ShopMayTinh/changePassword.htm" modelAttribute="USER" method="POST">
				<h1 style = "margin-left: 150">Đổi Mật Khẩu</h1>

				
				<div>
					<label>Password</label>
					<form:input type = "password"  path="password" />
				</div>
				
			
				<form:errors  path="password" style = "color: red"/>
				
				<div>
					<label>Confirm Password</label>
					 <input type="password" name="password1" />
				</div>
				
				<form:button >Cập Nhật</form:button>

			</form:form>
		</div>
	</body>
</html>