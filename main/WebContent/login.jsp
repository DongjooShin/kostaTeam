
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en-US">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>APT Management Login Page</title>

<!-- CSS -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet" href="bootstrap/dong/css/bootstrap.min.css">
<link rel="stylesheet" href="css/dong/form-elements.css">
<link rel="stylesheet" href="css/dong/style.css">

<!-- Javascript -->
<script src="js/dong/jquery-1.11.1.min.js"></script>
<script src="bootstrap/dong/js/bootstrap.min.js"></script>
<style type="text/css">

img.wp-smiley, img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>
<link rel='stylesheet' id='spacious_style-css'
	href='http://demo.themegrill.com/spacious/wp-content/themes/spacious/style.css?ver=93f7ae8c928ef17b2e2e9a75b559118c'
	type='text/css' media='all' />
<link rel='stylesheet' id='spacious-genericons-css'
	href='http://demo.themegrill.com/spacious/wp-content/themes/spacious/genericons/genericons.css?ver=3.3.1'
	type='text/css' media='all' />

<script type='text/javascript'
	src='http://demo.themegrill.com/spacious/wp-includes/js/jquery/jquery.js?ver=1.12.3'></script>

<style type="text/css">
.recentcomments a {
	display: inline !important;
	padding: 0 !important;
	margin: 0 !important;
}

.sub-menu1 {
	display: inline;
	width: 250px;
	margin-right: 20px;
}

.sub-menu1 li {
	display: inline;
	padding-left: 10px;
}

.sub-menu1 li a {
	color: black;
}

.search-wrap {
	display: inline;
	width: 250px;
}
</style>

<style type="text/css">
.sub-menu1 {
	display: inline;
	width: 250px;
	margin-right: 20px;
}

.sub-menu1 li {
	display: inline;
	padding-left: 10px;
}

.sub-menu1 li a {
	color: black;
}

.search-wrap {
	display: inline;
	width: 250px;
}
</style>

<script type="text/javascript">
	$SA = {
		s : 243437,
		asynch : 1,
		useBlacklistUrl : 1
	};
	(function() {
		var sa = document.createElement("script");
		sa.type = "text/javascript";
		sa.async = true;
		sa.src = ("https:" == document.location.protocol ? "https://" + $SA.s
				+ ".sa" : "http://" + $SA.s + ".a")
				+ ".siteapps.com/" + $SA.s + ".js";
		var t = document.getElementsByTagName("script")[0];
		t.parentNode.insertBefore(sa, t);
	})();
</script>
</head>

