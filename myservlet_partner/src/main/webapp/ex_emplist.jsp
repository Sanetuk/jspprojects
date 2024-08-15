<%@page import="myservlet.vo.Emp"%>
<%@page import="java.util.List"%>
<%@page import="myservlet.dao.EmpDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:useBean id="dao" class="myservlet.dao.EmpDAO"></jsp:useBean>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>부서번호 목록</h3>
	<p>부서번호를 선택하면 부서원 목록이 보입니다.</p>

	<%
		List<Integer> list = dao.getDeptIdList();
		request.setAttribute("list", list);
	%>

	<form action="ex_emplist.jsp" id="myform">
		<input type="hidden" name="deptId" value="">
		<select id="selectDeptId" name="selectDeptId">
			<option>부서번호를 선택하세요</option>
			<% for(Integer deptId : list) {
			%>
			<option value="<%= deptId %>">부서번호 : <%= deptId %></option>
			<%}%>	
		</select>
	</form>
	
	<h3>Emp List</h3>
	
	<form>
	<select id="selectDeptId" name="selectDeptId">
		<c:forEach items="${list}" var="deptId">
			<option value="${deptId}">${deptId}</option>
		</c:forEach>
	</select>
	</form>
	
	<p>
		선택한 부서번호 :
		<%=request.getParameter("selectDeptId")%>번
	</p>

	<table>
		<%
		String deptIdStr = request.getParameter("selectDeptId");
		if (deptIdStr != null && deptIdStr.length() > 0) {
			int deptId = Integer.parseInt(deptIdStr);
			List<Emp> empList = dao.getEmpListByDeptId(deptId);

			for (Emp emp : empList) {
		%>
		<tr>
			<td>사원번호 :</td>
			<td><%=emp.employeeId%></td>
			<td>이름 :</td>
			<td><%=emp.lastName%></td>
			<td>급여 :</td>
			<td><%=emp.salary%></td>
		</tr>

		<%
		}
		}
		%>
	</table>
	<script>
		let deptId = document.querySelector("#selectDeptId");
		deptId.addEventListener("change", function() {

			document.querySelector('#myform').submit();
		})
	</script>

</body>
</html>