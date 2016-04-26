<%@page import="apt.classes.Candidate"%>
<%@page import="java.util.List"%>
<%@page import="apt.classes.Member"%>
<%@page import="apt.dao.AptService"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    


<%
	AptService aptService = AptService.getInstance();
	Member m = aptService.selectOneMemberService("tndusdla92");

	Member gpm = aptService.selectGroupPresiService();
	String cd = "입주자대표";
	List<Candidate> candilist = aptService.selectAllEachCandiService(cd);
	
	
	request.setAttribute("m_id", m.getM_memberNo());
	request.setAttribute("m", m);
	request.setAttribute("gpm", gpm);
	request.setAttribute("clist", candilist);
%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>



<link rel="stylesheet" href="../css/jeong/vote.css">

<script type="text/javascript">
	function fn_insertCandi() {
		location.href="insertGPreCandi.jsp?m_id=${m_id}";	
	}
	
	function fn_levelDown(){
		location.href="levelDown.jsp?gpm_no=${gpm.getM_memberNo()}";
	}
</script>

</head>
<body>




<div id="outline" style="background-color:#c0e7fe;">
<!-- manager didn't changed grade who president now --> 

<c:if test="${gpm != null}">
   <img alt="" src="../images/jeong/exclamation.png">
   <b>현재 입주자대표를 일반 입주자로 변경해야 후보를 등록할 수 있습니다.</b>
   <br><br><br>
   <%=gpm.getM_name()%> (<%=gpm.getM_buildingNo()%>동 <%=gpm.getM_roomNo()%>호) 
   <input type="button" value="권한 하향하기" onclick="fn_levelDown()">
   <br>
</c:if>

<c:if test="${!clist.isEmpty() }">
	<c:forEach var="cn" items="${clist }">
		<table class="candidatelist" border="1px">
			<tr>
				<td colspan="2" rowspan="4" width="300px"> <img alt="" src=""></td>
				<td width="100px">분류</td>
				<td colspan="2" width="300px">cn.cd_group</td>
			</tr>
			<tr><td>회원검색</td><td colspan="2"></td></tr>
			<tr><td>직업</td><td colspan="2"></td></tr>
			<tr><td>최종학력</td><td colspan="2"></td></tr>
			<tr><td width="100px">기호</td><td></td><td colspan="3">경력</td></tr>
			<tr><td colspan="2" rowspan="3"></td><td colspan="3"></td></tr>
			<tr><td colspan="3">공약</td></tr>
			<tr><td colspan="3"></td></tr>
		</table>
	</c:forEach>
</c:if>
<img alt="" src="../images/jeong/candidate_plus.png" onclick="fn_insertCandi()">

<br><br>

<input type="button" value="투표 시작하기" onclick="fn_voteStart()">
<input type="button" value="임시저장하기" onclick="fn_tempStore()">
<input type="button" value="취소하기" onclick="fn_cancel()">
	
</div>	
	

</body>
</html>