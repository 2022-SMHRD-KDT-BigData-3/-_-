<%@page import="Model.DiaryDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.DiaryDAO_tw"%>
<%@page import="Model.MemberDTO"%>
<%@page import="Model.MemberDAO"%>
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
    <title> Ogani | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>

<%
	MemberDTO info = (MemberDTO)session.getAttribute("info"); // session info값을 가져오는코드

	DiaryDAO_tw mDia = new DiaryDAO_tw(); // DiaryDAO_tw 객체 생성하는부분
	ArrayList<DiaryDTO> mlist = new ArrayList<DiaryDTO>(); // DiaryDto 타입 어레이리스트 생성
	if(info != null){ // i네nfo가 null이 아닐때가 true 36번째 줄에 session info값이 들어왔을때 조건문 실행
	out.print(mlist.size()); // 이부분 코드는 갑자기 넣어진게 어색함 맨마지막에 들어가야할듯 
	mlist = mDia.diary_load("id"); // 여기는 왜 에러가 날까요?
	}
	//요부분을 따라썻는데 뭔말인지 이해가 안되용 ㅈ
%>


    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">아
        <div class="humberger__menu__logo">
            <a href="#"><img src="img/logo.png" alt=""></a>
        </div>
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
            </ul>
            <div class="header__cart__price">item: <span>$150.00</span></div>
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
                <a href="Login.html"><i class="fa fa-user"></i> Login 수정 -태완- </a>
            </div>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="./main.jsp">Home</a></li>
                <li><a href="./shop-grid.jsp">DOG FOOD</a></li>
               <!-- <li><a href="#">Pages</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="./shop-details.html">Shop Details</a></li>
                        <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                        <li><a href="./checkout.html">Check Out</a></li>
                        <li><a href="./blog-details.html">Blog Details</a></li>
                    </ul>-->
                </li>
                <li><a href="./product.html"> HEALTH PRODUCTS </a></li>
                <li><a href="./blog.html"> Health Q&A </a></li>
            </ul>
        </nav>
       <!--  <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
        </div>
        <div class="humberger__menu__contact">
            <ul>
                <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                <li>Free Shipping for all Order of $99</li>
            </ul>
        </div> -->
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
                                <li><i class="fa fa-envelope"></i> 입력한 이메일로 수정 -태완- </li>
                                <li> 쓸말 없으면 삭제 -태완- </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                <a href="#"><i class="fa fa-pinterest-p"></i></a>
                            </div>
                            <div class="header__top__right__auth">
                                <a href="Login.html"><i class="fa fa-user"></i> Login 수정? -태완- </a>
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
                        <a href="./main.html"><img src="img/logo5.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                           <li class="active"><a href="./main.html">Home</a></li>
                            <li><a href="./shop-grid.html">DOG FOOD</a></li>
               <!-- <li><a href="#">Pages</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="./shop-details.html">Shop Details</a></li>
                        <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                        <li><a href="./checkout.html">Check Out</a></li>
                        <li><a href="./blog-details.html">Blog Details</a></li>
                    </ul>-->
                </li>
                <li><a href="./product.html"> HEALTH PRODUCTS </a></li>
                <li><a href="./blog.html"> Health Q&A </a></li>
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
   <!-- 
  
  <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span> 사료 회사 </span>
                        </div>
                        <ul>
                            <li><a href="#"> absolute </a></li>
                            <li><a href="#"> anf </a></li>
                            <li><a href="#"> Belifor </a></li>
                            <li><a href="#"> dogline </a></li>
                            <li><a href="#"> FaminaAncestralGrain </a></li>
                            <li><a href="#"> FaminaOcean </a></li>
                            <li><a href="#"> FaminaPrime </a></li>
                            <li><a href="#"> FaminaQuinoa </a></li>
                            <li><a href="#"> FaminaVetLife </a></li>
                            <li><a href="#"> homeanddog </a></li>
                            <li><a href="#"> iskhan </a></li>
                            <li><a href="#"> nowfresh </a></li>
                            <li><a href="#"> orjien </a></li>
                            <li><a href="#"> probest </a></li>
                            <li><a href="#"> royalAdult </a></li>
                            <li><a href="#"> royalMature </a></li>
                            <li><a href="#"> royalPuppy </a></li>
                            <li><a href="#"> wealtz </a></li>
                            <li><a href="#"> 내츄럴밸런스 </a></li>
                            <li><a href="#"> 네츄럴코어 </a></li>
                            <li><a href="#"> 아카나 </a></li>
                            <li><a href="#"> 이글벳 </a></li>
                            <li><a href="#"> 지위펫 </a></li>
                            
                            
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                   <!--  <div class="hero__search">
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
 
    <!-- Product Details Section Begin -->
    <div style="height: 25px"></div>
    <!-- Product Details Section End -->

    <!-- Related Product Section Begin -->
    <section class="related-product">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title related__product__title">
                        <h2> 건강일지 작성 </h2>
                    </div>
                </div>
            </div>
            <div class="row">
            </div>
        </div>
        
    
			<table style="text-align: center; border: 1px solid #7fad39">
				<thead>
					<tr>
						<th colspan="2" style="background-color: #7fad39; text-align: center;">게시판 글 보기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%;">글 제목</td>
						<td colspan="2"></td>
					</tr>
					<tr>
						<td>닉네임</td>
						<td colspan="2"></td>
					</tr>
					
					<tr>
						<td>내용</td>
						<td colspan="2" style="height: 200px; text-align: left;"></td>
					</tr>
				</tbody>
			</table>
			<a href="">목록</a>
    
        
      
    </section>
    
    <section class="featured spad">
    
    <table>
    	<tbody>
    		<th>
    			<tr>
					<textarea placeholder="제목을 입력해주세요">
						
					</textarea>
    			</tr>
    		</th>
    	</tbody>
    </table>
    
    </section>
    <!-- Related Product Section End -->

    <!-- Footer Section Begin -->
<!--     <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./main.html"><img src="img/logo.png" alt=""></a>
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