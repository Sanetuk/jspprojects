<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	String idStr = request.getParameter("id");
	String javaScoreStr = request.getParameter("java");
	String databaseScoreStr = request.getParameter("database");
	String jspScoreStr = request.getParameter("jsp");
	
	int id = Integer.parseInt(idStr);
	int javaScore = Integer.parseInt(javaScoreStr);
	int databaseScore = Integer.parseInt(databaseScoreStr);
	int jspScore = Integer.parseInt(jspScoreStr);
	%>
	
	
		<table>
			<tr>
				<th>사번</th>
				<th><input type="number" name="id" id="id" value=""></th>
			</tr>
			<tr>
				<th>과목</th>
				<th>
					<tr>
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
				</th>
			</tr>
			<tr>
				<input type="submit" name="submit">
			</tr>
		</table>


	
	
</body>
</html>