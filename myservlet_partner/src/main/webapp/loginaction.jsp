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
	//사용자가 전송한 id, pw를 추출하여 처리한다.
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("userId");
	String pw = request.getParameter("userPassword");
	// 원래는 DB에 사용자가 존재하고 패스원드가 일치되어야 한다.
	//id와 pw가 동일하면 로그인 해주는걸로 테스트
	String sessionId = session.getId();
	System.out.println("sessionId = " + sessionId);
	if (id.equals(pw)) {
		session.setAttribute("id", id);
	%>
	<jsp:forward page="emplist2.jsp"></jsp:forward>
	<%
		}
	%>
	<jsp:forward page="login.jsp"></jsp:forward>

</body>
</html>