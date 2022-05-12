<%@ page   pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
	<head>
		<base href="${pageContext.servletContext.contextPath}/">
   	<meta charset="utf-8">
	<title>Profile</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/logoMayTinh.jpg" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/logoMayTinh.jpg">

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

			div.profile{
			 border-radius: 5px;
			 background-color: #f2f2f2;
			 padding: 20px;
			 width: 500px;
			 margin-left:500px;
			 margin-bottom:50px;
			 margin-top:50px;
			}
			div.profile input{
			  width: 100%;
			  padding: 12px 20px;
			  margin: 8px 0;
			  box-sizing: border-box;
			}
			div.profile button{
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
		                     		
		                           
		                 
		                        
		                    </div>
		                    
		                </div>
		            </div>
		        </div>
		    </div>
		    
		      <!-- Start Main Top -->
    <header class="main-header">   <!--  Menu -->
        <!-- Start Navigation -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
            <div class="container">
                <!-- Start Header Navigation -->
                <div class="navbar-header">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                    <a class="navbar-brand" href="TRASUA/index.htm"><img src="images/logo1.png" class="logo" alt=""></a>
                </div>
                <!-- End Header Navigation -->

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
<!--                         <li class="nav-item "><a class="nav-link" href="ShopMayTinh/user/index.htm">Trang chủ</a></li>
                        <li class="nav-item"><a class="nav-link" href="ShopMayTinh/user/productSell.htm">Sản phẩm</a></li>
                        <li class="nav-item"><a class="nav-link" href="ShopMayTinh/about.htm">Thông tin</a></li>
                        
                        
                        <li class="nav-item"><a class="nav-link" href="ShopMayTinh/contactus.htm">Liên hệ</a></li> -->
                    </ul>
                </div>
                <!-- /.navbar-collapse -->


                <!-- Start Atribute Navigation -->
                
                <!-- End Atribute Navigation -->
            </div>
            <!-- Start Side Menu -->
         
            <!-- End Side Menu -->
        </nav>
        <!-- End Navigation -->
		<div class = "profile">
			<form:form action="ShopMayTinh/profileKH.htm" modelAttribute="KHACHHANG" method="POST">
				

				<div>
					<h1 style="margin-left: 120px">Thông tin khách hàng</h1>					
								
					<label>Họ và Tên</label>
					<form:input path="tenKH" />

				</div>

				
				
				<form:errors  path="tenKH" style = "color: red"/>
				
				<div>
					<label>Số Điện Thoại</label>
					<form:input path="sdt" />
				</div>
				
			
				<form:errors  path="sdt" style = "color: red"/>
				
				<div>
					<label>Địa chỉ</label>
					<form:input path="diaChi" />
				</div>
				
			
				<form:errors  path="diaChi" style = "color: red"/>
				
				<p style="color: red">
					${message}
				</p>
				<form:button >Cập Nhập</form:button>
				
			</form:form>
		</div>
	</body>
	
	  <footer>
        <div class="footer-main">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-top-box">
                            <h3>Thời gian hoạt động</h3>
                            <ul class="list-time">
                                <li>Thứ 2 - Thứ 7: 8.00am to 10.00pm</li> <li>Chủ Nhật: <span> 8.00am to 10.30pm</span></li> 
                            </ul>
                        </div>
                    </div>
                    <!-- <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-top-box">
                            <h3>Newsletter</h3>
                            <form class="newsletter-box">
                                <div class="form-group">
                                    <input class="" type="email" name="Email" placeholder="Email Address*" />
                                    <i class="fa fa-envelope"></i>
                                </div>
                                <button class="btn hvr-hover" type="submit">Submit</button>
                            </form>
                        </div>
                    </div> -->
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-link-contact">
                            <h4>Liên hệ</h4>
                            <ul>
                                <li>
                                    <p><i class="fas fa-map-marker-alt"></i>97 Man Thiện, Quận 9 <br>Thành Phố Hồ Chí Minh<br> Việt Nam </p>
                                </li>
                                <li>
                                    <p><i class="fas fa-phone-square"></i>Điện Thoại: <a href="tel:0981376700">0981376700</a></p>
                                </li>
                                <li>
                                    <p><i class="fas fa-envelope"></i>Email: <a href="manhbinh99@gmail.com">manhbinh99@gmail.com</a></p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-widget">
                            <h4>Câu chuyện Shop vi tính</h4>
                            <p>Chất như nước cất.</p> 
                            <p>Chỉ có ở chúng tôi. </p>                          
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-link">
                            <h4>Thông tin</h4>
                            <ul>
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Customer Service</a></li>
                                <li><a href="#">Our Sitemap</a></li>
                                <li><a href="#">Terms &amp; Conditions</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                                <li><a href="#">Delivery Information</a></li>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-top-box">
                            <h3>Mạng xã hội</h3>
                            <p> </p>
                            <ul>
                                <li><a href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-google-plus" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-pinterest-p" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-whatsapp" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- End Footer  -->

    <!-- Start copyright  -->
      <div class="footer-copyright">
        <p class="footer-company">All Rights Reserved. Copyrights &copy; 2020 by <a href="index.html">Bình Đăng</a> 
    </div>
    <!-- End copyright  -->

    <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

    <!-- ALL JS FILES -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/jquery.superslides.min.js"></script>
    <script src="js/bootstrap-select.js"></script>
    <script src="js/inewsticker.js"></script>
    <script src="js/bootsnav.js."></script>
    <script src="js/images-loded.min.js"></script>
    <script src="js/isotope.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/baguetteBox.min.js"></script>
    <script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>
    <script src="js/custom.js"></script>
</html>