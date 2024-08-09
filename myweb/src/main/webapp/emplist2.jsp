<%@page import="myweb.dao.EmpDAO"%>
<%@page import="myweb.vo.Emp"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="myweb.dao.EmpDAO"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>emp list</h3>
		<%
			//EmpDAO의 메서드를 호출하고 결과를 활용함
			//부서번호를 전달받아서 부서원목록을 리턴함
			int deptId = 80;
			EmpDAO dao = new EmpDAO();
			
			List<Emp> list = dao.getEmpListByDeptId(deptId);
			for(Emp emp : list) {
		%>
			<%= emp.lastName %><br/>
		<% }
		%>		
</body>
</html>