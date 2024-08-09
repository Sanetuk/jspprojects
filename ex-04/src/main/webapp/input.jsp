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
			text-centered
		}
	</style>
</head>
<body>
	<h1>성적 입력</h1>
	<form id="grades" action="inputaction.jsp">
		<table>
			<tr>
				<th colspan="2">사번</th>
				<td><input type="number" name="id" id="id"></td>
			</tr>
			<tr>
				<th rowspan="3">과목</th>
				<th>Java</th>
				<th><input type="number" name="java"></th>
			</tr>
			<tr>
				<th>Database</th>
				<th><input type="number" name="database"></th>
			</tr>
			<tr>
				<th>JSP</th>
				<th><input type="number" name="jsp"></th>				
			</tr>
			<tr>
				<td>
					<input type="submit" style="margin-left: 40px">
				</td>
			</tr>
		</table>
	</form>
	
	<script>
		grades.onsubmit = function onSubmit(e) {
			if(!id.value){
				alert('사번이 입력되지 않았습니다.');
				e.preventDefault();
			}
		}	
	</script>
</body>
</html>