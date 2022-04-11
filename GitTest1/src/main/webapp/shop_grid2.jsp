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
<script src="js/jquery-3.3.1.min.js"></script>
<style>
#url{
display: inline-block;
    font-size: 14px;
    color: #1c1c1c;
    text-transform: uppercase;
    letter-spacing: 1px;
    border: 1px solid #b2b2b2;
    padding: 14px 20px 12px;
    border-radius: 25px;
    float: right;}
</style>
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
                            <li><a href="./main.jsp">Home</a></li>
                            <li class="active"><a href="./shop_grid2.jsp">DogFood</a></li>
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
								<li><button value="앱솔루트" class="btnNavi">Absolute</button></li>
								<li><button value="Anf" class="btnNavi">Anf</button></li>
								<li><button value="벨포아" class="btnNavi">BellFor</button></li>
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
								<label for="white"> 닭고기 <input type="radio">
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--white">
								<label for="gray"> 양고기 <input type="radio">
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--white">
								<label for="red"> 소고기 <input type="radio">
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--green">
								<label for="black"> 돼지고기 <input type="radio">
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--green">
								<label for="blue"> 오리고기 <input type="radio">
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--white">
								<label for="green"> 연어 <input type="radio">
								</label>
							</div>
						</div>
						
					</div>
				</div>
				<div class="col-lg-9 col-md-7 ">
					<div class="product__discount">
						<div class="section-title product__discount__title" id="shopping">
							<h2 id="comName">DOGFOOD</h2>
							
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
								<div class="col-lg-12 col-md-4 ">
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
						</div>
					</div>
					
					<!--<div class="product__pagination">
                        <%for(int i = 0;i<(list.size()/15)+1;i++){ %>
                        <a href="shop_grid2.jsp?data=<%=i+1 %>"><%=i+1 %></a>
                        <%}%><a href="#"><i class="fa fa-long-arrow-right"></i></a>
                     </div>  -->
                     
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