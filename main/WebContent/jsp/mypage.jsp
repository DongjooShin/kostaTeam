<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- 구형 익스플로러를 위해 써주는 부분 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 이부분이 바로 반응형 웹!! 디바이스의 가로크기에 맞춰 컨텐트의 가로를 맞춘다. -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
<link href="../css/kfonts2.css" rel="stylesheet">
<style>
h2 {
	margin: 20px 0
}

.tab-content {
	padding: 10px 0;
	background-color: #c9effe;
}
</style>
</head>
<body>

	<div class="container">
		<h1>마이페이지</h1><br><br>
		
		<ul class="nav nav-tabs" id="myTab">
			<li><a href="#home">아파트그룹</a></li>
			<li><a href="#tab1">동게시판</a></li>
			<li><a href="#tab2">관리비</a></li>
			<li><a href="#tab3">문의답변</a></li>
			<li><a href="#tab4">건의함</a></li>
			<li><a href="#tab5">쪽지함</a></li>
			<li><a href="#tab6">개인정보수정</a></li>
		</ul>

		<div class="tab-content">
			<div class="tab-pane" id="home">
				<h3>우리 단지</h3>
				여기는 우리단지에용 저랑 수연언니꺼
			</div>
			<div class="tab-pane" id="tab1">
				<h3>동게시판</h3>
				이거도 나랑 수연언니꺼
			</div>
			<div class="tab-pane" id="tab2">
				<h3>관리비</h3>
				경태봇이랑 기대캐리꺼
			</div>
			<div class="tab-pane" id="tab3">
				<h3>문의답변</h3>
				
			</div>
				<div class="tab-pane" id="tab4">
				<h3>건의함</h3>
				정화랑 수연언니꺼
			</div>
			<div class="tab-pane" id="tab5">
				<h3>쪽지함</h3>
				경우니꺼
			</div>
			<div class="tab-pane" id="tab6">
				<h3>개인정보수정</h3>
				동주오빠꺼..?
			</div>
			
		</div>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="../js/gidae/bootstrap.min.js"></script>
		<script>
		$('#myTab a').click(function(e) {
			e.preventDefault()
			$(this).tab('show')
		})
		$('#myTab a:first').tab('show')
	</script>
	
</body>
</html>