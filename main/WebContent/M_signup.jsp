<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<html>
<head>
		<meta charset="utf-8">
		<link href="css/Min/bootstrap/css/style1.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--webfonts-->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text.css'/>
		<!--//webfonts-->
</head>
<body>



<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>



</script>
	<div class="main">
		<div class="header" >
			<h1>(XXX아파트(아파트클릭시 아파트그룹번호자동으로가져옴) 회원가입)</h1>
		</div>
		<p>1.이메일을 정확히 입력해주세요. 이메일인증을 통해 회원가입이 이루어 집니다.<br>
		   2.아파트관리자의 승인시 XXX아파트를 이용하실 수 있습니다.
		</p>
			<form action="M_signupInsert.jsp" method="post" name="form">
				<ul class="left-form">
					<h2>아파트 가입</h2>
				
						이름
					<li>
						<input type="text" name="m_name"  placeholder="이름" required />
						<a href="#" class="icon ticker"> </a>
						<div class="clear"> </div>
					</li> 
					
					아이디
					<li>
						<input type="text" name="m_memberNo" class="left_id" placeholder="(6~16자 이내)" required onblur="idchk()" />
						
						<input type="button" name="s_confirm_id" value="중복확인" onclick="confirmId(this.form)" />
						<a href="#" class="icon ticker"> </a>
						<div class="clear"> </div>
					</li> 
					
					비밀번호 입력
					<li>
						
						<input type="password" name="m_pass"   placeholder="문자/숫자 6~16자이내" required/>
						<a href="#" class="icon into"> </a>
						<div class="clear"> </div>
					</li> 
					비밀번호 재입력
					<li>
						
						<input type="password" name="m_repass"   placeholder="비밀번호 재입력" required/>
						<a href="#" class="icon into"> </a>
						<div class="clear"> </div>
					</li> 
					
				
				</ul>
				<ul class="right-form">
						<h2> &nbsp;</h2>
					
					<div>
					이메일
					<li class="right_li">
						
						<input type="text" name="m_email" class="m_email"  placeholder="Email" required/>
						<a href="#" class="icon ticker"> </a>
						<div class="clear"> </div>
					</li> 
					<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>
					<font color="blue">아파토의 메일을 수신하겠습니다.</font> </label>
					
					<br>
						동/호수
					<li>
					
						<input type="text" name="m_buildingNo" class="right_dong"   placeholder="동" required/>동
						<input type="text" name="m_roomNo" class="right_dong"   placeholder="호" required/>호
						<a href="#" class="icon ticker"> </a>
						<div class="clear"> </div>
					</li> 
					
					전화번호
					<li>
						
						<input type="text"  name="s_phon1" class="right_phone"  placeholder="02" required/>-
						<input type="text" name="s_phon2" class="right_phone"  placeholder="4052" required/>-
						<input type="text" name="s_phon3" class="right_phone"  placeholder="8027" required/>
						<a href="#" class="icon ticker"> </a>
						<div class="clear"> </div>
					</li> 
					휴대전화번호
					<li>
						<input type="text" name="s_mphon1"  class="right_phone"  placeholder="010" required/>-
						<input type="text" name="s_mphon2"  class="right_phone"  placeholder="4052" required/>-
						<input type="text" name="s_mphon3"  class="right_phone"  placeholder="8027" required/>
						<a href="#" class="icon ticker"> </a>
						<div class="clear"> </div>
					</li> 
					
							<input type="submit" value="가입하기"> <!-- onclick="myFunction()" -->
							
						<div class="clear"> </div>
						
					</div>
					<div class="clear"> </div>
				</ul>
				<div class="clear"> </div>
					
			</form>
			
		</div>
			<!-----start-copyright---->
   					<div class="copy-right">
						<p>Template by <a href="http://w3layouts.com">w3layouts</a></p> 
					</div>
				<!-----//end-copyright---->

	
</body>
</html>