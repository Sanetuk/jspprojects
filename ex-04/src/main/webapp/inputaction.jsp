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
	// input.jsp의 form에서 전송받은 정보들을 변수에 넣음.
	String idStr = request.getParameter("id");
	String javaScoreStr = request.getParameter("java");
	String databaseScoreStr = request.getParameter("database");
	String jspScoreStr = request.getParameter("jsp");
	
	
	
	
	int id = 0;
	int javaScore = 0;
	int databaseScore = 0;
	int jspScore = 0;

	
	try {
		id = Integer.parseInt(idStr);
	} catch (NumberFormatException e) {
		id = 0;
	}
	
	try {
		javaScore = Integer.parseInt(javaScoreStr);;
	} catch (NumberFormatException e) {
		javaScore = 0;
	}
	try {
		databaseScore = Integer.parseInt(databaseScoreStr);
	} catch (NumberFormatException e) {
		databaseScore = 0;
	}
	try {
		jspScore = Integer.parseInt(jspScoreStr);
	} catch (NumberFormatException e) {
		jspScore = 0;
	}
	
	int averageScore = (javaScore + databaseScore + jspScore) / 3;
	
	
	request.setAttribute("id", id);
	request.setAttribute("java", javaScore);
	request.setAttribute("database", databaseScore);
	request.setAttribute("jsp", jspScore);
	request.setAttribute("average", averageScore);
	
	%>
	
	<jsp:forward page="result.jsp"></jsp:forward>
	
	
		


	
	
</body>
</html>