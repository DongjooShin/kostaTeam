<%@page import="apt.classes.Message"%>
<%@page import="apt.dao.AptService"%>
<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<%
	request.setCharacterEncoding("utf-8");
%>

<%
	if (session.getAttribute("id") != null) {
		System.out.println("메세지ok로그인 유지!");
		String id = (String) session.getAttribute("id");
		request.setAttribute("id", id);

	}


%>

<jsp:useBean id="message" class="apt.classes.Message"></jsp:useBean>
<jsp:setProperty property="*" name="message" />

<%
	/* 	String sendto =request.getParameter("sendto");  //받는사람 ID
	 String message1 =request.getParameter("message"); //보내는 내용 
	
	 message.setMg_content(message1);
	 message.setMg_to(sendto); */

	AptService service = AptService.getInstance();
	service.insertMsg(message);

	response.sendRedirect("aptMessageOkdelect.jsp");
	
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