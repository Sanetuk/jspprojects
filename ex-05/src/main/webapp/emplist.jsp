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
	<h3>부서번호 목록</h3>
	<p>부서번호를 선택하면 부서원목록이 보입니다.</p>
		처음 요청되었을 땐 부서번호 목록이 select로 출력됨
		select를 선택하면 아래에 해당부서의 부서원 목록이 출력됨
		<%
			List<Integer> list = dao.getDeptIdList();
		%>
	<form action="">
		<input type="hidden" name="deptId" value="">
		<select>
		<% for(Integer deptId : list) {
			 %>
		
			<option value="<%= deptId%>"><%= deptId%></option>
		<%} %>
		</select>
	</form>			
	<h3>Emp List</h3>
	
	1. select가 변경되었을 때 자바스크립트 함수가 실행되게 할 수 있나?
		- select의 value 값으로 deptId hidden input의 value를 설정함
		- 그 함수 안에서 form의 action으로 다시 자신을 호출하게 함
		
	2. select option value로 부서원 목록 정보를 조회한 결과를 출력
		- request getAParameterValue()
		- DAO의 getEmpListByDeptId를 호출하고 결과로 목록출력합니다.
	
	
</body>
</html>