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
		</div>
	</header>
	<!-- Header Section End -->

	<!-- Hero Section Begin -->
	<section class="hero">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="hero__categories">
						<div class="hero__categories__all">
							<i class="fa fa-bars"></i> <span>DogFood</span>
						</div>
						<ul>
							<li><a href="#">Absolute</a></li>
							<li><a href="#">Acana</a></li>
							<li><a href="#">Anf</a></li>
							<li><a href="#">Bellfor</a></li>
							<li><a href="#">DogLine</a></li>
							<li><a href="#">Eaglevet</a></li>
							<li><a href="#">Famina</a></li>
							<li><a href="#">HomeAndDog</a></li>
							<li><a href="#">Iskhan</a></li>
							<li><a href="#">NowFresh</a></li>
							
							<a href="shop_grid2.jsp">More...</a>
							<!--<li><a href="#">Orijen</a></li>
                            <li><a href="#">ProBest</a></li>
                            <li><a href="#">RoyalCanin</a></li>
                            <li><a href="#">Wealtz</a></li>
                            <li><a href="#">NaturalBalance</a></li>
                            <li><a href="#">NaturalCore</a></li>
                            <li><a href="#">ZiwiPets</a></li>  -->

						</ul>
					</div>
				</div>
				<div class="col-lg-9">
					<!-- 검색창 -->
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
                    </div>-->
					<div class="hero__item set-bg" data-setbg="img/main.jpg">
						<div class="hero__text">
							<span>건강하개 지켜줄개</span>
							<h2>
								HEALTHY DOG LIFE <br />FOREVER
							</h2>
							<p>Health Information for My Dog</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- Featured Section Begin -->
	<section class="featured spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>DogFood</h2>
					</div>
					<div class="featured__controls">
						<ul>
							<li data-filter=".RoyalCanin" id="firstMenu">RoyalCanin</li>
							<li data-filter=".Famina">Famina</li>
							<li data-filter=".DogLine">DogLine</li>
							<li data-filter=".NaturalCore">NaturalCore</li>
							<li><a href="shop-grid."> More... </a></li>
						</ul>

					</div>
				</div>
			</div>
			<div class="row featured__filter">
				<div class="col-lg-3 col-md-4 col-sm-6 mix RoyalCanin">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="https://images.salsify.com/image/upload/s--goK3f8TU--/w_250/iwsnn1wqmdkf68ez4ygc.JPG?w=250">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=218">Boxer Puppy Dry Dog Food</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix RoyalCanin">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="https://images.salsify.com/image/upload/s--_89k3aSc--/w_250/hylvx8m135mqwkfiehjj.JPG?w=250">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=221">Golden Retriever Puppy Dry Dog Food</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix RoyalCanin">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="https://images.salsify.com/image/upload/s--RGvhc6eX--/w_250/r7vc2yyoeob1dw2lyrev.JPG?w=250">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=280">Cavalier King Charles Puppy Dry Dog Food</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix RoyalCanin">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="https://images.salsify.com/image/upload/s--ESxAhdYl--/w_250/jwuhdbi8snam4coqemrq.JPG?w=250">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=281">Large Puppy Dry Dog Food</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix RoyalCanin">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="https://images.salsify.com/image/upload/s--wxKOCA7l--/w_250/b5a1sfkfvojqeal0roee.JPG?w=250">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=282">Giant Puppy Dry Dog Food</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix RoyalCanin">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="https://images.salsify.com/image/upload/s--dt4l-8ia--/w_250/jh8vhw7tef2ve2unzc96.JPG?w=250">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=283">Bulldog Puppy Dry Dog Food</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix RoyalCanin">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="https://images.salsify.com/image/upload/s--3l-sBqG2--/w_250/s74oxgirnjr1c5gonrlx.JPG?w=250">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=284">Pug Puppy Dry Dog Food</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix Famina">
					<div class="featured__item">
						<div class="featured__item__pic__Famina set-bg"
							data-setbg="https://www.farmina.com/fotoprodotti/106_44_106_54_nd-ancestral-puppy-mini-chicken-spel-pomegranate-[400x600pxl]@img_farmina_site.png">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=92">CHICKEN & POMEGRANATE PUPPY MINI</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix Famina">
					<div class="featured__item">
						<div class="featured__item__pic__Famina set-bg"
							data-setbg="https://www.farmina.com/fotoprodotti/400_04_400_09_nd-ancestral-puppy-mini-lamb-spelt-blueberry-[400x600pxl]@img_farmina_site.png">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=93">LAMB & BLUEBERRY PUPPY MINI</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix Famina">
					<div class="featured__item">
						<div class="featured__item__pic__Famina set-bg"
							data-setbg="https://www.farmina.com/fotoprodotti/593_20_593_25_nd-ancestral-canine-puppy-medium_maxi-CHICKEN@web.png">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=94">CHICKEN & POMEGRANATE PUPPY MEDIUM & MAXI</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix Famina">
					<div class="featured__item">
						<div class="featured__item__pic__Famina set-bg"
							data-setbg="https://www.farmina.com/fotoprodotti/401_19_401_37_nd-ancestral-puppy-medium-maxi-lamb-spelt-blueberry-[400x600pxl]@img_farmina_site.png">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=95">LAMB & BLUEBERRY PUPPY MEDIUM & MAXI</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix Famina">
					<div class="featured__item">
						<div class="featured__item__pic__Famina set-bg"
							data-setbg="https://www.farmina.com/fotoprodotti/109_05_109_07_nd-ancestral-adult-mini-chicken-spel-pomegranate-[400x600pxl]@img_farmina_site.png">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=96">CHICKEN & POMEGRANATE ADULT MINI</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix Famina">
					<div class="featured__item">
						<div class="featured__item__pic__Famina set-bg"
							data-setbg="https://www.farmina.com/fotoprodotti/594_45_594_57_ND-Ancestral-Grain-adult-MEDIUM&MAXI-2.5kg-CHICKEN[400x600px]@online.png">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=97">CHICKEN & POMEGRANATE ADULT MEDIUM & MAXI</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix Famina">
					<div class="featured__item">
						<div class="featured__item__pic__Famina set-bg"
							data-setbg="https://www.farmina.com/fotoprodotti/595_29_595_11_ND-Ancestral-Grain-adult-LIGHT-mini-2.5kg-CHICKEN[400x600px]@online.png">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=98">CHICKEN & POMEGRANATE LIGHT MINI</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix DogLine">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="http://www.wooriwa.com/admin/data/product2/2201260003_L1.jpg">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=54">아지피아</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix DogLine">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="http://www.wooriwa.com/admin/data/product2/2201260004_L1.jpg">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=55">도그피아</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix DogLine">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="http://www.wooriwa.com/admin/data/product2/2201260005_L1.jpg">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=56">램스피아</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix DogLine">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="http://www.wooriwa.com/admin/data/product2/2201260006_L1.jpg">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=57">아지피아 스페셜</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix DogLine">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="http://www.wooriwa.com/admin/data/product2/2201260007_L1.jpg">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=58">아지피아 플러스</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix DogLine">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="http://www.wooriwa.com/admin/data/product2/2201260008_L1.jpg">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=59">유토피아</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix DogLine">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="http://www.wooriwa.com/admin/data/product2/2201260010_L1.jpg">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=60">특수견 빅플러스</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix NaturalCore">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="https://naturalcore.co.kr/web/product/small/202203/0695b2d79b533134679984c1d839f75b.jpg">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=329">베네M 비프&치킨</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix NaturalCore">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="https://naturalcore.co.kr/web/product/small/202109/5d4fd9eed37b3379ad59f2b31a2540c5.jpg">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=330">센시티브케어 베지</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix NaturalCore">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="https://naturalcore.co.kr/web/product/small/202112/0320c84f5c459d1d80a5334acd07379e.jpg">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=331">소프트델리6 사슴&연어 800g</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix NaturalCore">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="https://naturalcore.co.kr/web/product/small/202109/472c0fefa2afeba6b907c34cd2884faa.jpg">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=332">센시티브케어 밀웜</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix NaturalCore">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="https://naturalcore.co.kr/web/product/small/202201/410d4bfb88f56aec16e323feae393a78.jpg">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=333">에코 1 램</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix NaturalCore">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="https://naturalcore.co.kr/web/product/small/202201/12f4e523caec4046e26550dd015723e0.jpg">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=334">에코 2 덕</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix NaturalCore">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="https://naturalcore.co.kr/web/product/small/202201/ef9331dcbdb2c901b532356103478ed9.jpg">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop-details.jsp?fdnum=335">에코 3a 센시케어(램)</a>
							</h6>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-4 col-sm-6 mix RoyalCanin">
					<div class="featured__item">
						<div class="featured__item__pic set-bg" data-setbg="img/plus.jpg">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="shop_grid2.jsp">더보기</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix Famina">
					<div class="featured__item">
						<div class="featured__item__pic set-bg" data-setbg="img/plus.jpg">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="#">더보기</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix DogLine">
					<div class="featured__item">
						<div class="featured__item__pic set-bg" data-setbg="img/plus.jpg">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="#">더보기</a>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix NaturalCore">
					<div class="featured__item">
						<div class="featured__item__pic set-bg" data-setbg="img/plus.jpg">

						</div>
						<div class="featured__item__text">
							<h6>
								<a href="#">더보기</a>
							</h6>
						</div>
					</div>
				</div>

			</div>
		</div>
		</div>
	</section>
	<!-- Featured Section End -->

	<!-- Banner Begin -->
	<!-- <div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="img/banner/banner-1.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="img/banner/banner-2.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>-->
	<!-- Banner End -->

	<!-- Latest Product Section Begin -->
	<!--<section class="latest-product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Latest Products</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Top Rated Products</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Review Products</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> -->
	<!-- Latest Product Section End -->

	<!-- Health Products Section Begin -->
	<section class="from-blog spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title from-blog__title">
						<h2>HEALTH PRODUCTS</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic">
							<a href="product.jsp"><img src="img/product/product2.jpg"
								alt=""></a>
						</div>
						<div class="blog__item__text">
							<h5 style = "text-align : center">
								<a href="product.jsp">관절/구강 관리 용품</a>
							</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic">
							<a href="product1.jsp"><img src="img/product/product3.jpg"
								alt=""></a>
						</div>
						<div class="blog__item__text">
							<h5 style = "text-align : center">
								<a href="product1.jsp">귀 관리 용품</a>
							</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic">
							<a href="product2.jsp"><img src="img/product/product7.jpg"
								alt=""></a>
						</div>
						<div class="blog__item__text">
							<h5 style = "text-align : center">
								<a href="product2.jsp">의약품</a>
							</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Health Products Section End -->

	<!-- Health Q&A Section Begin -->
	<section class="from-blog spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title from-blog__title">
						<h2>Health Q&A</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic">
							<a href="blog1.jsp"><img src="img/blog/blog-2.jpg" alt=""></a>
						</div>
						<div class="blog__item__text">
							<h5 style = "text-align : center">
								<a href="blog1.jsp">주의가 필요한 식재료</a>
							</h5>
							<!-- <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                         -->
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic">
							<a href="blog2.jsp"><img src="img/blog/vaccination-1.jpg"
								alt=""></a>
						</div>
						<div class="blog__item__text">
							<h5 style = "text-align : center">
								<a href="blog2.jsp">예방접종</a>
							</h5>
							<!-- <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                         -->
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic">
							<a href="blog-details_emergency.jsp"><img
								src="img/blog/vaccination-8.jpg" alt=""></a>
						</div>
						<div class="blog__item__text">
							<h5 style = "text-align : center">
								<a href="blog-details_emergency.jsp">응급상황 대처법</a>
							</h5>
							<!-- <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                        -->
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic">
							<a href="blog-details_disease.jsp"><img
								src="img/blog/vaccination-7.jpg" alt=""></a>
						</div>
						<div class="blog__item__text">
							<h5 style = "text-align : center">
								<a href="blog-details_disease.jsp">흔한 질병</a>
							</h5>
							<!-- <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                        -->
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic">
							<a href="blog-details_care.jsp"><img
								src="img/blog/vaccination-9.jpg" alt=""></a>
						</div>
						<div class="blog__item__text">
							<h5 style = "text-align : center">
								<a href="blog-details_care.jsp">피부병 예방 수칙</a>
							</h5>
							<!-- <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                        -->
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- Health Q&A Section End -->

	<!-- Footer Section Begin -->
	<!--<footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="img/logo.png" alt=""></a>
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
                        <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. 
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
 Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.</p></div>
                        <div class="footer__copyright__payment"><img src="img/payment-item.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>-->
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
	<script>
	    $(window).on('load', function () {
	    	let blogLink  = document.querySelector("#firstMenu");
		    var event = document.createEvent("MouseEvents");
		    event.initEvent("click", false, true);
		    blogLink.dispatchEvent(event); 
	    });
	    
	    
	    //blogLink.fireEvent("onclick"); 
    </script>



</body>

</html>