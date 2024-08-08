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
		
			String userName = request.getParameter("userName");
			String email = request.getParameter("email");
			String[] hobbyList = request.getParameterValues("hobby");
			
			String hobby = "";
			for(String menu:hobbyList){
				hobby += menu;
			}
		%>
		당신의 이름은 <%= userName %> 이군요! <br/>
		이메일은 <%= email %> 입니다. <br/>
		취미로는 <%= hobby %> 이군요! <br/>
	</body>
</html>