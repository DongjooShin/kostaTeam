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
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content= "IE=edge">      <!-- 구형 익스플로러를 위해 써주는 부분 -->
<meta name="viewport" content= "width=device-width, initial-scale=1" >    <!-- 이부분이 바로 반응형 웹!! 디바이스의 가로크기에 맞춰 컨텐트의 가로를 맞춘다. -->

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet" href="../css/jeong/vote.css">
<link href="../css/bootstrap.min.css" rel ="stylesheet">
<script type="text/javascript">
	function fn_insertForm() {
		$('.insertForm').prepend('<form action="voteInsertOk.jsp" method="post"><table border="1px"><tr><td>입주민 선택</td>'+
				'<td><input type="text" name="candi_name" disabled="disabled"><input type="button" value="회원검색" onclick="fn_searching()"></td></tr>'+
				'<tr><td>이미지파일</td><td><input type="file" name="img_name"></td></tr>'
				+'<tr><td>기호</td><td><input type="text" name="new_symbol"></td></tr>'+
				'<tr><td>학력</td><td><input type="text" name="new_eduLevel"></td></tr>'+
				'<tr><td>직업</td><td><input type="text" name="new_job"></td></tr><tr><td colspan="2">경력</td></tr>'
				+'<tr><td colspan="2"><textarea rows="3" cols="8" name="new_career"></textarea></td></tr><tr><td colspan="2">공약</td></tr>'
				+'<tr><td colspan="2"><textarea rows="3" cols="8" name="new_promise"></textarea> </td></tr></table><br>'+
				'<input type="submit" value="추가"></form>');
	}
	
	function fn_levelDown(){
		location.href="levelDown.jsp?gpm_no=${gpm.getM_memberNo()}";
	}
	
	function fn_cancel(){
		location.href="voteGroupPresiRegists.jsp";
	}
	
	function fn_searching(){
		
	}
</script>

</head>
<body>


<div id="outline" style="background-color:#c0e7fe;">
<!-- manager didn't changed grade who president now --> 

<c:if test="${gpm != null}">
   <img alt="" src="../images/jeong/exclamation.png">
   <b>현재 입주자대표를 일반 입주자로 변경해야 후보를 등록할 수 있습니다.</b>
   <br><br>
   <%=gpm.getM_name()%> (<%=gpm.getM_buildingNo()%>동 <%=gpm.getM_roomNo()%>호) 
   <input type="button" value="권한 하향하기" onclick="fn_levelDown()">
   <br><br>
</c:if>

<c:if test="${!clist.isEmpty() }">
	<c:forEach var="cn" items="${clist }">
		<table class="candidatelist" border="1px">
			<tr>
				<td rowspan="4" width="300px">
					<c:if test="cn.getCd_imageName() != null">
						<img alt="" src="'../upload/${cn.cd_imageName}">
					</c:if>
				 </td>
				<td width="100px">분류</td>
				<td width="300px">${cn.cd_group}</td>
			</tr>
			<tr><td>직업</td><td>${cn.cd_job }</td></tr>
			<tr><td>최종학력</td><td>${cn.cd_eduLevel }</td></tr>
			<tr><td>기호</td><td>${cn.cd_symbol }</td></tr>
			<tr><td colspan="3">경력</td></tr>
			<tr><td colspan="3">${cn.cd_career }</td></tr>
			<tr><td colspan="3">공약</td></tr>
			<tr><td colspan="3">${cn.cd_promise }</td></tr>
		</table>
	</c:forEach>
	<br><br>
</c:if>

<div class="insertForm" ></div>
<img src="../images/jeong/candidate_plus.png" onclick="fn_insertForm()">

<br><br>


<input type="button" value="투표 시작하기" onclick="fn_voteStart()">
<input type="button" value="취소하기" onclick="fn_cancel()">
	
</div>	
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js" ></script>
<script src="../js/gidae/bootstrap.min.js"></script>
</body>
</html>