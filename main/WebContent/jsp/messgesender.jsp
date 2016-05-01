<%@page import="apt.dao.M_PropertDao"%>
<%@page import="apt.mapper.M_signupMapper"%>
<%@page import="apt.classes.ListModel2"%>
<%@page import="apt.dao.AptService"%>
<%@page import="apt.classes.ListModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

    
<%
	request.setCharacterEncoding("utf-8");

String pageNum  = request.getParameter("pageNum");
String id = "";
if (session.getAttribute("id") != null) {
	System.out.println("apt디테일 로그인 유지!");
	id = (String) session.getAttribute("id");
	request.setAttribute("id", id);

}


if(pageNum == null){
	pageNum = "1";
	
}



/* String memberno = request.getParameter("m_memberNo");
System.out.println(memberno);
String m_memberNo ="";
if(memberno !=null){			********************** //이러면안되고 세션값을가져와야대*******************
	m_memberNo = m_memberNo;
} */


int requestPage = Integer.parseInt(pageNum);

AptService service = AptService.getInstance();




 ListModel2 listModel2 = service.listAPTSale3(requestPage, request,id);


request.setAttribute("listModel2", listModel2);

%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="../css/Min/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../css/Min/bootstrap/css/styles.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="http://snipplicious.com/css/bootstrap-3.1.1.min.css">

<link rel="stylesheet" type="text/css" href="http://snipplicious.com/css/font-awesome-4.0.3.min.css">
<style>
.forum.table > tbody > tr > td {
    vertical-align: middle;
}

.forum .fa {
    width: 1em;
    text-align: center;
}

.forum.table th.cell-stat {
    width: 6em;
}

.forum.table th.cell-stat-2x {
    width: 14em;
    text-align: center;
}

.pagecenter{

	width: 100%;
	text-align: center;
}
.col-md-2{
	margin-top : 10%;


} 
row{
width: 100%;
}
.container{
	width: 100%;
}
</style>
<script src="http://snipplicious.com/js/jquery.js"></script>
<script src="http://snipplicious.com/js/bootstrap.min.js"></script>

<title>Insert title here</title>

</head>
<body>



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
       <th align="center" class="cell-stat-2x hidden-xs hidden-sm">받은메세지함</th>
        <th align="center" class="cell-stat-2x hidden-xs hidden-sm">메세지번호</th>
		<th align="center" class="cell-stat-2x hidden-xs hidden-sm">받는사람</th>
        <th align="center" class="cell-stat-2x hidden-xs hidden-sm">내용</th>
        <th align="center" class="cell-stat-2x hidden-xs hidden-sm">작성일자</th>
        <th align="center" class="cell-stat-2x hidden-xs hidden-sm">확인유무</th>
  
			
    <form action="messgeread.jsp" method="post">	
		 <th class="cell-stat-2x hidden-xs hidden-sm">
		<input type="submit" value="삭제하기">
		</th>
      </tr>
    </thead>
    <tbody>
    	<c:forEach var="message" items="${listModel2.list }">
    	
      <tr>
        <td class="text-center"><i class="fa fa-question fa-2x text-primary"></i></td>
        <td align="center">
          <h4>${message.mg_messageNo }</h4>
        </td>
        <td align="center" class="text-center hidden-xs hidden-sm">${message.mg_from }</td>
        <td align="center" class="text-center hidden-xs hidden-sm"> <a href="messgeListDetail.jsp?mg_messageNo=${message.mg_messageNo }">${message.mg_content }</a></td>
        <td align="center" class="hidden-xs hidden-sm"><fmt:formatDate value="${message.mg_date }"
						pattern="yyyy-MM-dd" /></td>
		<td align="center" class="text-center hidden-xs hidden-sm">${message.mg_state }</td>
		<td align="center" class="text-center hidden-xs hidden-sm"><input type="checkbox" name="delect" value="${message.mg_messageNo }"></td>

	
		
      </tr>
      </c:forEach>
      
      </form>
 
	
    </tbody>
  </table>
  
  <div class="pagecenter">
     	
    		<c:if test="${listModel2.startPage > 5 }">
		<a href="messgeread.jsp?pageNum=${listModel2.startPage-5 }">[이전]</a>
	</c:if>


	<c:forEach var="pageNum" begin="${listModel2.startPage }"
		end="${listModel2.endPage }">
		<c:choose>
			<c:when test="${listModel2.requestPage == pageNum}">
				<a href="messgeread.jsp?pageNum=${pageNum}"><b>[ ${pageNum} ]</b></a>
			</c:when>
			<c:otherwise>
				<a href="messgeread.jsp?pageNum=${pageNum}">[ ${pageNum} ]</a>
			</c:otherwise>
		</c:choose>

	</c:forEach>


	<c:if test="${listModel2.endPage < listModel2.totalPageCount }">
		<a href="messgeread.jsp?pageNum=${listModel2.startPage+5 }">[다음]</a>
	</c:if>
	<br>
	<br>

	<form action="messgeread.jsp" method="post">
		<input type="checkbox" name="area" value="mg_content">내용
		<input type="checkbox" name="area" value="mg_to">받는사람
		<input type="text" name="searchKey" size="10">
		<input type="hidden" name="temp" value="temp">
		<input type="hidden" name="m_memberNo" value="abc123">
		<input type="submit" value="검색">
			<!-- 이거 pr이어야 검색되겟다 -->

	</form>
	</div>
	</div>
	</div>
	</div>
	
	








