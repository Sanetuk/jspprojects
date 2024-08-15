<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
		th{
			border: 1px solid black;
		}
		table{
			border: 1px solid black;
		}
		td{
			text-centered;
			border: 1px solid black;
		}
	</style>
</head>
<body>

<table>
			<tr>
				<th colspan="2">사번</th>
				<td><%=request.getAttribute("id") %></td>
			</tr>
			<tr>
				<th rowspan="3">과목</th>
				<th>Java</th>
				<td><%=request.getAttribute("java") %></td>
			</tr>
			<tr>
				<th>Database</th>
				<td><%=request.getAttribute("database") %></td>
			</tr>
			<tr>
				<th>JSP</th>
				<td><%=request.getAttribute("jsp") %></td>				
			</tr>
			<tr>
				<th colspan="2">평균</th>
				<td><%=request.getAttribute("average") %></td>
			</tr>
			<tr>
				<td><button id="toinput" onclick="window.location.href='input.jsp';">입력화면</button></td>
			</tr>
		</table>

<script>
	const toinput = document.getElementById('toinput')
	toinput.addEventListener('click', )
</script>


</body>
</html>