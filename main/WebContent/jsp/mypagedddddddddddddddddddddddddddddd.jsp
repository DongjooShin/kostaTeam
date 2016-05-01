<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<%
	String body2 = request.getParameter("body2");
	if(body2 ==null){
		body2 = "/plugins/gidae/smart/SmartEditor2.html";
	}
	
	request.setAttribute("body2", body2);
	
	String id = (String)session.getAttribute("id");
		
	
%>


<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- 구형 익스플로러를 위해 써주는 부분 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 이부분이 바로 반응형 웹!! 디바이스의 가로크기에 맞춰 컨텐트의 가로를 맞춘다. -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
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
			<li><a href="">아파트그룹</a></li>
			<li><a href="#tab1">동게시판</a></li>
			<li><a href="#tab2">관리비</a></li>
			<li><a href="mypage.jsp?body2=listComplaint.jsp">문의답변</a></li>
			<li><a href="#tab4">건의함</a></li>
			<li><a href="#tab5">쪽지함</a></li>
			<li><a href="mypage.jsp?body2=home.jsp">개인정보수정</a></li>
		</ul>

		<div class="tab-content">
 		<jsp:include page="${body2 }"></jsp:include> 
 		
		</div>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="../js/gidae/bootstrap.min.js"></script>
</body>
</html>
<%--  <jsp:include page="/plugins/gidae/smart/SmartEditor2.html"></jsp:include> --%>