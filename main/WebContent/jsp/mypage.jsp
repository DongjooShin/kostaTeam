<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- ���� �ͽ��÷η��� ���� ���ִ� �κ� -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- �̺κ��� �ٷ� ������ ��!! ����̽��� ����ũ�⿡ ���� ����Ʈ�� ���θ� �����. -->
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
		<h1>����������</h1><br><br>
		
		<ul class="nav nav-tabs" id="myTab">
			<li><a href="#home">����Ʈ�׷�</a></li>
			<li><a href="#tab1">���Խ���</a></li>
			<li><a href="#tab2">������</a></li>
			<li><a href="#tab3">���Ǵ亯</a></li>
			<li><a href="#tab4">������</a></li>
			<li><a href="#tab5">������</a></li>
			<li><a href="#tab6">������������</a></li>
		</ul>

		<div class="tab-content">
			<div class="tab-pane" id="home">
				<h3>�츮 ����</h3>
				����� �츮�������� ���� ������ϲ�
			</div>
			<div class="tab-pane" id="tab1">
				<h3>���Խ���</h3>
				�̰ŵ� ���� ������ϲ�
			</div>
			<div class="tab-pane" id="tab2">
				<h3>������</h3>
				���º��̶� ���ĳ����
			</div>
			<div class="tab-pane" id="tab3">
				<h3>���Ǵ亯</h3>
				
			</div>
				<div class="tab-pane" id="tab4">
				<h3>������</h3>
				��ȭ�� ������ϲ�
			</div>
			<div class="tab-pane" id="tab5">
				<h3>������</h3>
				���ϲ�
			</div>
			<div class="tab-pane" id="tab6">
				<h3>������������</h3>
				���ֿ�����..?
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