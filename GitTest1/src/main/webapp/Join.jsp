<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>건강하개 지켜줄게</title>
<script src="jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="css/join.css" type="text/css">
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
</head>
<body>
<div class="col-lg-3">
                    <div id="header">
                        <a href="./main.jsp"><img src="img/logo5.png" style="width:15%; height:15%;"> </a>
                    </div>
</div>
	<form id="join_form" method="post" action="JoinServiceCon"  enctype="multipart/form-data" target="repacatFrame">
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
							<span class="ps_box int_id"> <input type="text" id="id"
								name="id" class="int" title="ID" maxlength="20"> <span
								class="step_url"> </span></span> <span class="error_next_box"
								id="idMsg" style="display: none" aria-live="assertive"></span>
								
							<!-- 아이디 체크 -->
							<br>
							<button type="button" id="btn_id">아이디 체크</button>
	<p id="idcheck"></p>
	
	<script type="text/javascript">

		$("#btn_id").on("click",function(){		
			
			let inputData = $("#id").val();
			
			$.ajax({
				url : "IdCheckServiceCon",
				
				// key, value 값으로 보내기
				data : "id="+inputData,
				
				success : function(result){
					//alert("통신 성공")
					console.log(inputData)

					console.log(result)
					if(result==1){
						 $("#idcheck").text("이미사용중")
						 $("#btnJoin").attr("disabled",true);
						 
					}else{
						 $("#idcheck").text("사용가능")
						 $("#btnJoin").attr("disabled",false);
					}
					
				},
				
				error : function(){
					alert("통신 실패")
				}
			})
		})
	</script>
						</div>

						<div class="join_row">
							<h3 class="join_title">
								<label for="pw">비밀번호</label>
							</h3>
							<span class="ps_box int_pass" id="pwImg"> <input
								type="password" id="pw" name="pw" class="int"
								title="비밀번호 입력" aria-describedby="pwMsg" maxlength="20">
								<span class="lbl"><span id="pwSpan" class="step_txt"></span></span>
							</span> <span class="error_next_box" id="pwMsg" style="display: none"
								aria-live="assertive">5~12자의 영문 소문자, 숫자와 특수기호(_)만 사용
								가능합니다.</span>

							<h3 class="join_title">
								<label for="pswd2">비밀번호 재확인</label>
							</h3>
							<span class="ps_box int_pass_check" id="pswd2Img"> <input
								type="password" id="pw2" name="pw2" class="int"
								title="비밀번호 재확인 입력" aria-describedby="pswd2Blind" maxlength="20">
							</span> <span class="error_next_box" id="pswd2Msg" style="display: none"
								aria-live="assertive"></span>
						</div>
							<br>
							<button type="button" id="btn_pw">비밀번호 체크</button>
	<p id="pwcheck"></p>
		<script type="text/javascript">

		$("#btn_pw").on("click",function(){		
			
			let inputData = $("#pw").val();
			let inputData2 = $("#pw2").val();
			
			$.ajax({
				url : "PwCheckServiceCon",
				
				// key, value 값으로 보내기
				data : {"pw":inputData,
						"pw2":inputData2},
				
				
				success : function(result){
					//alert("통신 성공")
					console.log(inputData)
					console.log(inputData2)

					console.log(result)
					if(result==1){
						 $("#pwcheck").text("비밀번호가 일치하지 않습니다")
						 $("#btnJoin").attr("disabled",true);
					}else{
						 $("#pwcheck").text("비밀번호가 일치합니다")
						 $("#btnJoin").attr("disabled",false);
					}
					
				},
				
				error : function(){
					alert("통신 실패")
				}
			})
		})
	</script>
					</div>
					<!-- // 아이디, 비밀번호 입력 -->

					<!-- 이름, 생년월일 입력 -->
					<div class="row_group">

						<!-- lang = ko_KR -->
						<div class="join_row">
			 				 <div class="form-group">
			 				 <h3> 강아지 사진 </h3>
			 				 <label class="input-file-button" for="input-file">
  							업로드
							</label>
			 				<input type="file" id="input-file" name="dogImg">
                            </div>
							<h3 class="join_title">
								<label for="name">강아지 이름</label>
							</h3>
							<span class="ps_box box_right_space"> <input type="text"
								id="name" name="dogName" title="이름" class="int" maxlength="40">
							</span> <span class="error_next_box" id="nameMsg" style="display: none"
								aria-live="assertive"></span>
						</div>
						<!-- lang = ko_KR -->

						<div class="join_row join_size">
							<h3 class="join_title">
								<label for="dogSize">강아지 크기</label>
							</h3>
							<div class="ps_box gender_code">
								<select id="size" name="dogSize" class="sel" aria-label="크기">
									<option value="" selected="">강아지 크기</option>
									<option value="small">소형견 (10kg 미만)</option>
									<option value="middle">중형견 (10kg 이상, 25kg 미만)</option>
									<option value="big">대형견 (25kg 이상)</option>
								</select>
							</div>
						</div>

						<div class="join_row join_birthday">
							<h3 class="join_title">
								<label for="yy">강아지 생년월일</label>
							</h3>
							<div class="bir_wrap">
								<div class="bir_yy">
									<span class="ps_box"> <input type="text" id="yy"
										placeholder="년(4자)" aria-label="년(4자)" class="int"
										maxlength="4" name="yy">
									</span>
								</div>
								<div class="bir_mm">
									<span class="ps_box"> <select id="mm" class="sel" name="mm"
										aria-label="월">
											<option value="">월</option>
											<option value="01">1</option>
											<option value="02">2</option>
											<option value="03">3</option>
											<option value="04">4</option>
											<option value="05">5</option>
											<option value="06">6</option>
											<option value="07">7</option>
											<option value="08">8</option>
											<option value="09">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
									</select>
									</span>
								</div>
								<div class=" bir_dd">
									<span class="ps_box"> <input type="text" id="dd" name="dd"
										placeholder="일" aria-label="일" class="int" maxlength="2">
										<label for="dd" class="lbl"></label>
									</span>
								</div>
							</div>
						</div>

						<div class="join_row join_sex">
							<h3 class="join_title">
								<label for="gender">강아지 성별</label>
							</h3>
							<div class="ps_box gender_code">
								<select id="gender" name="gender" class="sel" aria-label="성별">
									<option value="" selected="">성별</option>
									<option value="M">수컷</option>
									<option value="F">암컷</option>
								</select>
							</div>
						</div>
						<div class="join_row join_neutering">
							<h3 class="join_title">
								<label for="gender">강아지 중성화 여부</label>
							</h3>
							<div class="ps_box gender_code">
								<select id="neutering" name="neutering" class="sel" aria-label="중성화">
									<option value="" selected="">여부</option>
									<option value="Y">네</option>
									<option value="N">아니오</option>
								</select>
							</div>
						</div>
						<div>
							<h3>
								<label>강아지 건강 상태</label>
							</h3>
							없음<input type="checkbox" name="health" value="없음" checked>
							비만<input type="checkbox" name="health" value="비만"> 임신<input
								type="checkbox" name="health" value = "임신"> 노령견<input type="checkbox"
								name="health" value="노령견">
						</div>
						<div>
							<h3>
								<label>강아지 건강 고민</label>
							</h3>
							없음<input type="checkbox" name="disease" value="없음" checked>
							관절질환<input type="checkbox" name="disease" value="관절질환"> 눈병<input
								type="checkbox" name="disease" value="눈병"> 호흡계질환<input
								type="checkbox" name="disease" value="호흡계질환"> 피부질환<input
								type="checkbox" name="disease" value="피부질환"> <br> 소화기질환<input
								type="checkbox" name="disease" value="소화기질환"> 신장/요로질환<input
								type="checkbox" name="disease" value="신장/요로질환"> 당뇨<input type="checkbox"
								name="disease" value="당뇨"> 알러지<input type="checkbox" name="disease" value="알러지">
							기타질병<input type="checkbox" name="disease" value="기타질병">
						</div>
						<span class="error_next_box" id="genderMsg" style="display: none"
							aria-live="assertive"></span>
					</div>
					<!-- // 이름, 생년월일 입력 -->
					<div class="btn_area">
						<button type="submit" id="btnJoin" class="btn_type btn_primary">
							<span>가입하기</span>
						</button>
					</div>
				</div>
			</div>
		</div>
	</form>
	<script type="text/javascript">
	
	</script>
</body>
</html>