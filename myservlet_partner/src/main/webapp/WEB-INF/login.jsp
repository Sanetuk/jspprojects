<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- this is login.jsp <br>
	param: <%= request.getParameter("date") %><br>
	
	request today <%= request.getAttribute("today") %> --%>
	
	<form id="myform" action="loginaction.jsp" method="post">
		id : <input type="text" name="userId" id="userId"> <br>
		pw : <input type="password" name="userPassword" id="userPassword"> <br>
		<input type="submit" id="myBtn" name="myBtn" value="login">
	</form>
	
	<script>
		 myform.onsubmit = function onSubmit(e) {
			alert('submit');
			let id = document.querySelector("#userId");
			
			if(!id.value) {
				alert('아이디를 입력하세요.');
			//e.preventDefault(); //submit되지 않도록 처리한다.
			}
		} 
		
		
		
		
		/* let myBtn = document.getElementById("myBtn");
		myBtn.onclick = handle;
		function handle() {
			//alert('haha');
			//id에 입력한 데이터를 추출할 수 있는가?
			let userId = document.getElementById("userId").value;
			alert(userId);
			if(!userId) {
				alert('userId를 입력해주세요.')
			}
		} */
	</script>
	
</body>
</html>