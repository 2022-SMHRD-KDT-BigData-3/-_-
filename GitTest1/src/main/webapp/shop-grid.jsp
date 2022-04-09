<%@page import="Model.MemberDTO"%>
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
	
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	if (info != null) {
		String id = info.getId();
	}
	
	%>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

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
                        <a href="./main.jsp"><img src="img/logo5.png" > </a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu" style="width:120%">
                        <ul>
                            <li class="active"><a href="./main.jsp">Home</a></li>
                            <li><a href="./shop-grid.jsp">DogFood</a></li>
                            <li><a href="./product.jsp">Health Products</a></li>
                            <li><a href="./blog1.jsp">Health Q&A</a></li>
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

	<!-- Product Section Begin -->
	<section class="product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-5">
					<div class="sidebar">
						<div class="sidebar__item">
							<h4>Company</h4>
							<ul>
								<li><a href="#">Absolute</a></li>
								<li><a href="#">Anf</a></li>
								<li><a href="#">BellFor</a></li>
								<li><a href="#">DogLine</a></li>
								<li><a href="#">EagleVet</a></li>
								<li><a href="#">Famina</a></li>
								<li><a href="#">HomeAndDog</a></li>
								<li><a href="#">Iskhan</a></li>
								<li><a href="#">NaturalBalance</a></li>
								<li><a href="#">NaturalCore</a></li>
								<li><a href="#">NowFresh</a></li>
								<li><a href="#">OriJen</a></li>
								<li><a href="#">ProBest</a></li>
								<li><a href="#">RoyalCanin</a></li>
								<li><a href="#">Wealtz</a></li>
								<li><a href="#">Ziwipets</a></li>
							</ul>
						</div>
						<div class="sidebar__item sidebar__item__color--option">
							<h4>Materials</h4>
							<div class="sidebar__item__color sidebar__item__color--green">
								<label for="white"> White <input type="radio" >
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--white">
								<label for="gray"> Gray <input type="radio" >
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
								<label for="blue"> Blue <input type="radio" >
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--white">
								<label for="green"> Green <input type="radio" >
								</label>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-9 col-md-7 ">
					<div class="product__discount">
						<div class="section-title product__discount__title">
							<h2>All Dog Food</h2>
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
											<span><%=list.size() %></span> Products found
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
						<div class="row">
						
						<% for(int i =0;i<15;i++){%>
							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
									<div class="product__item__pic set-bg"
										data-setbg="<%=list.get(i).getImgUrl()%>">
									</div>
									<div class="product__item__text">
										<h6>
											<a href="#"><%= list.get(i).getFdName() %></a>
										</h6>
									</div>
								</div>
							</div>
							
						<%}%>
						
						<div class="product__pagination">
						<%for(int i = 0;i<(list.size()/15)+1;i++){ %>
							<a href="shop_grid2.jsp?data=<%=i+1 %>"><%=i+1 %></a>  
							
						<%} %>
							<a href="#"><i
								class="fa fa-long-arrow-right"></i></a>
						</div>
					</div>
				</div>
			</div>
	</section>
	<!-- Product Section End -->


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