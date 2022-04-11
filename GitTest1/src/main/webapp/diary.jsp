<%@page import="Model.DiaryDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.DiaryDAO_jy"%>
<%@page import="Model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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

<!-- Css Inners -->
<style>
.inner {
width:60%;
margin: 0 auto;
border: solid 1px #7fad39;
border-collapse: collapse;
border:0;
}

.inner .number{
width:6%;
text-align:center;
}

.inner .title{
width:60%;
text-align:left;
}

.inner .id{
width:20%;
text-align:center;
}
.col-lg-12{
width:60%;
margin: 0 auto;
}
#test10{
float : right;
}
.inner .date{
width:20%;
text-align:center;
}
.write{
text-align:right;

}
</style>

</head>

<body>	
<% 
	MemberDTO info = (MemberDTO)session.getAttribute("info");
	ArrayList<DiaryDTO> list= null;
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
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-linkedin"></i></a> <a href="#"><i
									class="fa fa-pinterest-p"></i></a>
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

	<!-- Blog Section Begin -->
	<section class="blog spad">
		<div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title related__product__title">
                        <h2 style="margin-top: 25px"> 건강일지 목록 </h2>
                    </div>
                </div>
            </div>
            <div class="row">
            </div>
        </div>
		<div>
			
			<%-- <% if(info == null){ %>
				<li> 로그인을 하세요 </li>
			<% }else{
				DiaryDAO_jy dao = new DiaryDAO_jy();
				list = dao.selectDiary(info.getId());
			}
			%> --%>
			
					<% DiaryDAO_jy dao = new DiaryDAO_jy();%>
					<% list = dao.selectDiary(); %>
			
				
			<table class="inner">
				<tbody>
					<tr>
					<td class = "number"><b>글번호</b></td>
					<td class = "title"><b>제목</b></td>
					<td class = "name"><b>아이디</b></td>
					<td class = "date"><b>작성일</b></td>
					</tr>
						<tr height="1" bgcolor="#7fad39"><td colspan="4" width="1200"></td>
					</tr>
				</tbody>
				
				<% for (int i = 0; i < list.size(); i++) { %>
					<tr>
					<td><%= i+1 %> </td>
					<td><a href = "./diary_view.jsp?number=<%=list.get(i).getNum() %>"><%= list.get(i).getTitile() %></a></td>
					<td><%= list.get(i).getName() %></td>
					</tr>
					
				<%}%>
				
						<tr height="1" bgcolor="#7fad39"><td colspan="4" width="1200"></td>
	</tr>
			</table>
		</div>
		<br>
		<br>
		<div class="col-lg-12">
			<div class="product__pagination blog__pagination">
				<a href="#">1</a> <a href="#">2</a>
				<a href="diary_add.jsp" id="test10" style ="width : 5%">글쓰기</a>
			</div>	
			
		</div>
	</section>
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
