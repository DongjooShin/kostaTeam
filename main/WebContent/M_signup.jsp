<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html>
<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/dong/Preperty.css">
<link rel="stylesheet" href="css/mainLink1.css">
<link rel="stylesheet" href="css/mainLink2.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/Min/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/Min/bootstrap/css/styles.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery.js"></script>
<script src="js/Min/js/bootstrap.min.js"></script>
<script src="js/Min/js/custom.js"></script>
<link rel="stylesheet" href="cosmo/bootstrap.css" media="screen">
<link rel="stylesheet" href="assets/css/custom.min.css"><style type="text/css">
		
.phoneNum {
	padding-left: 15px;
	padding-right: 0;
}

.phoneNumfirst {
	padding-left: 0px;
}

#emailCheck{
	margin-left: -15px;
	margin-right: -50px;
	font-size: 25px;
}
#emailDomain{
	padding-left: 0;
	margin-left: 0;
}
#idCheck{
	margin-top: 1px;
	padding-top: 2px;
	padding-bottom: 2px;
}

		</style>
		
</head>
<body>



<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>


	<div class="main">
		<div class="header" >
			<h1>(XXX아파트(아파트클릭시 아파트그룹번호자동으로가져옴) 회원가입)</h1>
		</div>
		<div class="col-md-12">
				<div class="row">
					<div class="col-lg-9">
						<div class="well bs-component">
							<form class="form-horizontal" action="MemberOk.jsp" method="post" >
								
									<legend>회원가입</legend>


									<div class="form-group">
										<label class="col-lg-3 control-label">아 이 디</label>
										<div class="col-lg-4">
											<input type="text" class="form-control" placeholder="아이디" name="m_memberNo">
										</div>
										<div class="col-lg-3">
											<button type="button" class="btn btn-primary" id="idCheck">중복확인</button>
										
										</div>
										
									</div>

									<div class="form-group">
										<label class="col-lg-3 control-label">비밀번호</label>
										<div class="col-lg-7">
											<input type="password" class="form-control" placeholder="건물주소" name="m_pass">
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-lg-3 control-label">비밀번호확인</label>
										<div class="col-lg-7">
											<input type="password" class="form-control" placeholder="건물주소">
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-lg-3 control-label">이 메 일</label>
										<div class="col-lg-3">
											<input type="text" class="form-control" placeholder="건물주소" name="m_email">
										</div>
										<div class="col-lg-1" id="emailCheck">
										@
										</div>
										<div class="col-lg-2">
											<input type="text" class="form-control" placeholder="건33물주소">
										</div>
										<div class="col-lg-2" id="emailDomain">
											<select class="form-control" id="select">
												<option>kosta.com</option>
												<option>naver.com</option>
												<option>hanmail.net</option>
												<option>직접입력</option>
											</select>
										</div>
									</div>





									<div class="form-group">
										<label class="col-lg-3 control-label">휴대폰번호</label>
										<div class="col-lg-7">
											<div class="col-lg-4 phoneNumfirst">
												<input type="text" class="form-control" placeholder="010" name="s_mphon1">
											</div>

											<div class="col-lg-4 phoneNum">
												<input type="text" class="form-control" placeholder="1234" name="s_mphon2">
											</div>

											<div class="col-lg-4 phoneNum">
												<input type="text" class="form-control" placeholder="5678" name="s_mphon3">
											</div>
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-lg-3 control-label">전화번호</label>
										<div class="col-lg-7">
											<div class="col-lg-4 phoneNumfirst">
												<input type="text" class="form-control" placeholder="010" name="s_phon1">
											</div>

											<div class="col-lg-4 phoneNum">
												<input type="text" class="form-control" placeholder="1234" name="s_phon2">
											</div>

											<div class="col-lg-4 phoneNum">
												<input type="text" class="form-control" placeholder="5678" name="s_phon3">
											</div>
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-lg-3 control-label">이    름</label>
										<div class="col-lg-3">
											<input type="text" class="form-control" placeholder="건물주소" name="m_name">
										</div>
										
										<label class="col-lg-1 control-label">나    이</label>
										<div class="col-lg-3">
											<input type="text" class="form-control" placeholder="건물주소" name="m_age">
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-lg-3 control-label">동 </label>
										<div class="col-lg-3">
											<input type="text" class="form-control" placeholder="건물주소" name="m_buildingNo">
										</div>
										
										<label class="col-lg-1 control-label">호 </label>
										<div class="col-lg-3">
											<input type="text" class="form-control" placeholder="건물주소" name="m_roomNo">
										</div>
									</div>
									
									
									<div class="form-group">
										<div class="col-lg-6 col-lg-offset-5">
											<button type="reset" class="btn btn-default">Cancel</button>
											<button type="submit" class="btn btn-primary">Submit</button>
										</div>
									</div>
								</form>
							
						</div>
					</div>

				</div>
			</div>
			<!-----start-copyright---->
   					<div class="copy-right">
						<p>Template by <a href="http://w3layouts.com">w3layouts</a></p> 
					</div>
				<!-----//end-copyright---->

	
</body>
</html>