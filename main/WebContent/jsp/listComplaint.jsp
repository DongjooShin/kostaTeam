<%@page import="apt.classes.ListModel"%>
<%@page import="apt.dao.AptService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%
	String pageNum = request.getParameter("pageNum");

	if(pageNum ==null){
		pageNum ="1";
	}
	
	int requestPage =Integer.parseInt(pageNum);
	AptService service = AptService.getInstance();
	 ListModel list= service.listComplaint(request,pageNum);
	 request.setAttribute("list", list);
	
%>   
 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function next() {
	window.location.href="main.jsp?body=mypage.jsp?body2=../plugins/gidae/smart/SmartEditor2.jsp";
}

</script>
</head>
<body>
	<H3>글목록보기</H3>
	<a href="insertform.jsp">글쓰기</a>
	<table border="1">
		<tr height="30">
			<th width="50">번호</th>
			<th width="250">제목</th>
			<th width="150">작성자</th>
			<th width="150">작성일</th>
			<th width="150">처리상태</th>
		</tr>
		
		<c:forEach var="complaint" items="${list.list}">
		<tr height="30">
			<td align="center">${complaint.cp_complaintNo}</td>
			<td align="center">
			<a href="main.jsp?body=mypage.jsp?body2=complaintDetail.jsp?b_id=${complaint.cp_complaintNo}">${complaint.cp_title }</a></td>
 			<td align="center">${complaint.m_memberNo}</td>
			<td align="left">${complaint.cp_date} </td>
			
			<c:if test="${complaint.cp_state==1}">
 			<td align="center">처리대기중</td>
			</c:if>
		</c:forEach>
	</table>
	<br><br>
   <!-- 페이징처리 -->
   <!-- 현재페이지, 페이지당갯수, 총글갯수, 총페이지갯수, 시작페이지, 마지막페이지 -->
   <c:if test="${list.startPage > 5}">
      <a href="list.jsp?pageNum=${list.startPage -5 }">[이전]</a>
   </c:if>
   
   <c:forEach var="pageNo" begin="${list.startPage }" end="${list.endPage }">
   		
   		<c:choose>
   			<c:when test="${list.requestPage == pageNo }">
    		  <b><a href="mypage.jsp?body2=listComplaint.jsp?pageNum=${pageNo }">[${pageNo }]</a></b>
   			</c:when>
   			<c:otherwise>
  		    <a href="mypage.jsp?body2=listComplaint.jsp?pageNum=${pageNo }">[${pageNo }]</a>
   			</c:otherwise>
   		</c:choose>
   </c:forEach>
      	<c:if test="${list.endPage < list.totalPageCount}">
     	 <a href="mypage.jsp?body2=listComplaint.jsp?pageNum=${list.startPage +5 }">[다음]</a>
      	</c:if>
	<input type="button" onclick="next()" value="글쓰기"/>
	<Br>
	<Br>

	
</body>
</html>