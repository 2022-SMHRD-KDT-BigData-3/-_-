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
			<div class="header__top__right__language">
				<img src="img/language.png" alt="">
				<div>English</div>
				<span class="arrow_carrot-down"></span>
				<ul>
					<li><a href="#">Spanis</a></li>
					<li><a href="#">English</a></li>
				</ul>
			</div>
			<div class="header__top__right__auth">
				<a href="Login.html"><i class="fa fa-user"></i> Login</a>
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
                    <div class="col-lg-6 col-md-6">
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
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                <a href="#"><i class="fa fa-pinterest-p"></i></a>
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
						<a href="./main.jsp"><img src="img/logo5.png"> </a>
					</div>
				</div>
				<div class="col-lg-6">
					<nav class="header__menu" style="width: 200%">
						<ul>
							<li class="active"><a href="./main.jsp">Home</a></li>
							<li><a href="./shop_grid2.jsp">DogFood</a></li>
							<li><a href="./product.jsp">Health Products</a></li>
							<li><a href="./blog1.jsp">Health Q&A</a></li>
							<li><a href="./diary.jsp">Health Diary</a></li>
						</ul>
					</nav>
				</div>
			</div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
            <br>
            <br>
        </div>
        <br>
        <br>
        <div class="col-lg-12">
                    <div class="section-title related__product__title">
                        <h2> 강아지 건강정보 </h2>
                    </div>
        </div>
    </header>
    <!-- Header Section End -->

	<!-- Hero Section Begin -->
	<!--<section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>All departments</span>
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
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
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
                    </div> 
                </div>
            </div>
        </div>
    </section> -->
	<!-- Hero Section End -->

	<!-- Breadcrumb Section Begin -->
	<!--<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Blog</h2>
                        <div class="breadcrumb__option">
                            <a href="./main.html">Home</a>
                            <span>Blog</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>  -->
	<!-- Breadcrumb Section End -->

	<!-- Blog Section Begin -->
	<section class="blog spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-5">
					<div class="blog__sidebar">
						<div class="blog__sidebar__item">
							<h4>Categories</h4>
							<ul>
								<li><a href="#"><h5 style="color:green"><b>주의가 필요한 식재료</b></h5></a></li>
								<li><a href="blog2.jsp">예방접종</a></li>
								<li><a href="blog-details_emergency.jsp">응급상황 대처법</a></li>
								<li><a href="blog-details_disease.jsp">가장 흔하게 발생하는 반려견 질병</a></li>
								<li><a href="blog-details_care.jsp">일반적인 피부질환 관리 및 치료법</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-8 col-md-7">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6">
							<div class="blog__item">
								<div class="blog__item__pic">
									<img src="img/blog/blog-5.jpg" alt="">
								</div>
								<div class="blog__item__text">
									<h5>
										<b>양파/대파/마늘/부추</b>
									</h5>
									<p>과다 섭취 시 알리신 성분으로 적혈구가 파괴될 수 있습니다. 적혈구가 파괴되거나 제거되면 용혈성 빈혈이 오고 황달 증상이 나타날 수 있으며 빈혈 증상이 심하지면 수혈을 해야 하는 상황도 발생할수 있습니다. 마늘의 경우 소량이라도 위장 점막 손상을 일으키므로 반드시 배제해야 합니다</p>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6">
							<div class="blog__item">
								<div class="blog__item__pic">
									<img src="img/blog/blog-6.jpg" alt="">
								</div>
								<div class="blog__item__text">
									<h5>
										<b>초콜릿</b>
									</h5>
									<p>초콜릿이 들어 있는 테으브르민 성분을 강아지는 체내에서 분해할 수 없습니다. 만약 초콜릿을 섭취시 중추신경계 부작용으로 즉음어 이를 수 있습니다.</p>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6">
							<div class="blog__item">
								<div class="blog__item__pic">
									<img src="img/blog/blog-7.jpg" alt="">
								</div>
								<div class="blog__item__text">
									<h5>
										<b>닭뼈</b>
									</h5>
									<p>다른 육류의 뼈와 다르게 닭뼈는 세로로 날카롭게 쪼개지기 때문에 식도나 내장이 다칠 수 있어 주의가 필요합니다.</p>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6">
							<div class="blog__item">
								<div class="blog__item__pic">
									<img src="img/blog/blog-8.jpg" alt="">
								</div>
								<div class="blog__item__text">
									<h5>
										<b>포도/건포도</b>
									</h5>
									<p>적은 양의 섭취로도 급성신부전 증세를 일으키는 원인이 될 수 있습니다.</p>
								</div>
							</div>
						</div>						
						<div class="col-lg-12">
							<div class="product__pagination blog__pagination">
								<a href="blog1.jsp">1</a> <a href="blog1_2page.jsp">2</a> <a href="blog1_3page.jsp">3</a> 
							</div> 
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Blog Section End -->

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
