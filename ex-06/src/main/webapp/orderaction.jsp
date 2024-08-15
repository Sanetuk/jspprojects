<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
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
	// form을 통해 받아온 정보를 추출
	request.setCharacterEncoding("utf-8");
	String cherry = request.getParameter("cherry");
	String orange = request.getParameter("orange");
	String apple = request.getParameter("apple");
	out.print(cherry + orange + apple);
	
	
	// 세션
	session.setAttribute("cherry", cherry)
	 %>
</body>
</html>