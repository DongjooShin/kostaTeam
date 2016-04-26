<%@page import="apt.classes.PublicManagementFee"%>
<%@page import="apt.classes.ManagementFee"%>
<%@page import="apt.dao.AptService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String year  = request.getParameter("year");
	String month = request.getParameter("month");
	
	int    p_year = 0, p_month = 0, p_date = 0; // 현재
	String b_year = null, b_month = null, b_date; // 전월
	
	String date       = year + month;
	String beforeDate = null;
	
	if(year != null){
		if(month.equals("01")){
			p_year  = Integer.parseInt(year);
			b_year = p_year-1+"";
			b_month = "12";
			beforeDate = b_year+b_month;
		}else{
			p_date = Integer.parseInt(date);
			beforeDate = p_date-1+"";
		}
	}
	
	AptService service = AptService.getInstance();
	
	ManagementFee        mntf = service.selectMntFeeService(date);	
	PublicManagementFee pmntf = service.selectPublicMntFeeService(date);
	
	ManagementFee       b_mntf  = service.selectMntFeeService(beforeDate);
	PublicManagementFee b_pmntf = service.selectPublicMntFeeService(beforeDate);
	
	
	request.setAttribute("mntf", mntf);
	request.setAttribute("pmntf", pmntf);
	request.setAttribute("b_mntf", b_mntf);
	request.setAttribute("b_pmntf", b_pmntf);
	
	//service.selectBeforeMntFee
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="../js/kyungtae/jquery-1.11.0.js"></script>
<script src="../js/kyungtae/bootstrap.min.js"></script>

<link href="../css/kyungtae/bootstrap.min.css" rel="stylesheet">
<link href="../css/kyungtae/common.css" rel="stylesheet" type="text/css" />
<style type="text/css">
#label {
	display: block;
}

#wrapper {
	padding: 30px;
}
</style>
<script type="text/javascript">
	
</script>

</head>
<body>
	<div id="wrapper">

		<!-- container -->
		<div id="container">
			<div class="titleBox">
				<h2>관리비 조회</h2>
			</div>

			<div class="row">
				<form action="">
					<div class="col-lg-1">
						<label>연</label> <select class="form-control" name="year">
							<option>2012</option>
							<option>2013</option>
							<option>2014</option>
							<option>2015</option>
							<option>2016</option>
						</select>
					</div>
					<div class="col-lg-1">
						<label>월</label> <select class="form-control" name="month">
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
						</select>
					</div>
					<div class="col-lg-1">
						<label id="label">　</label>
						<button type="submit" class="btn btn-default">입력</button>
					</div>
				</form>
				<div class="col-lg-12">
					<h4>관리비 항목 상세</h4>
					<div class="table-responsive">
						<table class="table table-hover table-striped">
							<thead>
								<tr align="center">
									<td>항목</td>
									<td>당월</td>
									<td>전월</td>
									<td>증감</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>청소비</td>
									<td><!-- 당월 -->
										 ${pmntf.Pm_clean}
									</td>
									<td>
										${b_pmntf.Pm_clean} 
									</td>
									<td></td>
								</tr>
								<tr>
									<td>일반관리비</td>
									<td><!-- 당월 -->
										${pmntf.Pm_general}
									</td>
									<td><!-- 전월 -->
										${b_pmntf.Pm_general} 
									</td>
									<td></td>
								</tr>
								<tr>
									<td>수선유지비</td>
									<td><!-- 당월 -->
										${pmntf.Pm_maintain }										
									</td>
									<td><!-- 전월 -->
										${b_pmntf.Pm_maintain} 
									</td>
									<td></td>
								</tr>
								<tr>
									<td>승강기유지비</td>
									<td><!-- 당월 -->
										${pmntf.Pm_liftMaintain} 
									</td>
									<td><!-- 전월 -->
										${b_pmntf.Pm_general} 
									</td>
									<td></td>
								</tr>
								<tr>
									<td>경비용역비</td>
									<td><!-- 당월 -->
										${pmntf.Pm_security} 
									</td>
									<td><!-- 전월 -->
										${b_pmntf.Pm_security} 
									</td>
									<td></td>
								</tr>
								<tr>
									<td>음식물수거비</td>
									<td><!-- 당월 -->
										${pmntf.pm_foodWaste} 
									</td>
									<td><!-- 전월 -->
										${b_pmntf.pm_foodWaste}
									</td>
									<td></td>
								</tr>
								<tr>
									<td>화재보험료</td>
									<td><!-- 당월 -->
										${pmntf.pm_fireInsurance} 
									</td>
									<td><!-- 전월 -->
										${b_pmntf.pm_fireInsurance} 
									</td>
									<td></td>
								</tr>
								<tr>
									<td>위탁수수료</td>
									<td><!-- 당월 -->
										${ pmntf.Pm_commission} 
									</td>
									<td><!-- 전월 -->
										${ b_pmntf.Pm_commission} 
									</td>
									<td></td>
								</tr>
								<tr>
									<td>동대표회의비</td>
									<td><!-- 당월 -->
										${pmntf.Pm_meeting}
									</td>
									<td><!-- 전월 -->
									</td>
									<td></td>
								</tr>
								<tr>
									<td>공동전기료</td>
									<td><!-- 당월 -->
										${pmntf.pm_publicElectric}
									</td>
									<td><!-- 전월 -->
										${b_pmntf.pm_publicElectric}
									</td>
									<td></td>
								</tr>
								<tr>
									<td>승강기전기료</td>
									<td><!-- 당월 -->
										${ pmntf.pm_liftElectric} 
									</td>
									<td><!-- 전월 -->
										${ b_pmntf.pm_liftElectric} 
									</td>
									<td></td>
								</tr>
								<tr>
									<td>TV수신료</td>
									<td><!-- 당월 -->
										${ pmntf.pm_TVFee} 
									</td>
									<td><!-- 전월 -->
										${ b_pmntf.pm_TVFee} 
									</td>
									<td></td>
								</tr>
								<tr class="warning">
									<td>세대전기료</td>
									<td><!-- 당월 -->
										${mntf.mf_electricFee} 
									</td>
									<td><!-- 전월 -->
										${b_mntf.mf_electricFee} 
									</td>
									<td></td>
								</tr>
								<tr class="warning">
									<td>세대난방료</td>
									<td><!-- 당월 -->
										${mntf.mf_gasFee}
									</td>
									<td><!-- 전월 -->
										${b_mntf.mf_gasFee}
									</td>
									<td></td>
								</tr>
								<tr class="warning">
									<td>세대수도료</td>
									
									<!-- 당월 -->
									<td>
										${mntf.mf_waterFee} 
									</td>
									
									<!-- 전월 -->
									<td><!-- 전월 -->
										${b_mntf.mf_waterFee} 
									</td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
