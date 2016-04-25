<%@page import="apt.dao.AptService"%>
<%@page import="apt.classes.LoginCheck"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String pass = request.getParameter("formPassword");
	String id = request.getParameter("formUsername");
	System.out.println(id);
	System.out.println(pass);
	
	LoginCheck loginCheck = new LoginCheck();
	loginCheck.setM_memberNo(id);
	loginCheck.setM_pass(pass);
	
	AptService aptService = AptService.getMemberInstance();
	int check = aptService.checkLoginAndPassSerice(loginCheck);
	
	if(check==1){	//일치하는 아이디가 없을경우
		System.out.println("일치하는 아이디가 없습니다");
	
	}else if(check==2){ // 비밀번호가 일치하지 않을경우
		System.out.println("비밀번호가 일치하지 않습니다.");
	
	}else if(check==3){	//로그인 성공
		session.setAttribute("id", id);
		response.sendRedirect("../start1.jsp");
		
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