<%@page import="java.util.ArrayList"%>
<%@page import="Model.DogFoodDAO"%>
<%@page import="Model.DogFoodDTO"%>
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
<title>Ogani | Template</title>

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
<script src="js/jquery-3.3.1.min.js"></script>
</head>

<body>
	<% 
	// 로그인 정보를 담은 session 불러오기 (내장객체)
	// session : Object타입 -> 강제형변환(다운캐스팅)
	// 로그인 성공시 : info에 값 담겨있음
	// 로그인 실패시 : info = null
	
	DogFoodDAO dao = new DogFoodDAO();
	
	ArrayList<DogFoodDTO> list = new ArrayList<>();
	list = dao.viewAllFood("Anf");
	String data = request.getParameter("data");
	System.out.print(data);
	%>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Humberger Begin -->
	<div class="humberger__menu__overlay"></div>
	<div class="humberger__menu__wrapper">
		<div class="humberger__menu__logo">
			<a href="./main.html"><img src="img/logo5.png" alt=""></a>
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
					<div class="col-lg-6">
						<div class="header__top__left">
							<ul>
								<li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
								<li>Free Shipping for all Order of $99</li>
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
								<a href="Login.html"><i class="fa fa-user"></i> Login</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-5 col-md-2 container"
					style="display: inline-block; text-align: center;">
					<div class="header__logo">
						<a href="./main.html"><img src="img/logo5.png" alt=""></a>
					</div>
				</div>
				<div class="container"
					style="display: inline-block; text-align: center;">
					<nav class="header__menu">
						<ul>
							<li><a href="./main.html">Home</a></li>
							<li class="active"><a href="./shop-grid.html">DogFood</a></li>
							<!--<li><a href="#">아라라라라</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="./shop-details.html">Shop Details</a></li>
                                    <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                                    <li><a href="./checkout.html">Check Out</a></li>
                                    <li><a href="./blog-details.html">Blog Details</a></li>
                                </ul>
                            </li>  -->
							<li><a href="./product.html">Health Products</a></li>
							<li><a href="./blog.html">Health Q&A</a></li>
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

	<!-- Product Section Begin -->
	<section class="product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-5">
					<div class="sidebar">
						<div class="sidebar__item">
							<h4>Company</h4>
							<ul>
								<li><button value="앱솔루트" class="btnNavi">Absolute</button></li>
								<li><button value="Anf" class="btnNavi">Anf</button></li>
								<li><button value="벨포아" class="btnNavi">BeliFor</button></li>
								<li><button value="도그라인" class="btnNavi">DogLine</button></li>
								<li><button value="이글벳" class="btnNavi">EagleVet</button></li>
								<li><button value="파미나" class="btnNavi">Famina</button></li>
								<li><button value="홈앤독" class="btnNavi">HomeAndDog</button></li>
								<li><button value="이즈칸" class="btnNavi">Iskhan</button></li>
								<li><button value="내츄럴밸런스" class="btnNavi">NaturalBalance</button></li>
								<li><button value="네츄럴코어" class="btnNavi">NaturalCore</button></li>
								<li><button value="나우프레쉬" class="btnNavi">NowFresh</button></li>
								<li><button value="오리젠" class="btnNavi">OriJen</button></li>
								<li><button value="프로베스트" class="btnNavi">ProBest</button></li>
								<li><button value="로얄캐닌" class="btnNavi">RoyalCanin</button></li>
								<li><button value="웰츠" class="btnNavi">Wealtz</button></li>
								<li><button value="지위펫" class="btnNavi">Ziwipets</button></li>
								<li><button value="아카나" class="btnNavi">Acana</button></li>
							</ul>
						</div>
						
						<div class="sidebar__item sidebar__item__color--option">
							<h4>Materials</h4>
							<div class="sidebar__item__color sidebar__item__color--green">
								<label for="white"> White <input type="radio">
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--white">
								<label for="gray"> Gray <input type="radio">
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--white">
								<label for="red"> Red <input type="radio">
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--green">
								<label for="black"> Black <input type="radio">
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--green">
								<label for="blue"> Blue <input type="radio">
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--white">
								<label for="green"> Green <input type="radio">
								</label>
							</div>
						</div>
						
					</div>
				</div>
				<div class="col-lg-9 col-md-7 ">
					<div class="product__discount">
						<div class="section-title product__discount__title">
							<h2 id="comName">All Dog Food</h2>
						</div>
						<div class="filter__item">
							<div class="row">
								<!--<div class="col-lg-4 col-md-5">
                                <div class="filter__sort">
                                    <span>Sort By</span>
                                    <select>
                                        <option value="0">Default</option>
                                        <option value="0">Default</option>
                                    </select>
                                </div>
                            </div>  -->
								<div class="col-lg-4 col-md-4 ">
									<div class="filter__found">
										<h6>
											<span id="listSize">0</span> Products found
										</h6>
									</div>
								</div>
								<!--<div class="col-lg-4 col-md-3">
                                <div class="filter__option">
                                    <span class="icon_grid-2x2"></span>
                                    <span class="icon_ul"></span>
                                </div>
                            </div>-->
							</div>
						</div>
						<div id="pagingView" class="row">

						<% 
						int cnt = 0;
                        if(data.equals("1")){
                        	cnt = 0;
                        	for(int i =cnt;i<cnt+15;i++){%>
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="<%=list.get(i).getImgUrl()%>">
											<ul class="product__item__pic__hover">
												<li><a href="#"><i class="fa fa-heart"></i></a></li>
												<li><a href="#"><i class="fa fa-retweet"></i></a></li>
												<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
											</ul>
										</div>
										<div class="product__item__text">
											<h6>
												<a href="#"><%= list.get(i).getFdName() %></a>
											</h6>
										</div>
									</div>
								</div>
							<%}}%>
                        <% if(data.equals("2")){
                        	cnt = 14;
                        	for(int i =cnt;i<list.size();i++){%>
							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
									<div class="product__item__pic set-bg"
										data-setbg="<%=list.get(i).getImgUrl()%>">
										<ul class="product__item__pic__hover">
											<li><a href="#"><i class="fa fa-heart"></i></a></li>
											<li><a href="#"><i class="fa fa-retweet"></i></a></li>
											<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
										</ul>
									</div>
									<div class="product__item__text">
										<h6>
											<a href="#"><%= list.get(i).getFdName() %></a>
										</h6>
									</div>
								</div>
							</div>
						<%}
                        }
                        else if(data.equals("2")){
                        	cnt = 14;
						for(int i =cnt;i<list.size();i++){%>
							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
									<div class="product__item__pic set-bg"
										data-setbg="<%=list.get(i).getImgUrl()%>">
										<ul class="product__item__pic__hover">
											<li><a href="#"><i class="fa fa-heart"></i></a></li>
											<li><a href="#"><i class="fa fa-retweet"></i></a></li>
											<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
										</ul>
									</div>
									<div class="product__item__text">
										<h6>
											<a href="#"><%= list.get(i).getFdName() %></a>
										</h6>
									</div>
								</div>
							</div>
							
						<%}
                        }%>
						</div>
					</div>
					
					<div class="product__pagination">
                        <%for(int i = 0;i<(list.size()/15)+1;i++){ %>
                        <a href="shop_grid2.jsp?data=<%=i+1 %>"><%=i+1 %></a>
                        <%}%><a href="#"><i class="fa fa-long-arrow-right"></i></a>
                     </div>
                     
				</div>
				
				
	</section>
	<!-- Product Section End -->

	<!-- Js Plugins -->
	
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/shop_grid2.js"></script>




</body>

</html>