<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 디렉티브 include는 실행해서 포함, 액션 include는 포함해서 실행 -->
<%@ include file="header.jsp" %>
<jsp:include page="header.jsp" flush="false"></jsp:include>
	<p>this is main.jsp</p>
	<c:out value="JSTL Core Tag Lib"/>
<%@ include file="footer.jsp" %>
</body>
</html>
