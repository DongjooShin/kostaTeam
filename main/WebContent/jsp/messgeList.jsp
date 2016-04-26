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

 ListModel2 listModel2 = service.listAPTSale2(requestPage, request);


request.setAttribute("listModel2", listModel2);


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>글목록 보기</h3>
	<a href="insertform.jsp">메세지함</a>

	<table border="1" cellpadding="0" cellspacing="0">
		<tr height="30">
			<th width="50">메세지번호</th>
			<th width="100">보낸사람</th>
			<th width="250">내용</th>
			<th width="150">작성일자</th>
			<th width="150">확인유무</th>
		

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
				 
				
			</tr>
		</c:forEach>
	</table>
	<br>
	<br>

	<!-- 페이징 처리  -->
	<!-- 현재페이지, 페이지당글 갯수, 총 글갯수, 총페이지갯수, 시작페이지, 마지막페이지  -->

	<c:if test="${listModel2.startPage >5 }">
		<a href="messgeList.jsp?pageNum=${listModel2.startPage-5 }">[이전]</a>
	</c:if>


	<c:forEach var="pageNum" begin="${listModel2.startPage }"
		end="${listModel2.endPage }">
		<c:choose>
			<c:when test="${listModel2.requestPage == pageNum}">
				<a href="messgeList.jsp?pageNum=${pageNum}"><b>[ ${pageNum} ]</b></a>
			</c:when>
			<c:otherwise>
				<a href="messgeList.jsp?pageNum=${pageNum}">[ ${pageNum} ]</a>
			</c:otherwise>
		</c:choose>

	</c:forEach>


	<c:if test="${listModel2.endPage < listModel2.totalPageCount }">
		<a href="messgeList.jsp?pageNum=${listModel2.startPage+5 }">[다음]</a>
	</c:if>
	<br>
	<br>

	<form action="messgeList.jsp" method="post">
		<input type="checkbox" name="area" value="mg_content">내용
		<input type="checkbox" name="area" value="mg_to">받는사람
		<input type="text" name="searchKey" size="10">
		<input type="hidden" name="temp" value="temp">
		<input type="hidden" name="m_memberNo" value="abc123">
		<input type="submit" value="검색">
			<!-- 이거 pr이어야 검색되겟다 -->

	</form>

</body>
</html>