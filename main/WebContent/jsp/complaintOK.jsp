<%@page import="apt.dao.AptService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="complain" class="apt.classes.Complaint"></jsp:useBean>
<jsp:setProperty property="*" name="complain"/>
<%
 	 AptService service  = AptService.getInstance();
	String id = (String)session.getAttribute("id");
	String num = request.getParameter("cp_state");
	if(num !=null){
		
		service.updateComplaint(complain);
	}else{
		
		complain.setM_memberNo(id);
		int re = service.inserComplaint(complain);
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
dddddddddd Ok 페이지 입니다 ㅎㅎ
</body>
</html>