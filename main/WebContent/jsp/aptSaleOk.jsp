<%@page import="apt.dao.AptService"%>
<%@page import="apt.dao.M_PropertDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--     
<%
	request.setCharacterEncoding("utf-8");
%>    
<jsp:useBean id="property" class="apt.classes.Property"></jsp:useBean>
<<jsp:setProperty property="*" name="property"/>

<%
	M_PropertDao dao = M_PropertDao.getInstance();
	dao.insertAPTsale(property);
	
	response.sendRedirect("sidebar.jsp");
	
%> --%>
    
    <% 
    	request.setCharacterEncoding("utf-8");
    


	if (session.getAttribute("id") != null) {
		System.out.println("아파트ok로그인 유지!");
		String id = (String) session.getAttribute("id");
		request.setAttribute("id", id);

	}
	
	



    	AptService service = AptService.getInstance();
    	int re = service.insertProperty(request);
    	
    	
    	if(re>0){
    		response.sendRedirect("aptSaleList.jsp");
    	}else{
    		response.sendRedirect("aptSale.jsp");
    	}
    
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