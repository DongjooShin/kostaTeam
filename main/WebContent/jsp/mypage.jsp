<%@page import="apt.classes.Complaint"%>
<%@page import="apt.dao.AptService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
    <%
   String body2 = request.getParameter("body2");
	 
 	if(body2 ==null){
		
		body2 ="mypagefirst.jsp";
	
	} 
	  request.setAttribute("body2", body2);
 
	
	
 %>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Admin Home Page</title>
        <!-- Bootstrap -->
        <link href="../css/gidae/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="../css/gidae/styles.css" rel="stylesheet" media="screen">
        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
            <script src="../js/gidae/morris/morris-data.js"></script>
               <script src="../js/gidae/morris/raphael.min.js"></script>
    <script src="../js/gidae/morris/morris.min.js"></script>
    <script src="../js/gidae/morris/morris-data.js"></script>
	    <!-- Bootstrap Core CSS -->
    <link href="../css/gidae/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../css/gidae/sb-admin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
	    <!-- jQuery Version 1.11.0 -->
            
    </head>
    
    <body>
    				<div class="col-lg-2"></div>
                    <div class="row-fluid col-lg-8">
                        <div class="alert alert-success">
                            <h4>마이페이지</h4>
                        	</div>
                        	<div class="navbar">
                            	<div class="navbar-inner">
	                                <ul class="breadcrumb">
	                                    <li>
	                                        <a href="#">아파트그룹</a> <span class="divider">/</span>	
	                                    </li>
	                                    <li>
	                                        <a href="#">동게시판</a> <span class="divider">/</span>	
	                                    </li>
	                                    <li>
	                                        <a href="#">관리비</a> <span class="divider">/</span>	
	                                    </li>
	                                    <li>
	                                        <a href="main.jsp?body=mypage.jsp?body2=listComplaint.jsp&&body=mypage.jsp">문의답변</a> <span class="divider">/</span>	
	                                    </li>
	                                    <li>
	                                        <a href="#">건의함(사이트)</a> <span class="divider">/</span>	
	                                    </li>
	                                    <li>
	                                        <a href="#">쪽지함</a> <span class="divider">/</span>	
	                                    </li>
	                                    <li>
	                                        <a href="#">개인정보수정</a> <span class="divider">/</span>	
	                                    </li>
	                                </ul>
                            	</div>
                        	</div>
              <div class="tab-content">
 			
 			<jsp:include page="${body2 }"></jsp:include>
 			
            </div>  
                    	</div>
            <hr>
        <!--/.fluid-container-->
        <script src="../js/gidae/bootstrap.min.js"></script>
    </body>

</html>