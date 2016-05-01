<%@page import="apt.classes.Member"%>
<%@page import="apt.classes.Complaint"%>
<%@page import="apt.dao.AptService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
    
    <%
    	String cp_complaintNo = request.getParameter("b_id");
    	
    	AptService service = AptService.getInstance();
    	Complaint complaint =service.selectcomplaint(cp_complaintNo);
    	
    	request.setAttribute("com", complaint);
        String id =	(String)session.getAttribute("id");
    	AptService service2	=AptService.getInstance();
    	 Member m = service2.selectOneMemberService(id);
    	 
    	request.setAttribute("m", m);
    	out.print(m.getM_grade()+"등급입니다");
    	
    	
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function fn_update() {
	 window.location.href="main.jsp?body=mypage.jsp?body2=../plugins/gidae/smart/SmartEditor2.jsp?num=<%=complaint.getCp_complaintNo()%>";
	
}
function fn_list() {
	
	
	if(<%=m.getM_grade()%> >1){
		
	window.location.href="main.jsp?body=mypage.jsp?body2=managerComplaint.jsp";
	}else{
		
	window.location.href="main.jsp?body=mypage.jsp?body2=listComplaint.jsp";
	}
	
}


</script>
</head>
<body>
		<H3>글세부보기</H3>
	<table border="1">
		<tr height="30">
			<th width="150">번호</th>
			<th width="150">${com.cp_complaintNo }</th>
		</tr>
		<tr height="30">
			<th width="150">작성자</th>
			<th width="150">${com.m_memberNo }</th>
			<th width="150">작성일</th>
			<th width="100">
			${com.cp_date}
			</th>
		</tr>
		<tr height="30">
			<th width="150">제목</th>
			<th colspan="3" width="150">${com.cp_title }</th>
		</tr>
		<tr height="30">
			<th colspan="4">${com.cp_content }</th>
		</tr>
		<tr height="30">
			<th colspan="4">
			<c:if test="${m.m_grade >1 }">
				<input type="button" value="수정" onclick="fn_update()">
			</c:if>
				<input type="button" value="목록" onclick="fn_list()">
			</th>
		</tr>
	</table>
	<br>
	<br>
	<br>
	<br>

<%-- 	   <c:if test="${listModel.startPage > 5}">
      <a href="detail.jsp?pageNum=${listModel.startPage -5 }&&b_id=<%=b_id%>">[이전]</a>
   </c:if>
   
   <c:forEach var="pageNo" begin="${listModel.startPage }" end="${listModel.endPage }">
   		
   		<c:choose>
   			<c:when test="${listModel.requestPage == pageNo }">
    		  <b><a href="detail.jsp?pageNum=${pageNo }&&b_id=<%=b_id%>">[${pageNo }]</a></b>
   			</c:when>
   			<c:otherwise>
  		    <a href="detail.jsp?pageNum=${pageNo }&&b_id=<%=b_id%>">[${pageNo }]</a>
   			</c:otherwise>
   		</c:choose>
   </c:forEach>
      	<c:if test="${listModel.endPage < listModel.totalPageCount}">
     	 <a href="detail.jsp?pageNum=${listModel.startPage +5 }&&b_id=<%=b_id%>">[다음]</a>
      	</c:if>
	
	</div> --%>
</body>
</html>