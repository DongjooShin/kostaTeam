<%@page import="apt.dao.AptService"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
    String no = request.getParameter("gpm_no");
    int cd_candidateNo=0;
    if(no != null){
    	cd_candidateNo = Integer.parseInt(no);
    }
    
    AptService aptService= AptService.getInstance();
    
    aptService.levelDownGroupPresiService(cd_candidateNo);
     
    response.sendRedirect("voteGroupPresiRegist.jsp");
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