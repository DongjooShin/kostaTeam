<%@page import="java.util.List"%>
<%@page import="apt.classes.PublicManagementFee"%>
<%@page import="apt.dao.AptService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link class="include" rel="stylesheet" type="text/css" href="jquery.jqplot.min.css" />
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/gidae/jquery.jqplot.min.js"></script>
<script type="text/javascript" src="js/gidae/bargraph.js"></script>
<script type="text/javascript" src="plugins/gidae/jqplot.categoryAxisRenderer.min.js"></script>
<script type="text/javascript" src="plugins/gidae/jqplot.pointLabels.min.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>우리 아파트</title>



	    <!-- Bootstrap Core CSS -->
    <link href="css/gidae/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/gidae/sb-admin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->

</head>
<body>
                <div class="row">
                    <div class="col-lg-2">
                    </div>
                    <div class="col-lg-8">
                    <div class="col-lg-2"></div>
                       <h2>관리비 입력</h2>
                         <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr style="background-color: skyBlue;">
                                        <th>관리비이름</th>
                                        <th >입력</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>청소비</td>
                                        <td>${p2. pm_clean}</td>
                                          <td><input type="text"></td>
                                    </tr>
                                    <tr>
                                        <td>소독비</td>
                                        <td>${p. pm_disinfection}</td>
                                          <td><input type="text"></td>
                                    </tr>
                                    <tr>
                                        <td>일반관리비</td>
                                        <td>${p. pm_general}</td>
                                          <td><input type="text"></td>
                                    </tr>
                                    <tr>
                                        <td>수선유지비</td>
                                        <td>${p. pm_maintain}</td>
                                          <td><input type="text"></td>
                                    </tr>
                                    <tr>
                                        <td>승강기유지비</td>
                                        <td>${p. pm_liftMaintain}</td>
                                          <td><input type="text"></td>
                                    </tr>
                                    <tr>
                                        <td>경비용역비</td>
                                        <td>${p. pm_security}</td>
                                          <td><input type="text"></td>
                                    </tr>
                                    <tr>
                                        <td>음식물수거비</td>
                                        <td>${p. pm_foodWaste}</td>
                                          <td><input type="text"></td>
                                    </tr>
                                    <tr>
                                        <td>화재보험료</td>
                                        <td>${p. pm_fireInsurance}</td>
                                          <td><input type="text"></td>
                                    <tr>
                                        <td>위탁수수료</td>
                                        <td>${p. pm_commission}</td>
                                          <td><input type="text"></td>
                                    </tr>
                                    <tr>
                                        <td>동대표회의비</td>
                                        <td>${p. pm_meeting}</td>
                                          <td><input type="text"></td>
                                    </tr>
                                    <tr>
                                        <td>공동전기료</td>
                                        <td>${p. pm_publicElectric}</td>
                                          <td><input type="text"></td>
                                    </tr>
                                    <tr>
                                        <td>승강기전기료</td>
                                        <td>${p. pm_liftElectric}</td>
                                          <td><input type="text"></td>
                                    </tr>
                                    <tr>
                                        <td>tv수신료</td>
                                        <td>${p. pm_TVFee}  <input type="text"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    </div>
    
                
</body>
</html>