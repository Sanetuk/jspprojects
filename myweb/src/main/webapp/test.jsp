<%@page import="myweb.vo.Emp"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <jsp:useBean id="dao" class="myweb.dao.EmpDAO"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="myForm" action="test.jsp">
		<input type="hidden" id="deptId" value="">
		<select id="selectDeptId" name="selectDeptId">
			<option value="10">10</option>
			<option value="20">20</option>
			<option value="30">30</option>
			<option value="40">40</option>

	<p><%= request.getParameter("selectDeptId") %></p>
	<table>
	
	<%
		String deptIdStr = request.getParameter("selectDeptId");
		if(deptIdStr!=null && deptIdStr.length()>0) {
			int deptId = Integer.parseInt(deptIdStr);
			List<Emp> list = dao.getEmpListByDeptId(deptId);
			for(Emp emp : list) {
	%>
		<tr><td><%= emp.lastName%></td></tr>
				
<%
			}

		}
	
	%>
	</table>
	<script>
		let deptId = document.querySelector("#selectDeptId");
		deptId.addEventListener("change", function(){
			//alert('change');
			let deptIdSelect = document.querySelector("#selectDeptId");
			//alert(deptId.value);
			let deptId = document.querySelector("#deptId");
			deptId.value = deptIdSelect.value;
			alert(deptId.value);
			document.querySelector("#myForm").submit();
		});
	
	</script>
</body>
</html>