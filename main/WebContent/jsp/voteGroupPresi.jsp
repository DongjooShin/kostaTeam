
<%@page import="apt.classes.Member"%>
<%@page import="apt.dao.AptService"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
	AptService aptService = AptService.getInstance();
	Member m = aptService.selectOneMemberService("tndusdla92"); 
	//m = manager, r = resident
	 
	request.setAttribute("m", m);
%>

<%
	//about v_flag
	//case:manager
	//1: there are no election. candidate regist button here
	//2: manager is ongoing to put candidate. if manager changed that all president's grade, then v_flag will changed 2
	//3: manager finished putting candidate and start election. 
	//4: election is end. result is noticing. if manager click the finish noticing, v_flag will change 1	
	
	//case:resident
	//1: there are no election. Two president's information here
	//2: election is start. And resident is not vote yet.
	//3: election is ongoing. And resident is already votes. resident can see real time result
	//4: election is end. Result is noticing. if result noticing is finished, v_flag will change 1
		
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content= "IE=edge">      <!-- ���� �ͽ��÷η��� ���� ���ִ� �κ� -->
<meta name="viewport" content= "width=device-width, initial-scale=1" >    <!-- �̺κ��� �ٷ� ������ ��!! ����̽��� ����ũ�⿡ ���� ����Ʈ�� ���θ� �����. -->

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/jeong/vote.css"> 
<link href="../css/bootstrap.min.css" rel ="stylesheet">
</head>
<body>
	<h2>���� > </h2>
	<h1>������ ��ǥ</h1>
	<br>

	<c:choose>
		<c:when test="${m.getM_grade() == 2 }"> <!-- case: manager -->
			<c:choose>
				<c:when test="${m.getV_flag() == 1 }">
					<form class="vote_back" action="voteGroupPresiRegists.jsp" method="post">
							<input id="CandiRegiButton" type="submit" value="�ĺ��� ���">
							<input type="hidden" name="m_id" value="${m.getM_memberNo() }">
					</form>
				</c:when>
				<c:when test="${m.getV_flag() == 2 }">
					
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
					<td><%=m.getM_buildingNo()%> ��  <%=m.getM_roomNo() %> ȣ  <%=m.getM_name() %> </td>
					</tr>	
					</table>
				</c:when>	
				<c:when test="${m.getV_flag() == 2 }">
				
				<h1>�����ڴ�ǥ ����</h1><br><br>
				<table>
				<tr><td><img alt="" src=""></td>
				<td><img alt="" src=""></td>
				<td><img alt="" src=""></td></tr>
				<tr><td>��ȣ <%=m %>��</td><td>��ȣ <%=m %>��</td><td>��ȣ <%=m %>��</td></tr>
				<tr><td><%=m %></td><td><%=m %></td><td><%=m %></td></tr>
				<tr><td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				</tr>
				</table>
				</c:when>
				
				<c:when test="${m.getV_flag() == 3 }">
				<h1> �츮 ������ ��ǥ�� �������Դϴ�.</h1><br><br>
				</c:when>
				<c:when test="${m.getV_flag() == 4 }">
				<h1>��ǥ�� ����Ǿ����ϴ�.</h1>
				</c:when>
			</c:choose>
		</c:otherwise>
	</c:choose>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js" ></script>
<script src="../js/gidae/bootstrap.min.js"></script>
</body>
</html>
