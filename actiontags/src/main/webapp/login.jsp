<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	this is login.jsp<br/>
	param:<%= request.getParameter("date1") %><br>
	
	request today <%= request.getAttribute("today") %>....
</body>
</html>