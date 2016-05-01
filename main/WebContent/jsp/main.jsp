<%@page import="javafx.stage.Window"%>

<%@page import="com.sun.glass.events.WindowEvent"%>


<%@page import="com.sun.java.swing.plaf.windows.resources.windows_ko"%>
<%@page import="com.sun.java.swing.plaf.windows.resources.windows_de"%>
<%@page import="apt.classes.SurveyDB"%>
<%@page import="java.net.URL"%>

<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="apt.dao.AptService"%>
<%@page import="apt.classes.Member"%>
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
	body = "start.jsp";
	}
	
	int check = -1;
	
	if (session.getAttribute("id") != null) {
		System.out.println("로그인 유지!");
		String id = (String) session.getAttribute("id");
		request.setAttribute("id", id);
		check = 1;
		
		//로그인되어있으면 아파트그룹번호를찾는다.
		AptService service = AptService.getInstance();
		Member member = service.selectAptgroup(id);
		int Bb2 = -1;
		Bb2 = member.getApt_APTGNo();
		if(Bb2 != -1){
			
			session.setAttribute("APTNO", Integer.toString(Bb2));
			request.setAttribute("APTNO", Bb2);
			
			}
		}
	
	
		

	
	
	request.setAttribute("check", check);
	
	
/* 
	String id ="abc123";
	AptService service = AptService.getInstance();
	Member member = service.selectAptgroup(id);
	int Bb2 = member.getApt_APTGNo();

	 */
	request.setAttribute("body", body);
	
	
	
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

</script>
<!-- <script type="text/javascript">

window.open("surveyRegistdeliver.jsp", "n", "height=500,width=600 ,scrollbars=yes");

</script>  -->
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