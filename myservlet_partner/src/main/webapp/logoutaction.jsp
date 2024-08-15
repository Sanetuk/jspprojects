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
		//session.invalidate(); //logout -> 모든 세션 없앰
		session.setAttribute("id", null); //logout -> 아이디 세션 없앰
	%>
	<jsp:forward page="login.jsp"></jsp:forward>
</body>
</html>