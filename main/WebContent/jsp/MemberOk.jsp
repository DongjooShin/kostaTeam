<%@page import="apt.dao.AptService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
	<jsp:useBean id="member" class="apt.classes.Member"></jsp:useBean>
 	<jsp:setProperty property="*" name="member"/>
<%
	
	member.sumPhoneNum();
	member.sumTellNum();
	
	
	AptService aptService = AptService.getInstance();

	aptService.insertMemberService(member);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>