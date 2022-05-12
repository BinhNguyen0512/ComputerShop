<%@ page   pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
	<<base href="${pageContext.servletContext.contextPath}/">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>Show Cart</title>
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
                        <a href="user/cart1.htm">
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
    

		  
   <!-- Start Cart  -->
    <div class="cart-box-main">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="table-main table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Hình Ảnh</th>
                                    <th>Tên Sản Phẩm</th> 
                                    <th>Thương Hiệu</th>
                                    <th>Giá</th>
                                    <th>Số Lượng</th>
                                    <th>Tổng Cộng</th>
                                    <th>Bỏ Chọn</th>
                                </tr>
                            </thead>
							 <tbody>
                            <c:forEach  var="u" items="${sessionScope.cart}"> 
	                           <c:forEach  var="sp" items="${sessionScope.detail}"> 
	                                
	                            
	                             <c:if test="${sp.key==u.key}"> 
	                           
	                               
	                                 <tr>
	                              
	                                    <td class="thumbnail-img">
	                                        <a href="#">
	                                        
										<img class="img-fluid" img src="images/${sp.value.hinhAnh}" alt="${sp.value.hinhAnh}" />
									</a>
	                                    </td>
	                                    <td class="name-pr">
	                                        <a href="#">
												${sp.value.tenSP}
									</a>
	                                    </td>
	                                    <td>
	                                    	${sp.value.thuongHieu}
	                                    </td>
	                                    <td class="price-pr">
	                                        <p>${sp.value.donGia}</p>
	                                    </td>
	                                  
	                                     <!-- <td class="quantity-box"><input type="number" size="4" value="1" min="0" step="1" class="c-input-text qty text"></td> -->
	                                    <td class="quantity-box">${u.value}</td>
	                                    <td class="total-pr">
	                                        <p> ${u.value*sp.value.donGia}</p>
	                                    </td>
	                                    <td class="remove-pr">
	                                        <a href="ShopMayTinh/user/cart/delete/${u.key}.htm">
												Xóa
											</a>
	                                    </td>
	                                </tr>
	                               </c:if>
	                                </c:forEach>
                                </c:forEach>
                                
                               
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="row my-5">
             <!--    <div class="col-lg-6 col-sm-6">
                    <div class="coupon-box">
                        <div class="input-group input-group-sm">
                            <input style=" padding: 20px 15px;" class="form-control" placeholder="Nhập địa chỉ giao hàng" aria-label="Coupon code" type="text">
                            <div class="input-group-append">
                                <button class="btn btn-theme" type="button">Xác Nhận</button>
                            </div>
                        </div>
                    </div>
                </div> -->
                <div class="col-lg-6 col-sm-6" style="margin-left:150px">
                    <div class="update-box" >
                 <a href="user/cart1.htm"><input   value="Cập nhập giỏ hàng" type="submit"></a>
                    </div>
                </div>
            </div>

            <div class="row my-5">
                <div class="col-lg-8 col-sm-12"></div>
                <div class="col-lg-4 col-sm-12">
                    <div class="order-box">
                        <h3>Đơn hàng</h3>
                        
                        
                        <hr class="my-1">
                       
                        <div class="d-flex gr-total">
                            <h5>Tổng Cộng</h5>
                            
                            <div class="ml-auto h5"> ${tongGia} </div>
                        </div>
                        <hr> </div>
                </div>
                <div class="col-12 d-flex shopping-box"><a href="ShopMayTinh/user/checkout.htm" class="ml-auto btn hvr-hover" onclick="myFunction()">Mua Hàng</a> </div>
            </div>

        </div>
    </div>
    
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
<script type="text/javascript">
function myFunction(){
	alert("Đặt Hàng Thành Công")
}

</script>
</html>