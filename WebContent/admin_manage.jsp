<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="com.hmall.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<% // 스크립트릿 - 회원정보 객체 리스트 가져오기 (김승환)
	request.setCharacterEncoding("UTF-8");
	UserDAO dao = UserDAO.getInstance();
	List userList = dao.listUser();
%>
<c:set var="userList" value = "<%= userList %>"/>

<html>
	<head>
		<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
		<script type="text/javascript" src="https://www.google.com/jsapi"></script>
		<%@include file = "/component/script.jsp" %>
		<meta charset="UTF-8">
		<title>관리자 - Hmall</title>
		
		<style type="text/css">
			.main {
				padding: 20px;
			}
			.adminContent {
				text-align: center;
				width: 1100px;
				margin: auto;
				color: #666;
				font-family: "맑은 고딕", Malgun Gothic, "돋움", Dotum, Applegothic,sans-serif;
				letter-spacing: -0.6px;  
			}
			.adminContent h1, h2 {
				margin: 100px 30px 30px 30px;
			}
			.userList {
				width:900px;
				margin:auto;
				text-algin:center;
				padding : 40px;
				border: 1px solid #666;
			}
			.userList th {
				background-color: #ff5340;
				color: #444;
			}
			.userList th, td {
				padding: 7px;
				border: 1px solid #666;
			}
			.main .chart {
				padding: 10px;
				margin-right: 10px;
			}
			.main .main-box {
				margin: 20px;
			}
			
			h3 {
				color: #ff5340;
			}
		</style>
		
	</head>
	<body>
		<!-- 페이지 header -->
		<%@ include file="../header.jsp"%>
		
		<!-- 로그인 로그 표 (김승환) -->
		<div class="adminContent">
			<h1 align="center">Hmall 관리자 페이지</h1>
			<h2 align="center">회원 정보</h2>
			<table class="userList">
				<caption>회원 정보</caption>
			    <tr align="center">
			      <th width="7%">아이디</th>
			      <th width="5%"><b>이름</b></th>
			      <th width="7%" ><b>폰 번호</b></th>
				</tr>
		 		<c:forEach var = "user" items="${userList}"  >	
			   	<tr align="center">
			      <td>${user.user_id}</td>
			      <td>${user.user_name}</td>
			      <td>${user.phone_number}</td>
			   </tr>
		 	   </c:forEach>
			</table>
			
			<!-- 차트 리스트 (박주영, 김승환) -->
			<h2 align="center">차트 리스트</h2>
			<script>
				google.load('visualization', '1.0', {'packages':['corechart']});
				google.setOnLoadCallback(drawMonthChart);
				google.setOnLoadCallback(drawHourChart);
				
				// 월별 로그인 횟수 차트
				function drawMonthChart(){
					$.ajax({ // 월별 로그인 횟수 차트 요청
						url : '/HmallProject/HmallServlet?command=google_chart',
						type : 'post',
						dataType : 'json',
						data : {name: "month"},
						async: false,
						success:function(res){
							console.log('success');
							console.log(res);
							if(res!= null) {
								var data = new google.visualization.DataTable();
								data.addColumn('string', '월');
								data.addColumn('number', '로그인 횟수 ');
								for(key in res){
									if(res[key].month != 0) {
										var month = res[key].month + '월'
										data.addRows([
											[month, res[key].monthCnt]
										]);
									    console.log(res[key].monthCnt);
									}
								}
								var today = new Date();
								var title = '월별 로그인 횟수'; 
								var opt = {
										'title': title,
										'vAxis': {'title': '로그인 횟수',
											'minValue': 0,
											'ticks': [0, 5, 10, 15, 20, 25, 30]
											},
										'hAxis': {'title': '월',
												'maxValue': 12,
												'minValue': 1
												},
										'width': 1000,
										'height': 400,
										'series': {
								            0: { 'color': '#ff5340' }
										}
										
								};
								var chart = new google.visualization.ColumnChart(
											document.getElementById('monthChartDiv'));
								chart.draw(data, opt);
							}else {
								console.log('실패');
								console.log(res);
								alert("로그인 실패");
								
							}
						},
						error : function(data, textStatus){
							console.log('error');
							console.log(data);
						}
					});
				}
				
				// 시간별 로그인 횟수 차트
				function drawHourChart(){
					$.ajax({
						url : '/HmallProject/HmallServlet?command=google_chart',
						type : 'post',
						dataType : 'json',
						data : {name: "test"},
						async: false,
						success:function(res){
							console.log('success');
							console.log(res);
							if(res!= null) {
								var data = new google.visualization.DataTable();
								data.addColumn('string', '시간');
								data.addColumn('number', '로그인 횟수 ');
								for(key in res){
									if(res[key].hour != 0) {
										var hour = res[key].hour + '시';
										data.addRows([
											[hour, res[key].hourCnt]
										]);
									    console.log(res[key].hourCnt);
									}
								}
								var today = new Date();
								var title = today.getFullYear() + '년 ' + (today.getMonth()+1) + '월 ' + today.getDate() + '일 시간별 로그인 횟수'; 
								var opt = {
										'title': title,
										'vAxis': {'title': '로그인 횟수'},
										'hAxis': {'title': '시간'},
										'width': 1000,
										'height': 400,
										'lineWidth': 8,
										'series': {
								            0: { 'color': '#ff5340' }
										}
										
								};
								
								var chart = new google.visualization.AreaChart(
											document.getElementById('hourChartDiv'));
								chart.draw(data, opt);
							}else {
								console.log('실패');
								console.log(res);
								alert("로그인 실패");
								
							}
						},
						error : function(data, textStatus){
							console.log('error');
							console.log(data);
						}
					});
				}
			</script>
			
			<div class="main" align="center">
				<div class="main-box">
					<div class="chart">
						<h3>월별 로그인횟수 차트</h3>
		             	<div id="monthChartDiv"></div>
					</div>
		       	</div>
		       
		       	<div class="main-box">
	       			<div class="chart">
	       				<h3>시간별 로그인횟수 차트</h3>
		             	<div id="hourChartDiv"></div>
	       			</div>
		       	</div>
		       	
	       	</div>
	    </div>
       	
       	
       	<!-- 페이지 footer -->
		<%@ include file="../footer.jsp"%>
	</body>
</html>