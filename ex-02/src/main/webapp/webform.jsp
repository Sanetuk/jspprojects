<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>웹 폼 사례</title>
		<style>
			th{
				border: 1px solid black;
			}
			
			table{
				border: 1px solid black;
			}
		</style>
	</head>
	<body>
		<div>
			<div>
				<h1 style="margin-left: 50px">웹 폼 사례</h1>
			</div>
			<div>
				<form id ="myform" action="webformaction.jsp" method="get">
				<table>
					<tr>
						<th><span>사용자이름</span></th>
						<th><input type="text" name="userName"></th>
					</tr>
					<tr>
						<th><span>이메일</span></th>
						<th><input type="email" name="email"></th>				
					</tr>
					<tr>
						<th><span>검색단어</span></th>
						<th><input type="search" name="searchKeyword"></th>				
					</tr>
					<tr>
						<th><span>취미</span></th>
						<th><input type="checkbox" name="hobby" value="운동">운동 <input type="checkbox" name="hobby" value="악기">악기 <input type="checkbox" name="hobby" value="여행">여행</th>
					</tr>
					<tr>
						<th><span>성별</span></th>
						<th><input type="checkbox" name="sex" value="남자">남자 <input type="checkbox" id="sex" value="여자">여자</th>
					</tr>
					<tr>
						<th><span>점심메뉴</span></th>
						<th><select name="점심메뉴"><option value="짜장면">짜장면</option><option value="짬뽕">짬뽕</option><option value="볶음밥">볶음밥</option></select></th>				
					</tr>
				</table>
					<input type="submit" style="margin-left: 100px">
				</form>
			</div>
		
		</div>
	</body>
</html>