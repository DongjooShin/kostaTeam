<%@page import="apt.dao.AptService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	AptService service = AptService.getInstance();
    		Object obj=service.selectmanagementfee();
    
    		out.print(obj);
%>    
    
