<%@page import="apt.dao.AptService"%>
<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");

	AptService aptService = AptService.getMemberInstance();
	int check = -1;
	check = aptService.checkMemberIdService(id);

	request.setAttribute("check", check);
	request.setAttribute("id", id);
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript">
	function setid() {
		opener.document.userInput.m_memberNo.value = "${id}";
		opener.document.userInput.idCheck.value = "1";
		self.close();
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${check ==1 }">
	<p>입력하신${id }은 사용가능합니다.</p>

	<input type="button" value="사용하기" onclick="setid()">
	</c:if>
	
	<c:if test="${check ==-1 }">
	<p>입력하신${id }은 이미 사용중인 id 입니다.</p>
	<p>다른아이디를 선택하세요</p><br>
	
	<form action="confirmId.jsp" method="post">
		<input type="text" name="id" />
		<input type="submit" value="ID중복확인">
	
	</form>
	
	</c:if>
	
	

</body>
</html>


















