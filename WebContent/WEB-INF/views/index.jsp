<%@ page   pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>

<!-- Basic -->
<html>
	<head>
		<base href="${pageContext.servletContext.contextPath}/">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>Shop Máy Tính</title>
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
                   <button><a href ="ShopMayTinh/updateProfileKH.htm">Tài Khoản: ${tenUser}</a> </button>
                    <button><a href ="ShopMayTinh/changePassword.htm">Đổi mật khẩu</a> </button>
                       
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
    <!-- End Main Top -->

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
                    <a class="navbar-brand" href="user/index.htm"><img src="images/logo1.png" class="logo" alt=""></a>
                </div>
                <!-- End Header Navigation -->

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                        <li class="nav-item "><a class="nav-link" href="ShopMayTinh/user/index.htm">Trang chủ</a></li>
                        <li class="nav-item"><a class="nav-link" href="ShopMayTinh/user/productSell.htm">Sản phẩm</a></li>
                        <li class="nav-item"><a class="nav-link" href="user/about.htm">Thông tin</a></li>
                        
                        
                        <li class="nav-item"><a class="nav-link" href="user/contactus.htm">Liên hệ</a></li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->


                <!-- Start Atribute Navigation -->
                <div class="attr-nav">
                    <ul>
                        <li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
                        <li class="side-menu">
                        <a href="ShopMayTinh/user/cart/show.htm">
						<i class="fa fa-shopping-bag"></i>
                            <span class="badge"></span>
							<p>Giỏ Hàng</p>
					</a></li>
                    </ul>
                </div>
                <!-- End Atribute Navigation -->
            </div>
            <!-- Start Side Menu -->
            <div class="side">                <!-- giỏ hàng -->
                <a href="#" class="close-side"><i class="fa fa-times"></i></a>
                <li class="cart-box">
                    <ul class="cart-list">
                        <li>
                            <a href="#" class="photo"><img src="images/1.jpg" class="cart-thumb" alt="" /></a>
                            <h6><a href="#">Delica omtantur </a></h6>
                            <p>1x - <span class="price">$80.00</span></p>
                        </li>
                        <li>
                            <a href="#" class="photo"><img src="images/2.jpg" class="cart-thumb" alt="" /></a>
                            <h6><a href="#">Omnes ocurreret</a></h6>
                            <p>1x - <span class="price">$60.00</span></p>
                        </li>
                        <li>
                            <a href="#" class="photo"><img src="images/3.jpg" class="cart-thumb" alt="" /></a>
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



    

	    <!-- Start Slider -->
	    <div id="slides-shop" class="cover-slides">
	        <ul class="slides-container">
	            <li class="text-center">
	                <img src="images/a.display1.jpg" alt="">
	                <div class="container">
	                    <div class="row">
	                        <div class="col-md-12">
	                            <h1 class="m-b-20"><Muli>Welcom <br> Shop Vi Tính</Muli></h1>
	                            <p class="m-b-40">Với thế mạnh là những chiếc máy tính mới nhất <br> Chúng tôi cam kết 1 chất lượng hàng đầu.</p>
	                            <p><a class="btn hvr-hover" href="ShopMayTinh/user/productSell.htm">Đặt hàng</a></p>
	                           
	                        </div>
	                    </div>
	                </div>
	            </li>
	            <li class="text-center">
	                <img src="images/a.display2.jpg" alt="">
	                <div class="container">
	                    <div class="row">
	                        <div class="col-md-12">
	                            <h1 class="m-b-20"><Muli>Welcome To <br>  Shop Vi Tính</Muli></h1>
	                            <p class="m-b-40">Với thế mạnh là những chiếc máy tính mới nhất <br> Chúng tôi cam kết 1 chất lượng hàng đầu.</p>
	                            
	                            <p><a class="btn hvr-hover" href="ShopMayTinh/user/productSell.htm">Đặt hàng</a></p>
	                        </div>
	                    </div>
	                </div>
	            </li>
	            <li class="text-center">
	                <img src="images/a.display3.jpg" alt="">
	                <div class="container">
	                    <div class="row">
	                        <div class="col-md-12">
	                            <h1 class="m-b-20"><Muli>Welcome To <br>  Shop Vi Tính</Muli></h1>
	                            <p class="m-b-40">Với thế mạnh là những chiếc máy tính mới nhất <br> Chúng tôi cam kết 1 chất lượng hàng đầu.</p>
	                            <p><a class="btn hvr-hover" href="ShopMayTinh/user/productSell.htm">Đặt hàng</a></p>
	                        </div>
	                    </div>
	                </div>
	            </li>
	        </ul>
	        <div class="slides-navigation">
	            <a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
	            <a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
	        </div>
	    </div>
	    <!-- End Slider -->
	
	   <!-- Start Footer  -->
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
                                    <p><i class="fas fa-map-marker-alt"></i>79 Man Thiện, Quận 9 <br>Thành Phố Hồ Chí Minh<br> Việt Nam </p>
                                </li>
                                <li>
                                    <p><i class="fas fa-phone-square"></i>Điện Thoại: <a href="tel:+84941853368">+84941 853 368</a></p>
                                </li>
                                <li>
                                    <p><i class="fas fa-envelope"></i>Email: <a href="ZunzunnMilktea@gmail.com">ZunzunnMilktea@gmail.com</a></p>
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
        <p class="footer-company">All Rights Reserved. Copyrights &copy; 2020 by <a href="index.html">Zunzunn MilkTea</a> 
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
		
	
	</body>

</html>