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
	
	AptService service = AptService.getInstance();
	 ListModel list= service.ListComplaintManage(request, pageNum);
	  
	 request.setAttribute("list", list);
	
%>   
 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
			<a href="mypage.jsp?body2=complaintDetail.jsp?b_id=${complaint.cp_complaintNo}">${complaint.cp_title }</a></td>
 			<td align="center">${complaint.m_memberNo}</td>
			<td align="left">
 			<td align="center">${complaint.cp_ref}</td>
	<%-- 		<td align="center">
			<fmt:formatDate value="${complaint.b_date}" pattern="yyyy-mm-dd"/> 
			</td> --%>
		</c:forEach>
	</table>
	<br><br>
   <!-- 페이징처리 -->
   <!-- 현재페이지, 페이지당갯수, 총글갯수, 총페이지갯수, 시작페이지, 마지막페이지 -->
   <c:if test="${listModel.startPage > 5}">
      <a href="list.jsp?pageNum=${listModel.startPage -5 }">[이전]</a>
   </c:if>
   
   <c:forEach var="pageNo" begin="${listModel.startPage }" end="${listModel.endPage }">
   		
   		<c:choose>
   			<c:when test="${listModel.requestPage == pageNo }">
    		  <b><a href="list.jsp?pageNum=${pageNo }">[${pageNo }]</a></b>
   			</c:when>
   			<c:otherwise>
  		    <a href="list.jsp?pageNum=${pageNo }">[${pageNo }]</a>
   			</c:otherwise>
   		</c:choose>
   </c:forEach>
      	<c:if test="${listModel.endPage < listModel.totalPageCount}">
     	 <a href="list.jsp?pageNum=${listModel.startPage +5 }">[다음]</a>
      	</c:if>
	<Br>
	<Br>

	
</body>
</html>