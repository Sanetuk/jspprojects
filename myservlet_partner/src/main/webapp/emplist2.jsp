<%@page import="myservlet.vo.Emp"%>
<%@page import="java.util.List"%>
<%@page import="myservlet.dao.EmpDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="myservlet.dao.EmpDAO"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Emp List2</h3>
	<%
		//로그인을 하지 않았다면 로그인 페이지로 포워딩한다.
		String id = (String)session.getAttribute("id");
		if(id==null || id.length() == 0) {
	%>
	<jsp:forward page="login.jsp"></jsp:forward>
	<% } %>
	
	
	
	<%
		//EmpDAO의 메서드를 호출하고 결과를 활용함
		//부서번호를 전달받아서 부서원목록을 리턴함
		int deptId = 80;
		
		List<Emp> list = dao.getEmpListByDeptId(deptId);
		session.setAttribute("list", list);
		session.setAttribute("emp1", list.get(0));
		List<Emp> list2 = (List<Emp>) session.getAttribute("list"); 
		
		for(Emp emp : list) {
	%>
		<%= emp.lastName %> <br>
		
	<%
		}
	%>
	
	<p><a href="logoutaction.jsp">logout</a></p>
	
</body>
</html>