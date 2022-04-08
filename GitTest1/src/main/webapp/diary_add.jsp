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
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	if (info != null) {
		String id = info.getId();
	}
	%>
	<!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
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
                            	<%if (info!=null){ %>
                                <li><i class="fa fa-envelope"></i> <%=info.getId()+"님, 안녕하세요" %></li>
                                <%} %>
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
                                <% if(info==null){ %>
                                <a href="Login.jsp"><i class="fa fa-user"></i> Login</a>
                                <%    } %>
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
        
    <table align = "center"> 
	<tr> 
		<td> 
		<table width="100%" cellpadding="0" cellspacing="0" border="0"> 
	<tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;"> 
	</tr>
	 </table> 
	 <form method="post" action="DiaryAddServiceCon">
	<table width="800">
	<!-- 
		<tr> 
	<td width="0">&nbsp;</td> 
	<td align="center" width="76">제목</td> 
	<td width="100"> <div width=800 align="center"> <input type="text" class="form-control" id="title"
       placeholder="제목을 입력해주세요" name="title"
       maxlength="800"> </div> </td> 
	<td width="0">&nbsp;</td> 
	</tr> 
	
	<tr height="1" bgcolor="#7fad39"><td colspan="4" width="1200"></td>
	</tr> 
	
	<tr> 
		<td width="0">&nbsp;</td> 
		<td align="center" width="76">닉네임</td> 
		<td width="319">   <%if(info==null){ %>로그인을 해주세요<%}else{%><%=info.getId() %><%} %></td> 
		<td width="0">&nbsp;</td> 
	</tr> 
	<tr height="1" bgcolor="#7fad39">
		<td colspan="4" width="407"></td>
	</tr> 
	
	<tr> 
	<td width="0">&nbsp;</td> 
	<td align="center" width="76">건강 상태</td> 
	<td width="319"><%if(info!=null){%><%=info.getHealth() %><%} %></td> 
	<td width="0">&nbsp;</td> 
	</tr> 
	
	<tr height="0.5" bgcolor="#7fad39">
		<td colspan="4" width="407"></td>
	</tr> 
	
	<tr> 
	<td width="0">&nbsp;</td> 
	<td align="center" width="76">질병 상태</td> 
	<td width="319"><%if(info!=null){%><%=info.getDisease() %><%} %></td> 
	<td width="0">&nbsp;</td> 
	</tr> 
	
	<tr height="1" bgcolor="#7fad39">
		<td colspan="4" width="407"></td>
	</tr> 
	<tr> 
	<td width="0">&nbsp;</td> 
	<td width="399" colspan="2" height="200"> <textarea class="form-control" rows="5" id="content"
    name="content" placeholder="내용 작성"></textarea> </td> 
	</tr> 
	<tr height="1" bgcolor="#7fad39">
	<td colspan="4" width="407"></td>
	</tr> 
	<tr height="1" bgcolor="#7fad39">
		<td colspan="4" width="407"></td>
	</tr> 
	<tr align="center"> 
		<td width="0">&nbsp;</td> 
		<td colspan="2" width="399">
			<input type="submit" value="확인"> 	
		<td width="0">&nbsp;</td> 
	</tr> -->
</table> 

<div width=800 align="center"> <input type="text" class="form-control" id="title"
       placeholder="제목을 입력해주세요" name="title"
       maxlength="800"> </div>
       <table>
       <tr>
       <td width=20%><p>닉네임</p></td>
       <td width=80%><p><%if(info==null){ %>로그인을 해주세요<%}else{%> <%=info.getId() %><%} %></p></td>
       </tr>
       <tr>
       <td><textarea width="800" rows="50" id="content" name="content" placeholder="내용을 작성해주세요"></textarea></td>
       </tr>
       </table>
       <div width=800 align="center">
       
       
       </div>
<!-- 테이블 태그 시작-->
	<table width="800">
	<!-- 
		<tr> 
	<td width="0">&nbsp;</td> 
	<td align="center" width="76">제목</td> 
	<td width="100"> <div width=800 align="center"> <input type="text" class="form-control" id="title"
       placeholder="제목을 입력해주세요" name="title"
       maxlength="800"> </div> </td> 
	<td width="0">&nbsp;</td> 
	</tr> 
	
	<tr height="1" bgcolor="#7fad39"><td colspan="4" width="1200"></td>
	</tr> 
	
	<tr> 
		<td width="0">&nbsp;</td> 
		<td align="center" width="76">닉네임</td> 
		<td width="319">   <%if(info==null){ %>로그인을 해주세요<%}else{%><%=info.getId() %><%} %></td> 
		<td width="0">&nbsp;</td> 
	</tr> 
	<tr height="1" bgcolor="#7fad39">
		<td colspan="4" width="407"></td>
	</tr> 
	
	<tr> 
	<td width="0">&nbsp;</td> 
	<td align="center" width="76">건강 상태</td> 
	<td width="319"><%if(info!=null){%><%=info.getHealth() %><%} %></td> 
	<td width="0">&nbsp;</td> 
	</tr> 
	
	<tr height="0.5" bgcolor="#7fad39">
		<td colspan="4" width="407"></td>
	</tr> 
	
	<tr> 
	<td width="0">&nbsp;</td> 
	<td align="center" width="76">질병 상태</td> 
	<td width="319"><%if(info!=null){%><%=info.getDisease() %><%} %></td> 
	<td width="0">&nbsp;</td> 
	</tr> 
	
	<tr height="1" bgcolor="#7fad39">
		<td colspan="4" width="407"></td>
	</tr> 
	<tr> 
	<td width="0">&nbsp;</td> 
	<td width="399" colspan="2" height="200"> <textarea class="form-control" rows="5" id="content"
    name="content" placeholder="내용 작성"></textarea> </td> 
	</tr> 
	<tr height="1" bgcolor="#7fad39">
	<td colspan="4" width="407"></td>
	</tr> 
	<tr height="1" bgcolor="#7fad39">
		<td colspan="4" width="407"></td>
	</tr> 
	<tr align="center"> 
		<td width="0">&nbsp;</td> 
		<td colspan="2" width="399">
			<input type="submit" value="확인"> 	
		<td width="0">&nbsp;</td> 
	</tr> -->
</table> 


<%if (info!=null){ %>
<input type="text" style="display: none;" name="id"><%=info.getId() %></input>
<%} %>
</form>
    
    
    
    <section class="featured spad">
    
    
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
                        <p>Get E-mail updates about our la

 shop and special offers.</p>
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