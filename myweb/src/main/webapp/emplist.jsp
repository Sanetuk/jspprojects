<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>Emp list</h3>
		<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hr", "root", "rootroot");
		Statement stmt = con.createStatement();
		String sql = "select * from employees where department_id = 80";
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()) {
			%>

	<%=rs.getString("last_name")%>,<%=rs.getString("salary")%><br/>
<%
}
%>
</body>
</html>