<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	this is actionmain.jsp
	<%
		int random = (int)(Math.random() * 100);
		System.out.println(random);
		out.print(random);
		Date today = new Date();
		request.setAttribute("today", today.toString());
		if(random%2==0) {
	%>
	<jsp:forward page="login.jsp">
		<jsp:param name="date1" value="<%= new Date().toString() %>"/>
	</jsp:forward>
	
	<%} %>	

	<jsp:forward page="logout.jsp">
	
	</jsp:forward>
</body>
</html>