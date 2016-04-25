<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="../css/dong/Preperty.css">
<link rel="stylesheet" href="../css/mainLink1.css">
<link rel="stylesheet" href="../css/mainLink2.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="../css/Min/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../css/Min/bootstrap/css/styles.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery.js"></script>
<script src="js/Min/js/bootstrap.min.js"></script>
<script src="js/Min/js/custom.js"></script>

<link rel="stylesheet" href="../assets/css/custom.min.css">
<style type="text/css">
.phoneNum {
	padding-left: 15px;
	padding-right: 0;
}

.phoneNumfirst {
	padding-left: 0px;
}

#emailCheck {
	margin-left: -26px;
	margin-right: -50px;
	font-size: 20px;
}

#emailDomain {
	padding-left: 0;
	margin-left: 0;
}

#idCheck {
	margin: 0;
	padding: 0 15px;
}
</style>

</head>
<body>
	<script type="text/javascript">
		function checkId(inputid) {

			if (inputid.m_memberNo.value == "") {
				alert("아이디를 입력해주세요");
				return;
			}

			url = "confirmId.jsp?id=" + inputid.m_memberNo.value;

			open(
					url,
					"confirm",
					"toolbar=no, status=no, menubar=no, location=no, scrollbars=no, resizable=no, width=410, height=280");

		}
		function checkIt() {
			if (!document.userInput.m_memberNo.value) {
				alert("ID를 입력하세요");
				return false;
			}

			if (!document.userInput.m_pass.value) {
				alert("비밀번호를 입력하세요");
				return false;
			}

			if (!document.userInput.m_pass2.value) {
				alert("비밀번호확인에 비밀번호를 입력하세요");
				return false;
			}
			if (document.userInput.m_pass.value != document.userInput.m_pass2.value) {
				alert("비밀번호가 일치하지 않습니다.")
				return false;
			}

		}

		function selectCheck(inputid) {

			if (inputid.select.value != '직접입력') {
				/* opener.document.userInput.emailCheck2.value = '1111' */
				userInput.emailCheck2.value = inputid.select.value;
			} else {
				userInput.emailCheck2.value = "";
				userInput.emailCheck2.focus();
			}
		}

		function isNumber() {
		
		}
	</script>


	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>


	<div class="main">
		<div class="header">
			<h1>(XXX아파트(아파트클릭시 아파트그룹번호자동으로가져옴) 회원가입)</h1>
		</div>
		<div class="col-md-12">
			<div class="row">
				<div class="col-lg-9">
					<div class="well bs-component">
						<form class="form-horizontal" action="MemberOk.jsp" method="post"
							name="userInput" onsubmit="return checkIt()">

							<legend>회원가입</legend>


							<div class="form-group">
								<input type="hidden" name="v_flag" value="1"> <input
									type="hidden" name="apt_APTGNo" value="1"> <input
									type="hidden" name="idCheck" value="0"> <label
									class="col-lg-3 control-label">아 이 디</label>
								<div class="col-lg-4">
									<input type="text" class="form-control" name="m_memberNo">
								</div>
								<div class="col-lg-3">
									<button type="button" class="btn btn-primary" id="idCheck"
										onclick="checkId(this.form)">중복확인</button>

								</div>

							</div>

							<div class="form-group">
								<label class="col-lg-3 control-label">비밀번호</label>
								<div class="col-lg-7">
									<input type="password" class="form-control" name="m_pass">
								</div>
							</div>

							<div class="form-group">
								<label class="col-lg-3 control-label">비밀번호확인</label>
								<div class="col-lg-7">
									<input type="password" class="form-control" name="m_pass2">
								</div>
							</div>

							<div class="form-group">
								<label class="col-lg-3 control-label">이 메 일</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" name="m_email">
								</div>
								<div class="col-lg-1" id="emailCheck">@</div>
								<div class="col-lg-2">
									<input type="text" class="form-control" value=""
										id="emailCheck2">
								</div>
								<div class="col-lg-2" id="emailDomain">
									<select class="form-control" id="select"
										onclick="selectCheck(this.form)">
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
										<input type="text" class="form-control" name="s_mphon1"
											onkeydown="isNumber()" style='IME-MODE: disabled'>

									</div>

									<div class="col-lg-4 phoneNum">
										<input type="text" class="form-control" name="s_mphon2">
									</div>

									<div class="col-lg-4 phoneNum">
										<input type="text" class="form-control" name="s_mphon3">
									</div>
								</div>
							</div>

							<div class="form-group">
								<label class="col-lg-3 control-label">전화번호</label>
								<div class="col-lg-7">
									<div class="col-lg-4 phoneNumfirst">
										<input type="text" class="form-control" name="s_phon1">
									</div>

									<div class="col-lg-4 phoneNum">
										<input type="text" class="form-control" name="s_phon2">
									</div>

									<div class="col-lg-4 phoneNum">
										<input type="text" class="form-control" name="s_phon3">
									</div>
								</div>
							</div>

							<div class="form-group">
								<label class="col-lg-3 control-label">이 름</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" name="m_name">
								</div>

								<label class="col-lg-1 control-label">나 이</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" name="m_age">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-3 control-label">주소</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" disabled="disabled">
								</div>
							</div>

							<div class="form-group">
								<label class="col-lg-3 control-label">동 </label>
								<div class="col-lg-3">
									<input type="text" class="form-control" name="m_buildingNo">
								</div>

								<label class="col-lg-1 control-label">호 </label>
								<div class="col-lg-3">
									<input type="text" class="form-control" name="m_roomNo">
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
			<p>
				Template by <a href="http://w3layouts.com">w3layouts</a>
			</p>
		</div>
		<!-----//end-copyright---->
</body>
</html>