<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
		<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
		<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<script type="text/javascript" src="https://www.google.com/jsapi"></script>
		<%@include file = "/component/script.jsp" %>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
	</head>
	<body>
		<script>
			google.load('visualization', '1.0', {'packages':['corechart']});
			google.setOnLoadCallback(prt_test);
			function prt_test(res){
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
			function test(){
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
							prt_test(res);	
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
             <a href="javascript:;" class="btn alink" onclick ="test()"><span>클릭하면 차트 뜸</span></a>
       	</div>
       	<div id="chart_div"></div>
	</body>
</html>