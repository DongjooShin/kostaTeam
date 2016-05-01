<%@page import="apt.classes.Member"%>
<%@page import="apt.classes.SurveyDB"%>
<%@page import="apt.dao.AptService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("utf-8");

String id = "";

if (session.getAttribute("id") != null) {
	System.out.println("apt디테일 로그인 유지!");
	id = (String) session.getAttribute("id");
	request.setAttribute("id", id);

}



AptService service = AptService.getInstance();
Member member = service.selectAptgroup(id);
int Bb2 = -1;
Bb2 = member.getApt_APTGNo();
if(Bb2 != -1){
	
	session.setAttribute("APTNO", Integer.toString(Bb2));
	request.setAttribute("APTNO", Bb2);
	
	}



/* 
int b = service.surveygroup(request); //세션아이디값가져와야대 아이디에속한 아파트랑 쿼리문아파트랑 비교해서 날짜-날짜가 양수라면 ㄱㄱ

System.out.print(b+"입니다."); */

SurveyDB surveyDB = service.surveygroup(request, Bb2);

request.setAttribute("surveyDB", surveyDB);

if(surveyDB ==null){
	System.out.println("널갑입니다.");
}



%>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

${surveyDB.su_startdate }
${surveyDB.su_enddate  }
${surveyDB.su_group  }
${surveyDB.apt_APTGNo }
${surveyDB.su_date }

</body>
</html>