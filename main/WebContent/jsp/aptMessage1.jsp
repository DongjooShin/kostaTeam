<%@page import="apt.classes.Property"%>
<%@page import="apt.dao.AptService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	if (session.getAttribute("id") != null) {
		System.out.println("메세지로그인 유지!");
		String id = (String) session.getAttribute("id");
		request.setAttribute("id", id);

	}
%>



<%
	request.setCharacterEncoding("utf-8");
	
	String id2 = null;
	
	id2 = request.getParameter("m_memberNo");

	String m_id ="";
	if(id2 !=null){
		m_id = id2;
	}
	
	AptService service = AptService.getInstance();
	Property property = service.selectM_id(m_id);
	
	request.setAttribute("property", property);
	
%>


 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <title>Boostrap Validator</title>
  <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>  
  <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>  
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.min.css"/>
  <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"> </script>
</head>


<body>
    <br/><br/><br/>
    
 
    <section id="plans">
        <div class="container">
            <div class="row">
<form id="contactForm" method="post" class="form-horizontal">
      <div class="form-group">
        <label class="col-md-3 control-label">받는 사람</label>
        <div class="col-md-6">
            	하 왜 int지? <%-- <%=property.getM_memberNo() %> --%>
        </div>
    </div>
  
    <div class="form-group">
        <label class="col-md-3 control-label">연락처</label>
        <div class="col-md-6">
            <input type="text" class="form-control" name="fullName" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-3 control-label">Email</label>
        <div class="col-md-6">
            <input type="text" class="form-control" name="email" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-3 control-label">제목</label>
        <div class="col-md-6">
            <input type="text" class="form-control" name="title" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-3 control-label">내용</label>
        <div class="col-md-6">
            <textarea class="form-control" name="content" rows="5"></textarea>
        </div>
    </div>
    <!-- #messages is where the messages are placed inside -->
    <div class="form-group">
        <div class="col-md-9 col-md-offset-3">
            <div id="messages"></div>
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-9 col-md-offset-3">
            <button type="submit" class="btn btn-default">보내기</button>
        </div>
    </div>
</form>
</div>
        </div>
    </section>
    <!-- /Plans -->
<script type="text/javascript">

</script>
</body>