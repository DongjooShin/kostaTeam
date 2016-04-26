<%@page import="apt.classes.PublicManagementFee"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="apt.dao.AptService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="publicManagementFee" class="apt.classes.PublicManagementFee"></jsp:useBean>
<jsp:setProperty property="*" name="publicManagementFee"/>
<%
	// 아파트 번호를 관리자가 로그인 했을 때 계속 끌고 와야할 것 같음
	// String apt_APTGNo = request.getParameter("");
	String year      = request.getParameter("year");
	String month     = request.getParameter("month");
	String pm_date  = year+month;
	
	HashMap<String, PublicManagementFee> map1 = new HashMap<String, PublicManagementFee>();
	HashMap<String, String>              map2 = new HashMap<String, String>();
	
	map1.put("pm", publicManagementFee);
	map2.put("pm_date", pm_date);
	
	AptService service = AptService.getInstance();
	service.insertPublicMntFeeService(map1, map2);	
	
%>
 
<!-- PublicManagementFeeInsert 처리하는 Action.jsp -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>