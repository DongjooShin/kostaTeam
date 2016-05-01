<%@page import="apt.classes.Message"%>
<%@page import="apt.dao.AptService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%
	request.setCharacterEncoding("utf-8");

if (session.getAttribute("id") != null) {
	System.out.println("apt디테일 로그인 유지!");
	String id = (String) session.getAttribute("id");
	request.setAttribute("id", id);

}


	String b ="";
	
	b = request.getParameter("mg_messageNo");
	
	
	
	int m_no = 0;
	if(b != null){
		m_no = Integer.parseInt(b);
		System.out.print(b+"입니다.");
		
	AptService service = AptService.getInstance();
	
	Message message = service.selectMsg(m_no);
	
	request.setAttribute("m_no", m_no);
	
	request.setAttribute("message", message);
	}
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Contact Form Template</title>

<!-- CSS -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet" href="../css/Min/assets1/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../css/Min/assets1/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="../css/Min/assets1/css/form-elements.css">
<link rel="stylesheet" href="../css/Min/assets1/css/style.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

<!-- Favicon and touch icons -->
<link rel="shortcut icon" href="../css/Min/assets1/ico/favicon.png">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="../css/Min/assets1/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="../css/Min/assets1/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="../css/Min/assets1/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="../css/Min/assets1/ico/apple-touch-icon-57-precomposed.png">


</head>
<body>




<script type="text/javascript">

</script>

<form action="aptMessageOk.jsp" method="post">
								
	<div class="top-content">

		<div class="inner-bg">
			<div class="container">

				<div class="row">
					<div class="col-sm-6 col-sm-offset-3 form-box">
						<div class="form-top">
							<div class="form-top-left">
								<h3>메세지</h3>
								<p>메세지</p>
							</div>
							<div class="form-top-right">
								<i class="fa fa-envelope"></i>
							</div>
						</div>
						<div class="form-bottom contact-form">



	
							<div class="form-group">	
							<p class="white" style="float: left; margin-right: 10px; ">보내는사람 :</p>
							
						
								<label class="sr-only" for="contact-email">Email</label> <input
									type="text" name="m_memberNo" class="contact-email form-control"
									id="contact-email" value="${message.mg_from }" disabled="disabled" style="height: 30px; width: 150px;">
							</div>
							<div class="form-group">
							<p class="white" style="float: left; margin-right: 25px; ">받는사람 :</p>
								<input
									type="text" name="m_memberNo" class="contact-email form-control"
									id="contact-email" value="${message.mg_to }" disabled="disabled" style="height: 30px; width: 150px;">
							</p>
							
							</div>
						
							<div class="form-group" style="float: none;">
								<p class="white">내용 :</p>
								</div>
								<textarea name="mg_content" style="width: 100%; height: 150px;" >${message.mg_content }</textarea>
								<input type="hidden" name="mg_state" value="f">
								<input type="hidden" name="mg_from" value=${id }>
								<input type="button" onclick="javascript:self.close()" class="btn" value="확인" style="margin-left: 40%; margin-top: 5%" >
								
								
						
							<!--     <form action="aptMessageOk.jsp" method="post">
			                    <label class="sr-only" for="contact-message">Message</label>
			                      
			                    <input type="submit" class="btn" value="보내기">
			                 
			                 
			                    <form action="aptMessageOk.jsp" method="post">
								
								<input type="text" name="message" >
								<input type="submit" value="보내기">
									</form>
									
									
			                    </form> -->
<!-- 
<textarea name="message" placeholder="Message..."
									class="contact-message form-control" id="contact-message"></textarea> -->
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

</form>	
	<!-- Javascript -->
	<script src="../css/Min/assets1/js/jquery-1.11.1.min.js"></script>
	<script src="../css/Min/assets1/bootstrap/js/bootstrap.min.js"></script>
	<script src="../css/Min/assets1/js/jquery.backstretch.min.js"></script>
	<script src="../css/Min/assets1/js/retina-1.1.0.min.js"></script>
	<script src="../css/Min/assets1/js/scripts.js"></script>
	
	
	
	
	






<%-- 

<div class="container" style="margin-top: 35px">
<div class="row">
			<div class="col-md-2">
				<div class="sidebar content-box" id="sidebarBoard"
					style="display: block;">
					<ul class="nav">
						<!-- Main menu -->
						<li class="current"><a href="messgeread.jsp"><i
								class="glyphicon glyphicon-home"></i> 메세지함</a></li>
						<li><a href="messgesender.jsp"><i
								class="glyphicon glyphicon-calendar"></i>보낸메세지</a></li>
						<li><a href="messgeread.jsp"><i
								class="glyphicon glyphicon-stats"></i> 받은메세지</a></li>
						<li><a href="tables.html"><i
								class="glyphicon glyphicon-list"></i> 월세</a></li>
						
					
					</ul>
				</div>
			</div>
			
<div class="col-md-9">

  <div class="page-header page-heading">
    <h1 class="pull-left">받은메세지함</h1>
    <ol class="breadcrumb pull-right where-am-i">
      <li><a href="#">Forums</a></li>
      <li class="active">List of topics</li>
    </ol>
    <div class="clearfix"></div>
  </div>
  <p class="lead">This is the right place to discuss any ideas, critics, feature requests and all the ideas regarding our website. Please follow the forum rules and always check FAQ before posting to prevent duplicate posts.</p>
  <table class="table forum table-striped">
    <thead>
      <tr>
       <th align="center" class="cell-stat-2x hidden-xs hidden-sm">메세지번호</th>
        <th align="center" class="cell-stat-2x hidden-xs hidden-sm">보낸사람</th>
		<th align="center" class="cell-stat-2x hidden-xs hidden-sm">받는사람</th>
        <th align="center" class="cell-stat-2x hidden-xs hidden-sm">내용</th>
        <th align="center" class="cell-stat-2x hidden-xs hidden-sm">작성일자</th>
     
			
      </tr>
    </thead>
    <tbody>
    
      <tr>
       
        <td align="center">
          <h4>${message.mg_messageNo }</h4>
        </td>
        <td align="center" class="text-center hidden-xs hidden-sm">${message.mg_from }</td>
        <td align="center" class="text-center hidden-xs hidden-sm">${message.mg_to }</td>
        
        <td align="center" class="text-center hidden-xs hidden-sm"><a href="messgeListDetail.jsp?mg_messageNo=${message.mg_messageNo }">${message.mg_content }</a></td>
        <td align="center" class="hidden-xs hidden-sm"><fmt:formatDate value="${message.mg_date }"
						pattern="yyyy-MM-dd" /></td>
		
      </tr>
 
      
    
 
	
    </tbody>
  </table>
 
	</div>
	</div>
	</div>
	
	
	
	
	

 --%>




<%-- 


<table border="1" cellpadding="0" cellspacing="0">
		<tr height="30">
			<th width="50">메세지번호</th>
			<th width="100">보낸사람</th>
			<th width="100">받는사람</th>
			<th width="250">내용</th>
			<th width="150">작성일자</th>
			
		

		</tr>
		
			<tr height="30">
				<td align="center">${message.mg_messageNo }</td>
				<td align="center">${message.mg_from }</td>
				<td align="center">${message.mg_to }</td>
				<td align="left">
				 <a href="messgeListDetail.jsp?mg_messageNo=${message.mg_messageNo }">${message.mg_content }</a></td>
				
		 	<td align="center"><fmt:formatDate value="${message.mg_date }"
						pattern="yyyy-MM-dd" /></td> 
				
				 
				
			</tr>
	
	</table> --%>
	

</html>