<%-- 
<h3>글목록 보기</h3>

	<a href="insertform.jsp">보낸메세지함</a>
	
	
	<table border="1" cellpadding="0" cellspacing="0">
		<tr height="30">
			<th width="50">메세지번호</th>
			<th width="100">보낸사람</th>
			<th width="250">내용</th>
			<th width="150">작성일자</th>
			<th width="150">확인유무</th>
			
			
		<form action="messgesender.jsp" method="post">	
		<th width="150">
		<input type="submit" value="삭제하기">
		</th>
		</tr>
		<c:forEach var="message" items="${listModel2.list }">
			<tr height="30">
				<td align="center">${message.mg_messageNo }</td>
				<td align="center">${message.mg_from }</td>
				<td align="left">
				 <a href="messgeListDetail.jsp?mg_messageNo=${message.mg_messageNo }">${message.mg_content }</a></td>
				
		 	<td align="center"><fmt:formatDate value="${message.mg_date }"
						pattern="yyyy-MM-dd" /></td> 
				<td align="center">${message.mg_state }</td>
				<td align="center">
				
				<input type="checkbox" name="delect" value="${message.mg_messageNo }">
				
				
				</td>
				 
				
			</tr>
		</c:forEach>
		
		</form>
	</table>
	<br>
	<br>

	<!-- 페이징 처리  -->
	<!-- 현재페이지, 페이지당글 갯수, 총 글갯수, 총페이지갯수, 시작페이지, 마지막페이지  -->

	<c:if test="${listModel2.startPage >5 }">
		<a href="messgesender.jsp?pageNum=${listModel2.startPage-5 }">[이전]</a>
	</c:if>


	<c:forEach var="pageNum" begin="${listModel2.startPage }"
		end="${listModel2.endPage }">
		<c:choose>
			<c:when test="${listModel2.requestPage == pageNum}">
				<a href="messgesender.jsp?pageNum=${pageNum}"><b>[ ${pageNum} ]</b></a>
			</c:when>
			<c:otherwise>
				<a href="messgesender.jsp?pageNum=${pageNum}">[ ${pageNum} ]</a>
			</c:otherwise>
		</c:choose>

	</c:forEach>


	<c:if test="${listModel2.endPage < listModel2.totalPageCount }">
		<a href="messgesender.jsp?pageNum=${listModel2.startPage+5 }">[다음]</a>
	</c:if>
	<br>
	<br>

	<form action="messgesender.jsp" method="post">
		<input type="checkbox" name="area" value="mg_content">내용
		<input type="checkbox" name="area" value="mg_to">받는사람
		<input type="text" name="searchKey" size="10">
		<input type="hidden" name="temp" value="temp">
		<input type="hidden" name="m_memberNo" value="abc123">
		<input type="submit" value="검색">
			<!-- 이거 pr이어야 검색되겟다 -->

	</form> --%>

</body>
</html>