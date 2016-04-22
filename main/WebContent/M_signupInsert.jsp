<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="apt.dao.M_singupDao" %>

<%
	request.setCharacterEncoding("utf-8");
%>
	<jsp:useBean id="M_signup" class="apt.dao.M_signup"></jsp:useBean>
	<jsp:setProperty property="*" name="M_signup"/>
    
<%

	M_singupDao dao = M_singupDao.getInstance();
	dao.insertBoard(M_signup);
	
	response.sendRedirect("start1.jsp");
%>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>