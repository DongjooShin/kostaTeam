<%@page import="apt.dao.AptService"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix ="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  
<%
	AptService aptService = AptService.getInstance();
	
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h1>����</h1>
<br>

<c:choose>
<c:when test="">	<!-- case: manager -->




</c:when>
<c:when test="">	<!-- case: resident -->

</c:when>
</c:choose>



</body>
</html>