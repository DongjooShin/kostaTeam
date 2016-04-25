<%@page import="apt.classes.Member"%>
<%@page import="apt.dao.AptService"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	AptService aptService = AptService.getInstance();
	Member m = aptService.selectOneMemberService("tndusdla92");
	//m = manager, r = resident

	request.setAttribute("m", m);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1>선거</h1>
	<br>

	<c:choose>
		<c:when test="${m.getM_grade() == 2 }">
			<!-- case: manager -->
			<c:choose>
				<c:when test="${m.getV_flag() == 1 }">
					<form class="vote_back" action="voteCandiRegist.jsp" method="post">
							<input id="CandiRegiButton" type="submit" value="후보자 등록">
							<input type="hidden" name="m_id" value="${m.getM_memberNo() }">
					</form>
				</c:when>
				<c:when test="${m.getV_flag() == 2 }">
					<c:forEach var="n" begin="0" end="">
						<c:if test="">
							n++;
						</c:if>
					</c:forEach>

				</c:when>
				<c:when test="${m.getV_flag() == 3 }">
					<input type="text" value="">
					<input type="button" value="Close the Election">
				</c:when>
				<c:when test="${m.getV_flag() == 4 }">
					<span class="iGraph"> <span class="gBar"> 
						<span class="gAction" style="width: 50%"></span>
					</span> 
					<span class="gPercent"> </span> 
					<input type="button" value="Close ths result">
				</c:when>
			</c:choose>
		</c:when>

		<c:otherwise>
			<!-- case: resident -->
			<c:choose>
				<c:when test="${m.getV_flag() == 1 }">		
					<table>
					<tr><td></td><td rowspan="2"></td><td></td></tr>
					<tr>	
					<td><%=m.getM_buildingNo()%> 동  <%=m.getM_roomNo() %> 호  <%=m.getM_name() %> </td>
					<td><%=m.getM_buildingNo()%> 동  <%=m.getM_roomNo() %> 호  <%=m.getM_name() %> </td>
					</tr>	
					</table>
				</c:when>	
				<c:when test="${m.getV_flag() == 2 }">
				
				<h1>입주자대표</h1><br><br>
				<table>
				<tr><td><img alt="" src=""></td>
				<td><img alt="" src=""></td>
				<td><img alt="" src=""></td></tr>
				<tr><td>기호 <%= %>번</td><td>기호 <%= %>번</td><td>기호 <%= %>번</td></tr>
				<tr><td><%= %></td><td><%= %></td><td><%= %></td></tr>
				<tr><td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				</tr>
				</table>
				</c:when>
				
				<c:when test="${m.getV_flag() == 3 }">
				<h1> 우리 단지의 투표가 진행중입니다.</h1><br><br>
				</c:when>
				<c:when test="${m.getV_flag() == 4 }">
				<h1>투표가 종료되었습니다.</h1>
				</c:when>
			</c:choose>
		</c:otherwise>
	</c:choose>




</body>
</html>