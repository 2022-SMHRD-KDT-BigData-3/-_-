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
						<h2>개 인플루엔자</h2>
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
						<img src="img/blog/vaccination-4.jpg"
							class="rounded mx-auto d-block" alt="">
						<h3 style = "color : #7fad39">질병정의</h3>
						<hr>
						<p>개 인플루엔자(canine influenza, dog flu)는 개과동물에서 발생하는 인플루엔자입니다.<br> 개 인플루엔자는 말인플루엔자 바이러스인 H3N8 같은 
						influenza virus A의 변종에 의해<br> 발생하며 개에서 질병을 유발한다는 것을 2004년에 밝혀냈습니다. 
						이 바이러스에 노출된적이 없기때문에 개에서 자연적 면역력은 없습니다.<br> 따라서 개에서 빠르게 이 질환이 전파되었습니다. 
						<br>개 인플루엔자는 미국에서 지역적으로 개가 있는 곳에서 풍토병 양상을 보였습니다.<br> 이 질환은 높은 이환율을 보이지만, 치사율은 낮습니다.</p>
						<br>
						<h3 style = "color : #7fad39">질병증상</h3>
						<hr>
						<p>개 인플루엔자의 증상은 사람의 독감 및 개들의 전염성 기관지염(켄넬 코프)과 비슷합니다.<br> 감염된 개들은 기침을 하며 콧물과 발열이 동반됩니다.
						기력저하, 식욕저하도 나타나며 눈곱이 많아집니다. 개에 따라 증상이 가벼울 수도 있고 심할 수도 있습니다 증상이 없는 경우도 있으며 무증상이어도 전염이 가능합니다.
						감염 후 2~8일간 잠복기가 있으며 대부분의 경우 증상이 시작된 후 2~3주 이내에 회복합니다. 하지만 일부 개들에서는 2차 세균 감염이 일어나 증상이 심해지고 폐렴으로 이어질 수 있습니다.
						다른 종류의 호흡기 감염 질환들과 증상이 유사해서 증상만으로는 확진할 수 없습니다.</p>
						<br>
						<h3 style = "color : #7fad39">질병예방</h3>
						<hr>
						<p>예방을 위해 H3N2 개 인플루엔자 백신을 접종할 수 있습니다. 보호소나 사육 시설 등에서 단체 생활을 하는 개들에게 발병할 위험이 높습니다.
						반려견 호텔이나 유치원, 미용실, 공원 등을 방문하는 개들도 감염될 수 있습니다. 여행을 자주 하거나 대회에 출전하는 개들도 감염될 확률이 높습니다. 
						감염 위험이 높은 개들에게는 백신 접종이 권장됩니다.</p>
						<br>
						<h3 style = "color : #7fad39">질병치료</h3>
						<hr>
						<p>감염된 개들은 추가 전파를 막기 위해 4주간 격리해야 합니다.
						대부분의 바이러스 감염과 마찬가지로 개 인플루엔자의 치료는 보조적입니다. 따뜻하고 건조한 환경에서 영양과 수분 보충에 신경 써서 
						면역 반응이 잘 일어나도록 도와주는 것이 좋습니다. 주로 2~3주 이내에 증상이 완화됩니다.
						2차 세균 감염이 일어났다면 항생제를 투여하게 됩니다. 폐렴으로 이어졌다면 수액 요법 및 입원 치료가 필요할 수도 있습니다.</p>

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