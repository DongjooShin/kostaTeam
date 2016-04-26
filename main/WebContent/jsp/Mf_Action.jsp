<%@page import="java.util.ArrayList"%>
<%@page import="apt.classes.ManagementFee"%>
<%@page import="java.util.HashMap"%>
<%@page import="apt.classes.Member"%>
<%@page import="java.util.List"%>
<%@page import="apt.dao.AptService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!-- ManagementFeeInsert 처리하는 Action.jsp -->
<jsp:useBean id="managementFee" class="apt.classes.ManagementFee"></jsp:useBean>
<jsp:setProperty property="*" name="managementFee"/>

<%
	// 회원아이디를 구하기 위해 동 호수를 가져옴
	String s_buildingNo = request.getParameter("buildingNo");
	String s_roomNo     = request.getParameter("roomNo");
	String year         = request.getParameter("year");
	String month        = request.getParameter("month");
	String date = year+month;
	System.out.println(date);
	
	int buildingNo = 0, roomNo = 0;
	
	if(s_buildingNo != null && s_roomNo != null){
		buildingNo = Integer.parseInt(s_buildingNo);
		roomNo     = Integer.parseInt(s_roomNo);
	}
	
	AptService service = AptService.getInstance();
	List<Member> list = service.selectMemberService(buildingNo, roomNo);
	
	//아이디 얻어옴
	String [] m_memberNo = new String [list.size()];
	for(int i=0;i<list.size();i++){
		 m_memberNo[i] = list.get(i).getM_memberNo();
	}
	
	//멤버아이디출력 test
	for(int i=0;i<m_memberNo.length;i++){
		System.out.println(m_memberNo[i]);
		
	}
	
	HashMap<String, ManagementFee> map1 = new HashMap<String, ManagementFee>();
	HashMap<String, String>        map2 = new HashMap<String, String>();
	int re = 0;
	for(int i=0;i<m_memberNo.length;i++){
		
		map1.put("mf", managementFee);
		map2.put("m_memberNo", m_memberNo[i]);
		map2.put("mf_date", date);
		service.insertManagementFeeService(map1, map2);
	} 
	
	//service.updateManagementFeeService(management);
	
	/* List list2 = new ArrayList();
	list2.add(managementFee);
	list2.add(m_memberNo);
	
	service.insertManagementFeeService(list2);
	 */
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//String id = list.get(0).getM_memberNo();
		//System.out.println(id);
		
		
		
	%>
</body>
</html>