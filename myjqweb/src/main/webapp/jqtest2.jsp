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
<!-- Option 1: Include in HTML -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
</head>
<body>
0~100 사이의 숫자 : <input type="text" id="input"><br>

<input type="button" id="mybtn" value="전송" /><br/>
<i id="myicon" class="bi bi-arrow-down"></i>
<script>
	let random;
	let count = 0;
	let list = [];
	$(function(){
		random = Math.floor(Math.random()*100);
		// alert(random);
		$('#mybtn').on('click', ()=>{
			//alert($('#input').val());
			//$('#myicon').removeClass('bi-arrow-down'):
			//$('#myicon').addClass('bi-arrow-up');
			//$('#myicon').toggleClass('bi-arrow-up bi-arrow-down');
			count++;
			list.push($('#input').val());
			if($('#input').val() > random) {//input < random
				$('.bi').removeClass('bi-arrow-up');
				$('.bi').addClass('bi-arrow-down');
			} else if($('#input').val() < random) {// input < random
				$('.bi').removeClass('bi-arrow-down');
				$('.bi').addClass('bi-arrow-up');
			} else {
				alert('빙고! count = ' + count);
			}
		});
		
		//let input = document.querySelector('#input'); // jQuery를 사옹하지 않고 만들기
		$('#input').val(11);//설정한다. setter
	});
</script>
</body>
</html>