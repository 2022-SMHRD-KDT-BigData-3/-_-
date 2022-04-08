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
    <title> 건강일지 작성하기</title>

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
    
    <style>
    #submit{
    width: 100%;
    padding: 21px 0 17px;
    border: 0;
    cursor: pointer;
    color: #fff;
    background-color: #7fad39;
    font-size: 20px;
    font-weight: 400;
    font-family: Dotum,'돋움',Helvetica,sans-serif;
    
    }
    </style>
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
	<table width="800" align="center">
	 
		<tr> 
	<td width="1200" colspan="4"> <div width="100%" align="center"> <input type="text" class="form-control" id="title"
       placeholder="제목을 입력해주세요" name="title"
       maxlength="800"> </div> </td> 
	</tr> 
	
	<tr height="1" bgcolor="#7fad39"><td colspan="4" width="1200"></td>
	</tr> 
	
	<tr> 
		<td width="0">&nbsp;</td> 
		<td align="center" width="30%">닉네임</td> 
		<td width="70%">   <%if(info==null){ %>로그인을 해주세요<%}else{%><%=info.getId() %><%} %></td> 
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
	<td width="399" colspan="2" height="200"> <textarea class="form-control" rows="17" id="content"
    name="content" placeholder="내용을 작성해주세요"></textarea> </td> 
<!-- 	</tr> 
	<tr height="1" bgcolor="#7fad39">
	<td colspan="4" width="407"></td>
	</tr>  -->
<!-- 	<tr height="1" bgcolor="#7fad39">
		<td colspan="4" width="407"></td>
	</tr>  -->
	<tr align="center"> 
		<td width="0">&nbsp;</td> 
		<td colspan="2" width="399">
			<button type="submit" id="submit"  value="확인"class="btn_type btn_primary">
							<span>작성하기</span>
						</button>	
		<td width="0">&nbsp;</td> 
	</tr> 
</table> 
<!-- 테이블 태그 시작-->


<%if (info!=null){ %>
<input type="text" style="display: none" name="id" value="<%=info.getId() %>"></input>
<%} %>
</form>
    
    
    
    <section class="featured spad">
    
    
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