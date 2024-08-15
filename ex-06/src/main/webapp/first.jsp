<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	th, td{
	border: 1px solid black;
	}
</style>
</head>
<body>
	<!-- 과일 구입 인터페이스 -->
	<!-- 고른 과일을 체크박스를 통해 form에 넣어 orderaction.jsp을 열도록 서버에 요청을 보낸다. -->
	<table><form action="orderaction.jsp" method="post">
		<tr>
			<th>과일 목록</th>
			<th>가격</th>
		</tr>
		<tr>
			<td><input type="checkbox" name="cherry" id="cherry" value="on">체리</th>
			<td>25000</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="orange" id="orange" value="on">오렌지</td>
			<td>23000</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="apple" id="apple" value="on">사과</td>
			<td>16000</td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit"></td>
		</tr>
		
	</form></table>

</body>
</html>