<%@page import="apt.classes.Member"%>
<%@page import="apt.dao.AptService"%>
<%@page import="apt.classes.Candidate"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
    	//String candi_id = request.getParameter("candi_id");
    	String candi_id = "tndus92";
    	String img_name = request.getParameter("img_name");
    	String symbol = request.getParameter("new_symbol");
    	String eduLevel = request.getParameter("new_eduLevel");
    	String job = request.getParameter("new_job");
    	String career = request.getParameter("new_career");
    	String promise = request.getParameter("new_promise");
    	int isymbol=0;
    	if(symbol != null){
    		isymbol = Integer.parseInt(symbol);
    	}
    	AptService aptService = AptService.getInstance();
    	Integer re = aptService.searchSymbolService(isymbol);
    	//1. 회원의 id 가 null이 아닌지 확인.
    	
    	if(candi_id == null){
    		
    		RequestDispatcher rd = request.getRequestDispatcher("detail.jsp");
            rd.forward(request, response);
    	}
    	Member m = aptService.selectOneMemberService(candi_id);
    	//2. symbol이 중복되지 않는지 확인.
    	if(re != null){
    		
    	}
    	int no = 0;
    	no = aptService.maxCandiNoService(); 
    	Candidate c = new Candidate(no,"입주자대표",isymbol,eduLevel,job,
    			career,promise,candi_id,m.getApt_APTGNo(),img_name);
    	
    %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</html>