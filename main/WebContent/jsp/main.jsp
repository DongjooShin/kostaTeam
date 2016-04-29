<%@page import="apt.dao.AptService"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	/* Enumeration attr = session.getAttributeNames(); */
	String body = request.getParameter("body");
	out.print(body);
	if(body ==null){
	body = "Publicmanage.jsp";
	}
	
	int check = -1;
	if (session.getAttribute("id") != null) {
		System.out.println("로그인 유지!");
		String id = (String) session.getAttribute("id");
		request.setAttribute("id", id);
		check = 1;
	}
	request.setAttribute("check", check);
	request.setAttribute("body", body);
	
	
	
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>

	<div class="header">
		<c:if test="${check ==1 }">
			<jsp:include page="header.jsp?id=${id }"></jsp:include>
		</c:if>
		
		<c:if test="${check ==-1 }">
			<jsp:include page="header.jsp"></jsp:include>
		</c:if>
	</div> 
	<div class="main">
		 <jsp:include page="${body }"></jsp:include> 
	</div>
	<div class="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>