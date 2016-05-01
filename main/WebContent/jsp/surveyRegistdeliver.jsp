<%@page import="apt.classes.SurveyDB"%>
<%@page import="apt.classes.ListModel3"%>
<%@page import="apt.classes.ListModel2"%>
<%@page import="apt.dao.AptService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

    
<%
	request.setCharacterEncoding("utf-8");

String id = "";

if (session.getAttribute("id") != null) {
	System.out.println("apt디테일 로그인 유지!");
	id = (String) session.getAttribute("id");
	request.setAttribute("id", id);

}

int Aptno1 = 0;

if (session.getAttribute("APTNO") != null) {
	System.out.println("aptsale 아파트넘버 유지!");
	String APTNO = (String) session.getAttribute("APTNO");
//	System.out.print(APTNO+"아파트그룹번호읻");
	request.setAttribute("APTNO", APTNO);
	Aptno1  = Integer.parseInt(APTNO);
}




AptService service = AptService.getInstance();

SurveyDB surveyDB = service.surveygroup(request, Aptno1);

int aabc1  =surveyDB.getApt_APTGNo();
int abc2 =surveyDB.getSu_group();

System.out.println(abc2+"설문지번호입니다.");

request.setAttribute("surveyDB", surveyDB);



//날짜에 따른 설문지를 출력하라
ListModel3 listModel3 = service.surveyDeliver(request, abc2);
//나중에 그룹세션값 가져와야대요 where 아파트그룹번호 =아파트그룹번호 랑 su_group값 가져와서 su_group= su_group AND 아파트그룹번호 = 아파트그룹번호 로출력




request.setAttribute("listModel3", listModel3);




%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="../js/Min/script.js"></script>
<link type="text/css" rel="stylesheet" href="../css/Min/survey/styles.css"/>
<title>jQuery To Do List Plugin Demo</title>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<!-- Custom CSS -->
<link rel="stylesheet" href="../css/Min/survey/styles.css">
<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">




<link href="../css/Min/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../css/Min/bootstrap/css/styles.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="http://snipplicious.com/css/bootstrap-3.1.1.min.css">

<link rel="stylesheet" type="text/css" href="http://snipplicious.com/css/font-awesome-4.0.3.min.css">
<style>
.forum.table > tbody > tr > td {
    vertical-align: middle;
}

.forum .fa {
    width: 1em;
    text-align: center;
}

.forum.table th.cell-stat {
    width: 6em;
}

.forum.table th.cell-stat-2x {
    width: 14em;
    text-align: center;
}

.pagecenter{

	width: 100%;
	text-align: center;
}
.col-md-2{
	margin-top : 10%;


} 

row{
width: 100%;
}
.container{
	width: 100%;
}

</style>
<script src="http://snipplicious.com/js/jquery.js"></script>
<script src="http://snipplicious.com/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>
<body>



<div class="container" id="main">
<h1>아파트 설문조사</h1> 날짜 : ${surveyDB.su_enddate }까지 제출바랍니다.


<form action="main.jsp" method="post">

<c:forEach var="survey" items="${listModel3.list }">

<div class="bb">
<li class="list-group-item">
<div class="text_holder">

${survey.su_surveyNo }. ${survey.su_context }
<div class="btn-group pull-right">
<button class="delete btn btn-warning">삭제</button>
</div>
</div>
<div class="radiobox">
<input type="radio" value="1" name="check${survey.su_surveyNo }">
매우좋음
</div>
<div class="radiobox">
<input type="radio" value="2" name="check${survey.su_surveyNo }">
좋음
</div>
<div class="radiobox">
<input type="radio" value="3" name="check${survey.su_surveyNo }">
보통
</div>
<div class="radiobox">
<input type="radio" value="4" name="check${survey.su_surveyNo }">
나쁨
</div>
<div class="radiobox">
<input type="radio" value="5" name="check${survey.su_surveyNo }">
매우나쁨
</div>
</li>
</div>


</c:forEach>
<input type="submit" value="설문지 작성완료">
</div>
<br><br>


	

</form>

</body>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

</html>