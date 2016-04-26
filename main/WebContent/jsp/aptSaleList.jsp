<%@page import="apt.classes.ListModel"%>
<%@page import="apt.dao.AptService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%

	request.setCharacterEncoding("utf-8");

	String pageNum  = request.getParameter("pageNum");
	
	
	
	if(pageNum == null){
		pageNum = "1";
		
	}
	
	int requestPage = Integer.parseInt(pageNum);
	
	AptService service = AptService.getInstance();
	ListModel listModel = service.listAPTSale(requestPage, request);
	
	request.setAttribute("listModel", listModel);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>글목록 보기</h3>
	<a href="insertform.jsp">글쓰기</a>

	<table border="1" cellpadding="0" cellspacing="0">
		<tr height="30">
			<th width="50">건물명</th>
			<th width="100">이미지</th>
			<th width="250">제목</th>
			<th width="150">회원아이디</th>
			<th width="150">작성일</th>
			<th width="100">분류</th>

		</tr>
		<c:forEach var="property" items="${listModel.list }">
			<tr height="30">
				<td align="center">${property.pr_APTName }</td>
				<td align="center"><c:if test="${property.pr_imageName != null}">
				
						<c:set var="head"
							value="${fn:substring(property.pr_imageName,0,fn:length(property.pr_imageName)-4) }"></c:set>
						<c:set var="pattern"
							value="${fn:substringAfter(property.pr_imageName, head) }"></c:set>
						 <img src="../M_upload1/${head }_small${pattern}" /> 
						
					</c:if></td>

				<td align="left">
				 <a href="aptSaledetail.jsp?pr_propertyNo=${property.pr_propertyNo }">${property.pr_APTName }</a></td>
				<td align="center">${property.pr_APTName }</td>
		 	<td align="center"><fmt:formatDate value="${property.pr_date }"
						pattern="yyyy-MM-dd" /></td> 
				 
				
			</tr>
		</c:forEach>
	</table>
	<br>
	<br>

	<!-- 페이징 처리  -->
	<!-- 현재페이지, 페이지당글 갯수, 총 글갯수, 총페이지갯수, 시작페이지, 마지막페이지  -->

	<c:if test="${listModel.startPage >5 }">
		<a href="aptSaleList.jsp?pageNum=${listModel.startPage-5 }">[이전]</a>
	</c:if>


	<c:forEach var="pageNum" begin="${listModel.startPage }"
		end="${listModel.endPage }">
		<c:choose>
			<c:when test="${listModel.requestPage == pageNum}">
				<a href="aptSaleList.jsp?pageNum=${pageNum}"><b>[ ${pageNum} ]</b></a>
			</c:when>
			<c:otherwise>
				<a href="aptSaleList.jsp?pageNum=${pageNum}">[ ${pageNum} ]</a>
			</c:otherwise>
		</c:choose>

	</c:forEach>


	<c:if test="${listModel.endPage < listModel.totalPageCount }">
		<a href="aptSaleList.jsp?pageNum=${listModel.startPage+5 }">[다음]</a>
	</c:if>
	<br>
	<br>

	<form action="aptSaleList.jsp" method="post">
		<input type="checkbox" name="area" value="b_title">제목 <input
			type="checkbox" name="area" value="b_name">작성자 <input   
			type="text" name="searchKey" size="10"> <input type="hidden"
			name="temp" value="temp"> <input type="submit" value="검색">
			<!-- 이거 pr이어야 검색되겟다 -->

	</form>

</body>
</html>