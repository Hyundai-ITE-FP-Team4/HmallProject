<%@page import="java.util.List"%>
<%@page import="com.hmall.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<%
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
		<title>Insert title here</title>
		
	</head>
	<body>
		<h1 align="center">회원 정보</h1>
		<table border="1"  align="center" >
			<caption>회원 정보</caption>
		    <tr align="center" bgcolor="lightgreen">
		      <td width="7%"><b>아이디</b></td>
		      <td width="7%"><b>비밀번호</b></td>
		      <td width="5%" ><b>이름</b></td>
			</tr>
	 		<c:forEach var = "user" items="${userList}"  >	
		   	<tr align="center">
		      <td>${user.user_id}</td>
		      <td>${user.user_pw}</td>
		      <td>${user.user_name}</td>
		   </tr>
	 	   </c:forEach>
		</table>
		<script>
			google.load('visualization', '1.0', {'packages':['corechart']});
			google.setOnLoadCallback(prt_test);
			function show_chart(res){
				var data = new google.visualization.DataTable();
				data.addColumn('number', '월 ');
				data.addColumn('number', ' 로그인 횟수 ');
				for(key in res){
					data.addRows([
						[res[key].cnt, res[key].month]
					]);
				    console.log(res[key].cnt);
				}
				var opt = {
						'title': '월별 로그인 횟수 ',
						'width': 600, 'height': 400,
				};
				
				var chart = new google.visualization.BarChart(
						document.getElementById('chart_div'));
				chart.draw(data, opt);
			}
			function get_chart(){
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
							show_chart(res);	
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
		<div class="login-btn">
             <a href="javascript:;" class="btn alink" onclick ="get_chart()"><span>클릭하면 차트 뜸</span></a>
       	</div>
       	<div id="chart_div"></div>
	</body>
</html>