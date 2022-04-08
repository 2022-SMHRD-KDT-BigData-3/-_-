<%@page import="Model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="css/join.css" type="text/css">
</head>
<body style="margin-top:10%;height: auto;">
<body>
<%
	MemberDTO info = (MemberDTO)session.getAttribute("info");

%>


<%String login = request.getParameter("login");
	System.out.print(login);
%>

<script type="text/javascript">

	let result = "<%=login%>";
	console.log("test"+result);
	
	if(result === "fail"){
		alert("로그인 실패!");
	}


</script>
<div id="header" class="join_membership" role="banner">
</div>
	<form id="join_form" method="post" action="LoginServiceCon">
		<input type="hidden" id="token_sjoin" name="token_sjoin" value="D16IbzcI0GuKvWy2"> 
			<input type="hidden" id="encPswd"	name="encPswd" value=""> 
			<input type="hidden" id="encKey"	name="encKey" value=""> 
			<input type="hidden" id="birthday"	name="birthday" value=""> 
			<input type="hidden" id="joinMode"	name="joinMode" value="unreal"> 
			<input type="hidden" id="pbirthday" name="pbirthday" value=""> 
			<input type="hidden" id="ipinFlag" name="ipinFlag" value=""> 
			<input type="hidden" id="nid_kb2" name="nid_kb2" value="">

		<!-- container -->
		<div id="container" role="main">
			<div id="content">
				<!-- tg-text=title -->
				<div class="join_content">
					<!-- 아이디, 비밀번호 입력 -->
					<div class="row_group">
						<div class="join_row">
							<h3 class="join_title">
								<label for="id">아이디</label>
							</h3>
							<span class="ps_box int_id"> <input type="text" id="id" style="height: 50px"
								name="id" class="int" title="ID" maxlength="20"> <span
								class="step_url"> </span></span> <span class="error_next_box"
								id="idMsg" style="display: none" aria-live="assertive"></span>
								
							<!-- 아이디 체크 -->
						</div>

						<div class="join_row">
							<h3 class="join_title">
								<label for="pw">비밀번호</label>
							</h3>
							<span class="ps_box int_pass" id="pwImg"> <input style="height: 50px"
								type="password" id="pw" name="pw" class="int"
								title="비밀번호 입력" aria-describedby="pwMsg" maxlength="20">
								<span class="lbl"><span id="pwSpan" class="step_txt"></span></span>
							</span> <span class="error_next_box" id="pwMsg" style="display: none"
								aria-live="assertive">5~12자의 영문 소문자, 숫자와 특수기호(_)만 사용
								가능합니다.</span>
						</div>
					</div>
					<!-- // 아이디, 비밀번호 입력 -->

					<!-- // 이름, 생년월일 입력 -->
					<div class="btn_area">
						<button type="submit" id="btnJoin" class="btn_type btn_primary">
							<span>로그인</span>
						</button>
					</div>
				</div>
			</div>
		</div>
	</form>
	
	<form id="join_form" method="post" action="Join.jsp">
	
		<div id="container" role="main" style="margin-top: 230px">
			<div id="content" style="margin-top: 40px;">
				<!-- tg-text=title -->
				<div class="join_content">
					<!-- 아이디, 비밀번호 입력 -->
					<div class="row_group">

					</div>
					<!-- // 아이디, 비밀번호 입력 -->

					<!-- // 이름, 생년월일 입력 -->
					<div class="btn_area">
						<button type="submit" id="btnJoin" class="btn_type btn_primary">
							<span>회원가입</span>
						</button>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>