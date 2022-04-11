<%@page import="Model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>건강하개 지켜줄게</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
</head>
<script type="text/javascript">
</script>
<body>

<!-- 시원이가 바꿔야할 세션 부분 -->
	<% 
	MemberDTO info = (MemberDTO)session.getAttribute("info");

	%>
	<!-- 여기까지 -->


	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Humberger Begin -->
	<div class="humberger__menu__overlay"></div>
	<div class="humberger__menu__wrapper">
		<div class="humberger__menu__logo">
			<a href="#"><img src="img/logo5.png" alt=""></a>
		</div>
		<div class="humberger__menu__cart">
			<ul>
				<li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
				<li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
			</ul>
			<div class="header__cart__price">
				item: <span>$150.00</span>
			</div>
		</div>
		<div class="humberger__menu__widget">
			<!--<div class="header__top__right__language">
				<img src="img/language.png" alt="">
				<div>English</div>
				<span class="arrow_carrot-down"></span>
				<ul>
					<li><a href="#">Spanis</a></li>
					<li><a href="#">English</a></li>
				</ul>
			</div>  -->
			<div class="header__top__right__auth">
				<a href="Login.jsp"><i class="fa fa-user"></i> Login</a>
			</div>
		</div>
		<nav class="humberger__menu__nav mobile-menu">
			<ul>
				<li class="active"><a href="./main.html">Home</a></li>
				<li><a href="./shop-grid.html">Shop</a></li>
				<li><a href="#">Pages</a>
					<ul class="header__menu__dropdown">
						<li><a href="./shop-details.html">Shop Details</a></li>
						<li><a href="./shoping-cart.html">Shoping Cart</a></li>
						<li><a href="./checkout.html">Check Out</a></li>
						<li><a href="./blog-details.html">Blog Details</a></li>
					</ul></li>
				<li><a href="./blog.html">Blog</a></li>
				<li><a href="./contact.html">Contact</a></li>
			</ul>
		</nav>
		<div id="mobile-menu-wrap"></div>
		<div class="header__top__right__social">
			<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
				class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a>
			<a href="#"><i class="fa fa-pinterest-p"></i></a>
		</div>
		<div class="humberger__menu__contact">
			<ul>
				<li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
				<li>Free Shipping for all Order of $99</li>
			</ul>
		</div>
	</div>
	<!-- Humberger End -->

	<!-- Header Section Begin -->
	<header class="header">
		<div class="header__top">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="header__top__left">
							<ul>
								 <!-- 시원이가 바꿔야할 세션 부분 -->
                            <%if (info!=null){ %>
                                <li><i class="fa fa-envelope"></i> <%=info.getId()+"님, 안녕하세요" %></li>
                                <%} %>
                                
                            <!-- 여기까지 -->
							</ul>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="header__top__right">
							<div class="header__top__right__social">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-linkedin"></i></a> <a href="#"><i
									class="fa fa-pinterest-p"></i></a>
							</div>
							<div class="header__top__right__auth">
								<!-- 시원이가 바꿔야할 세션 부분 -->
								<% if(info==null){ %>
                                <a href="Login.jsp"><i class="fa fa-user"></i> Login</a>
                                <%    } %>
                                <!-- 여기까지 -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="./main.jsp"><img src="img/logo5.png" > </a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu" style="width:120%">
                        <ul>
                            <li><a href="./main.jsp">Home</a></li>
                            <li><a href="./shop_grid2.jsp">DogFood</a></li>
                            <li><a href="./product.jsp">Health Products</a></li>
                            <li class="active"><a href="./blog1.jsp">Health Q&A</a></li>
                            <li><a href="./diary.jsp">Health Diary</a></li>  
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                <!-- 장바구니, 찜목록 있던 자리 -->
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

	<!-- Hero Section Begin -->
	<section class="hero hero-normal">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<!--<div class="hero__categories">
						<div class="hero__categories__all">
							<i class="fa fa-bars"></i> <span>All departments</span>
						</div>
						<ul>
							<li><a href="#">Fresh Meat</a></li>
							<li><a href="#">Vegetables</a></li>
							<li><a href="#">Fruit & Nut Gifts</a></li>
							<li><a href="#">Fresh Berries</a></li>
							<li><a href="#">Ocean Foods</a></li>
							<li><a href="#">Butter & Eggs</a></li>
							<li><a href="#">Fastfood</a></li>
							<li><a href="#">Fresh Onion</a></li>
							<li><a href="#">Papayaya & Crisps</a></li>
							<li><a href="#">Oatmeal</a></li>
							<li><a href="#">Fresh Bananas</a></li>
						</ul>
					</div>  -->
				</div>
				<div class="col-lg-9">
					<!-- <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <div class="hero__search__categories">
                                    All Categories
                                    <span class="arrow_carrot-down"></span>
                                </div>
                                <input type="text" placeholder="What do yo u need?">
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>+65 11.188.888</h5>
                                <span>support 24/7 time</span>
                            </div>
                        </div>
                    </div> -->
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- Blog Details Hero Begin -->
	<section class="blog-details-hero set-bg"
		data-setbg="img/blog/details/details-hero.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="blog__details__hero__text">
						<br>
						<h2>광견병</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Blog Details Hero End -->

	<!-- Blog Details Section Begin -->
	<section class="blog-details spad">
		<div class="container">
			<div class="row">
				<div class="d-flex justify-content-center">
					<div class="blog__details__text">
						<img src="img/blog/vaccination-5.jpg"
							class="rounded mx-auto d-block" alt="">
						<h3 style = "color : #7fad39">질병정의</h3>
						<hr>
						<p>광견병은 사람을 포함한 모든 포유류에 감염 될 위험성이 있는 질병입니다.
						광견병 바이러스를 보유하고 있는 동물에게 물림으로써 감염되는 경우가 많습니다.
						발병해 버리면 치명적인 뇌염으로 인한 100%에 가까운 확률로 사망에 이르게 됩니다.
						현재는 법적으로 의무화 되어 있어 광견병 예방 접종은 1년에 2번, 매년 필수로 강아지 광견병 예방접종을 해주어야 합니다.</p>
						<br>
						<h3 style = "color : #7fad39">질병증상</h3>
						<hr>
						<p>강아지가 광견병에 감염된 후 잠복기는 일반적으로 1~2개월로 알려져 있습니다.
						초기증상으로는 비정상적인 행동, 과민해지는 등 행동의 이상을 확인할 수 있습니다.
						그후의 증상은 유형에 따라 다르지만 극도의 흥분상태로 공격적인 행동과 전신마비, 또는 혼수상태 등이 있습니다.
						일단 증상이 나타나게 되면 치료가 불가능해 거의 사망에 이르게 됩니다.</p>
						<br>
						<h3 style = "color : #7fad39">질병예방</h3>
						<hr>
						<p>생후 3개월 이상의 강아지는 30일 이내에 광견병 예방 주사를 맞도록 해야합니다.
						그 이후에는 매년 1회 정기적으로 접종이 필수입니다.
						매년 봄, 가을에 지자체에서 강아지 무료 광견병 접종을 실시하고 있습니다.
						동물등록을 하지 않은 반려견은 무료 백신 접종 지원이 제한된다고 합니다.</p>
						<br>
						<h3 style = "color : #7fad39">질병치료</h3>
						<hr>
						<p>광견병은 치료가 불가능합니다. 광견병 진단을 받는 즉시 안락사가 원칙입니다.</p>
					</div>

				</div>
			</div>
			<div class="blog__item__text">
				<a href="blog1.jsp" class="blog__btn"><span class="arrow_left"></span> Back</a>
			</div>
		</div>
	</section>
	<!-- Blog Details Section End -->


	<!-- Related Blog Section End -->

	<!-- Footer Section Begin -->
	<!--     <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./main.html"><img src="img/logo5.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Address: 60-49 Road 11378 New York</li>
                            <li>Phone: +65 11.188.888</li>
                            <li>Email: hello@colorlib.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>Useful Links</h6>
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">About Our Shop</a></li>
                            <li><a href="#">Secure Shopping</a></li>
                            <li><a href="#">Delivery infomation</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Our Sitemap</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Who We Are</a></li>
                            <li><a href="#">Our Services</a></li>
                            <li><a href="#">Projects</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Innovation</a></li>
                            <li><a href="#">Testimonials</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <h6>Join Our Newsletter Now</h6>
                        <p>Get E-mail updates about our latest shop and special offers.</p>
                        <form action="#">
                            <input type="text" placeholder="Enter your mail">
                            <button type="submit" class="site-btn">Subscribe</button>
                        </form>
                        <div class="footer__widget__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text"><p>Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.</p></div>
                        <div class="footer__copyright__payment"><img src="img/payment-item.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
    </footer> -->
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>



</body>

</html>