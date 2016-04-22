<%@page import="apt.classes.Member"%>
<%@page import="apt.dao.AptService"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix ="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  
<%
	AptService aptService = AptService.getInstance();
	Member m = new Member("temp","1234",21,101, 108,"홍길동","temp@naver.com",2,"두산위브","021112222","01033334444",1);
	//m = manager, r = resident
			
	request.setAttribute("m", m);
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
<c:when test="${m.getM_grade() == 2 }">	<!-- case: manager -->




</c:when>
<c:otherwise>	<!-- case: resident -->

</c:otherwise>
</c:choose>



</body>
</html>