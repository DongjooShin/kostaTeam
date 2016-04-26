<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	int check = -1;
	if (request.getAttribute("id") != null) {
		check = 1;
	}
	request.setAttribute("check", check);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="../css/header/main.css">
<link rel="stylesheet" href="../css/header/bootstrap.min.css">
<link rel="stylesheet" href="../css/basic1.css">
<link rel="stylesheet" href="../css/basic2.css">
<link rel="stylesheet" href="../css/basic3.css">
<body>
	<div id="page" class="hfeed site col-lg-11">
		<header id="masthead" class="site-header clearfix">

		<div id="header-text-nav-container">
			<div class="inner-wrap">

				<div id="header-text-nav-wrap" class="clearfix">
					<div id="header-left-section">
						<div id="header-logo-image">
							<a href="main.jsp" title="Spacious" rel="home"><img
								src="http://demo.themegrill.com/spacious/wp-content/uploads/sites/2/2014/03/spacious-logo.png"
								alt="Spacious"></a>
						</div>
						<!-- #header-logo-image -->


						<div id="header-text" class="">
							<h1 id="site-title">
								<a href="main.jsp" title="Spacious"
									rel="home">Spacious</a>
							</h1>
							<p id="site-description">경태경태</p>
							<!-- #site-description -->
						</div>
						<!-- #header-text -->
					</div>
					<!-- #header-left-section -->



					<div id="header-right-section">
						<div id="header-right-sidebar" class="clearfix">
							<form action="" class="search-form searchform clearfix"
								method="get">

								<ul class="sub-menu1">
									<c:if test="${check ==-1 }">
										<li><a href="login.jsp">로그인</a></li>
										<li><a href="M_signup.jsp">회원가입</a></li>
									</c:if>

									<c:if test="${check == 1 }">
										<li><a href="login.jsp" style="color: white;">로그인</a></li>
										<li><a href="logout.jsp">로그아웃</a></li>
									</c:if>


									<li><a href="">길라잡이</a></li>

								</ul>
								<div class="search-wrap">

									<input type="text" placeholder="Search" class="s field"
										name="s" id="search">
									<button class="search-icon" type="submit" id="searchBtn"></button>
								</div>

							</form>

							<!-- .searchform -->
							</aside>
						</div>
						<nav id="site-navigation" class="main-navigation"
							role="navigation">
						<h3 class="menu-toggle">Menu</h3>
						<div class="menu-primary-container">
							<ul id="menu-primary" class="menu">
								<li id="menu-item-9"
									class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-7 current_page_item menu-item-9"><a
									href="main.jsp?body=Publicmanage.jsp">관리비</a>
									<ul class="sub-menu">
										<li id="menu-item-255"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-255"><a
											href="http://demo.themegrill.com/spacious/cart/">전체관리비</a></li>
										<li id="menu-item-256"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-256"><a
											href="http://demo.themegrill.com/spacious/my-account/">전기세</a></li>
										<li id="menu-item-257"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-255"><a
											href="http://demo.themegrill.com/spacious/cart/">수도세</a></li>
										<li id="menu-item-258"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-256"><a
											href="http://demo.themegrill.com/spacious/my-account/">가스비</a></li>
										<li id="menu-item-259"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-256"><a
											href="http://demo.themegrill.com/spacious/my-account/">공동관리비</a></li>
									</ul></li>


								<li id="menu-item-254"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-254"><a
									href="http://demo.themegrill.com/spacious/shop/">아파트정보</a>
									<ul class="sub-menu">
										<li id="menu-item-255"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-255"><a
											href="http://demo.themegrill.com/spacious/cart/">부동산뉴스</a></li>
										<li id="menu-item-256"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-256"><a
											href="http://demo.themegrill.com/spacious/my-account/">아파트시세</a></li>
										<li id="menu-item-255"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-255"><a
											href="http://demo.themegrill.com/spacious/cart/">아파트이미지</a></li>
										<li id="menu-item-256"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-256"><a
											href="http://demo.themegrill.com/spacious/my-account/">CCTV정보</a></li>
										<li id="menu-item-255"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-255"><a
											href="http://demo.themegrill.com/spacious/cart/">주변정보</a></li>


									</ul></li>
								<li id="menu-item-105"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-105"><a
									href="http://demo.themegrill.com/spacious/layout/">부동산 거래</a>
									<ul class="sub-menu">
										<li id="menu-item-109"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-109"><a
											href="http://demo.themegrill.com/spacious/layout/left-sidebar/">부동산뉴스</a></li>
										<li id="menu-item-108"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-108"><a
											href="http://demo.themegrill.com/spacious/layout/right-sidebar/">아파트시세</a></li>
										<li id="menu-item-106"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-106"><a
											href="http://demo.themegrill.com/spacious/layout/no-sidebar-full-width/">아파트이미지</a></li>
										<li id="menu-item-107"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-107"><a
											href="http://demo.themegrill.com/spacious/layout/no-sidebar-content-centered/">CCTV정보</a></li>
									</ul></li>
								<li id="menu-item-52"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-52"><a
									href="http://demo.themegrill.com/spacious/typography/">고객센터</a>
									<ul class="sub-menu">
										<li id="menu-item-106"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-109"><a
											href="http://demo.themegrill.com/spacious/layout/left-sidebar/">FAQ</a></li>
										<li id="menu-item-107"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-108"><a
											href="http://demo.themegrill.com/spacious/layout/right-sidebar/">1:1문의</a></li>
										<li id="menu-item-108"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-106"><a
											href="http://demo.themegrill.com/spacious/layout/no-sidebar-full-width/">공지사항</a></li>
										<li id="menu-item-109"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-106"><a
											href="http://demo.themegrill.com/spacious/layout/no-sidebar-full-width/">가입문의</a></li>
									</ul></li>

								<li id="menu-item-111"
									class="menu-item menu-item-type-custom menu-item-object-custom menu-item-111"><a
									target="_blank"
									href="http://themegrill.com/themes/spacious-pro/">마이페이지</a>
									<ul class="sub-menu">
										<li id="menu-item-110"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-109"><a
											href="http://demo.themegrill.com/spacious/layout/left-sidebar/">아파트그룹</a></li>
										<li id="menu-item-111"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-108"><a
											href="http://demo.themegrill.com/spacious/layout/right-sidebar/">개인정보관리</a></li>
										<li id="menu-item-112"
											class="menu-item menu-item-type-post_type menu-item-object-page menu-item-106"><a
											href="http://demo.themegrill.com/spacious/layout/no-sidebar-full-width/">마이페이지</a></li>
									</ul></li>

							</ul>
						</div>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>