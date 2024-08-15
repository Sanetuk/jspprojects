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
<input type="button" id="mybtn" value="전송" />
<script>
	// $: jQuery library에 정의된 함수로서, 전달된 함수를 실행한다.
	// 다음과 같이 초기설정을 한다.
	$(function(){
		$('#mybtn').on('click', ()=>{
			alert('jq mybtn click!');
		});
	});
	/* let mybtn = document.querySelector('#mybtn');
	mybtn.addEventListener('click', function(){
		alert('mybtn clicked');
	});
	mybtn.onclick = function() {
		alert('mybtn clicked');
	} */
</script>
</body>
</html>