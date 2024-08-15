<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
</head>
<body>
	<h3>Ajax Text</h3>
	<p>여기가 달라집니다! 클릭하면 ajax결과로 대체합니다.</p>
	<script>
		$(function(){
			$('p').on('click', function(){
				//alert('clicked');
				$.ajax({
					url: 'JQServlet',
					success: function(data) {
						
						//alert(JSON.stringify(data));
						alert(data.ashley);
						$('p').html(JSON.stringify(data));
					}
				});// {} : JSON => 자바스크립트 객체, key:value쌍으로 구성됨
			});
		});
	</script>
</body>
</html>