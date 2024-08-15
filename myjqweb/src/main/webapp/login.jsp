<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" 
integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" 
crossorigin="anonymous"></script>
</head>
<body>
	<form id="myform" action="loginaction.jsp" method="get">
		id : <input class="myinput" type="text" name="userId" id="userId"> <br/>
		pw : <input style="background-color: red" type="password" name="pw"> <br/>
		test<p></p> sample
		next line
		<input type="submit" id="myBtn" name="myBtn" value="login">
	</form> next
	<script>
		$(function(){
			//form submit 이벤트 핸들러 등록
			$('#myform').on('submit', function(e){
				if($('#userId').val()==''){
					window.alert('아이디는 입력바람!');
					let result = confirm('yes or no');
					e.preventDefault();
				}
			});
		});
		/* myform.onsubmit= function onSubmit(e) {
			if(!userId.value){
			alert('Submit Id');
			e.preventDefault(); //submit되지 않도록 처리한다.
				
			}
		} */
/* 		let myBtn = document.getElementById("myBtn");
		myBtn.onclick = handle;
		function handle() {
			// alert('haha');
			// id에 입력한 데이터를 추출할 수 있는가
			let userId = document.getElementById("userId").value;
			alert(userId);
			if(!userId) { // userId가 비어있을 경우
				alert('userId를 입력 바랍니다.');
			}
		} */
	</script>
</body>
</html>