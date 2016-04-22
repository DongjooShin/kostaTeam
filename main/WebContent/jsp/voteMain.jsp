<%@page import="apt.classes.Member"%>
<%@page import="apt.dao.AptService"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
	AptService aptService = AptService.getInstance();
	
	//m = manager, r = resident

//	request.setAttribute("m", m);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1>선거</h1>
	<br>

	<c:choose>
		<c:when test="${m.getM_grade() == 2 }">
			<!-- case: manager -->
			<c:choose>
				<c:when test="${m.getV_flag() == 1 }">
					<form action="voteCandiRegist.jsp" method="post">
						<div id="vote_back">
							<input type="submit" value="후보자 등록">
						</div>
					</form>
				</c:when>
				<c:when test="${m.getV_flag() == 2 }">

				</c:when>
				<c:when test="${m.getV_flag() == 3 }">
				</c:when>
				<c:when test="${m.getV_flag() == 4 }">
				</c:when>
			</c:choose>
		</c:when>

		<c:otherwise>
			<!-- case: resident -->
			<form action="voteCandiRegist.jsp" method="post">
				<img id="vote_back" alt="" src="../images/jeong/vote_background.jpg"
					width="500" height="500"> <input type="submit" value="후보자 등록">
			</form>
		</c:otherwise>
	</c:choose>



</body>
</html>