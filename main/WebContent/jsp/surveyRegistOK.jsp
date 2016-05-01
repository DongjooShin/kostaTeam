<%@page import="apt.dao.AptService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("utf-8");

String id = "";

String pageNum  = request.getParameter("pageNum");
int APTNO1 =0;
if (session.getAttribute("id") != null) {
	System.out.println("apt디테일 로그인 유지!");
	id = (String) session.getAttribute("id");
	request.setAttribute("id", id);

}if (session.getAttribute("APTNO") != null) {
	System.out.println("aptsale 아파트넘버 유지!");
	String APTNO = (String) session.getAttribute("APTNO");
//	System.out.print(APTNO+"아파트그룹번호읻");
	APTNO1 = Integer.parseInt(APTNO);
	request.setAttribute("APTNO", APTNO);

}



	AptService service = AptService.getInstance();
	int re = service.insertSurvey(request, APTNO1);
	
	if(re >0){
		response.sendRedirect("surveyRegistdeliver.jsp");
	}else{
		response.sendRedirect("");
	}

%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
OK하자

</body>
</html>