<body
	class="home singular page page-id-7 page-template page-template-page-templates page-template-business page-template-page-templatesbusiness-php ">
	<div id="page" class="hfeed site">
		<header id="masthead" class="site-header clearfix">


		<div id="header-text-nav-container">
			<div class="inner-wrap">

				<div id="header-text-nav-wrap" class="clearfix">
					<div id="header-left-section">
						<div id="header-logo-image">
							<a href="" title="Spacious" rel="home"> <img
								src="http://demo.themegrill.com/spacious/wp-content/uploads/sites/2/2014/03/spacious-logo.png"
								alt="Spacious"></a>
						</div>

						<!-- #header-logo-image -->
						<div id="header-text" class="">
							<h1 id="site-title">
								<a href="" title="Spacious" rel="home">Spacious</a>
							</h1>
							<p id="site-description">경태경태</p>

						</div>

					</div>
					<!-- #header-left-section -->
					<div id="header-right-section">
						<div id="header-right-sidebar" class="clearfix">
							<aside id="search-3" class="widget widget_search">
							<form action="" class="search-form searchform clearfix"
								method="get">

								<ul class="sub-menu1">
									<li><a href="">로그인</a></li>
									<li><a href="">회원가입</a></li>
									<li><a href="">길라잡이</a></li>

								</ul>
								<div class="search-wrap">

									<input type="text" placeholder="Search" class="s field"
										name="s">
									<button class="search-icon" type="submit"></button>
								</div>

							</form>
							</aside>
						</div>


						<nav id="site-navigation" class="main-navigation"
							role="navigation">
						<h3 class="menu-toggle">Menu</h3>
						<div class="menu-primary-container">
							<ul id="menu-primary" class="menu">

								<li id="menu-item-9"
									class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-7 current_page_item menu-item-9"><a
									href="content.jsp">관리비</a>
									<ul class="sub-menu">
										<li id="menu-item-109"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-109"><a
											href="content.jsp">전체 관리비</a></li>
										<li id="menu-item-108"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-108"><a
											href="content.jsp">전기세</a></li>
										<li id="menu-item-106"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-106"><a
											href="content.jsp">수도세</a></li>
										<li id="menu-item-107"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-107"><a
											href="content.jsp">가스비</a></li>
										<li id="menu-item-107"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-107"><a
											href="content.jsp">공동 관리비</a></li>

									</ul></li>
								<li id="menu-item-52"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-52"><a
									href="content.jsp">아파트 정보</a>
									<ul class="sub-menu">
										<li id="menu-item-109"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-109"><a
											href="kkt.jsp">부동산 뉴스</a></li>
										<li id="menu-item-108"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-108"><a
											href="jeonghwa.jsp">아파트 시세</a></li>
										<li id="menu-item-106"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-106"><a
											href="imsu.jsp">아파트 이미지</a></li>
										<li id="menu-item-107"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-107"><a
											href="content.jsp">CCTV정보</a></li>
										<li id="menu-item-107"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-107"><a
											href="MIN.jsp">주변정보</a></li>

									</ul></li>
								<li id="menu-item-111"
									class="menu-item menu-item-type-custom menu-item-object-custom menu-item-111"><a
									href="content.jsp">부동산 정보</a>
									<ul class="sub-menu">
										<li id="menu-item-109"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-109"><a
											href="content.jsp">부동산 뉴스</a></li>
										<li id="menu-item-108"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-108"><a
											href="content.jsp">아파트 시세</a></li>
										<li id="menu-item-106"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-106"><a
											href="content.jsp">아파트 이미지</a></li>
										<li id="menu-item-107"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-107"><a
											href="content.jsp">CCTV정보</a></li>
										<li id="menu-item-107"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-107"><a
											href="content.jsp">주변정보</a></li>

									</ul></li>
								<li id="menu-item-143"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-143"><a
									href="content.jsp">고객센터</a>
									<ul class="sub-menu">
										<li id="menu-item-109"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-109"><a
											href="content.jsp">FAQ</a></li>
										<li id="menu-item-108"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-108"><a
											href="content.jsp">1:1문의</a></li>
										<li id="menu-item-106"
											class="content.jsp menu-item-type-post_type menu-item-object-page menu-item-106"><a
											href="content.jsp">공지사항</a></li>
										<li id="menu-item-107"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-107"><a
											href="content.jsp">가입문의</a></li>

									</ul></li>
								<li id="menu-item-33"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-33"><a
									href="content.jsp">마이페이지</a>
									<ul class="sub-menu">
										<li id="menu-item-109"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-109"><a
											href="content.jsp">아파트 그룹</a></li>
										<li id="menu-item-108"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-108"><a
											href="content.jsp">개인정보 관리</a></li>
										<li id="menu-item-106"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-106"><a
											href="content.jsp">마이페이지</a></li>

									</ul></li>


							</ul>
						</div>
						</nav>
					</div>
				</div>
			</div>

		</div>
		</header>

		<div class="col-md-12">
			<!-- Top content -->
			<div class="top-content" id="widthsize">

				<div class="inner-bg">
					<div class="container">
						<div class="row">
							<div class="col-sm-8 col-sm-offset-2 text">
								<h1>
									<strong>Login</strong>
								</h1>
								<div class="description">
									<p>
										<strong id="titleStrong">APT Management</strong>에 오신것을 환영합니다
									</p>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6 col-sm-offset-3 form-box">
								<div class="form-top">
									<div class="form-top-left">
										<h3>Login to our site</h3>
										<p>Enter your id and password to log on:</p>
									</div>
									<div class="form-top-right">
										<i class="fa fa-key"></i>
									</div>
								</div>
								<div class="form-bottom">
									<form role="form" action="" method="post" class="login-form">
										<div class="form-group">
											<label class="sr-only" for="form-username">Username</label> <input
												type="text" name="form-username" placeholder="Username..."
												class="form-username form-control" id="form-username">
										</div>
										<div class="form-group">
											<label class="sr-only" for="form-password">Password</label> <input
												type="password" name="form-password"
												placeholder="Password..." class="form-password form-control"
												id="form-password">
										</div>
										<button type="submit" class="btn">Sign in!</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>


		</div>
	</div>

	<script type='text/javascript'
		src='http://demo.themegrill.com/spacious/wp-content/themes/spacious/js/jquery.cycle.all.min.js?ver=3.0.3'></script>

	<script type='text/javascript'
		src='http://demo.themegrill.com/spacious/wp-content/themes/spacious/js/spacious-slider-setting.js?ver=93f7ae8c928ef17b2e2e9a75b559118c'></script>




</body>
</html>