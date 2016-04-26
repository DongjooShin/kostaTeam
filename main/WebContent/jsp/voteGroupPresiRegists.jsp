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
	String cd = "�����ڴ�ǥ";
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
<meta http-equiv="X-UA-Compatible" content= "IE=edge">      <!-- ���� �ͽ��÷η��� ���� ���ִ� �κ� -->
<meta name="viewport" content= "width=device-width, initial-scale=1" >    <!-- �̺κ��� �ٷ� ������ ��!! ����̽��� ����ũ�⿡ ���� ����Ʈ�� ���θ� �����. -->

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet" href="../css/jeong/vote.css">
<link href="../css/bootstrap.min.css" rel ="stylesheet">
<script type="text/javascript">
	function fn_insertForm() {
		$('.insertForm').prepend('<form action="voteInsertOk.jsp" method="post"><table border="1px"><tr><td>���ֹ� ����</td>'+
				'<td><input type="text" name="candi_name" disabled="disabled"><input type="button" value="ȸ���˻�" onclick="fn_searching()"></td></tr>'+
				'<tr><td>�̹�������</td><td><input type="file" name="img_name"></td></tr>'
				+'<tr><td>��ȣ</td><td><input type="text" name="new_symbol"></td></tr>'+
				'<tr><td>�з�</td><td><input type="text" name="new_eduLevel"></td></tr>'+
				'<tr><td>����</td><td><input type="text" name="new_job"></td></tr><tr><td colspan="2">���</td></tr>'
				+'<tr><td colspan="2"><textarea rows="3" cols="8" name="new_career"></textarea></td></tr><tr><td colspan="2">����</td></tr>'
				+'<tr><td colspan="2"><textarea rows="3" cols="8" name="new_promise"></textarea> </td></tr></table><br>'+
				'<input type="submit" value="�߰�"></form>');
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
   <b>���� �����ڴ�ǥ�� �Ϲ� �����ڷ� �����ؾ� �ĺ��� ����� �� �ֽ��ϴ�.</b>
   <br><br>
   <%=gpm.getM_name()%> (<%=gpm.getM_buildingNo()%>�� <%=gpm.getM_roomNo()%>ȣ) 
   <input type="button" value="���� �����ϱ�" onclick="fn_levelDown()">
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
				<td width="100px">�з�</td>
				<td width="300px">${cn.cd_group}</td>
			</tr>
			<tr><td>����</td><td>${cn.cd_job }</td></tr>
			<tr><td>�����з�</td><td>${cn.cd_eduLevel }</td></tr>
			<tr><td>��ȣ</td><td>${cn.cd_symbol }</td></tr>
			<tr><td colspan="3">���</td></tr>
			<tr><td colspan="3">${cn.cd_career }</td></tr>
			<tr><td colspan="3">����</td></tr>
			<tr><td colspan="3">${cn.cd_promise }</td></tr>
		</table>
	</c:forEach>
	<br><br>
</c:if>

<div class="insertForm" ></div>
<img src="../images/jeong/candidate_plus.png" onclick="fn_insertForm()">

<br><br>


<input type="button" value="��ǥ �����ϱ�" onclick="fn_voteStart()">
<input type="button" value="����ϱ�" onclick="fn_cancel()">
	
</div>	
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js" ></script>
<script src="../js/gidae/bootstrap.min.js"></script>
</body>
</html>