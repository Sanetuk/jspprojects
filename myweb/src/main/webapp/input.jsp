<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적 입력</title>
<style>
   * {
       text-align: center;
   }
   
   #title {
       text-align: left;
   }
   
   .inputBox {
       margin: 5px;
   }
</style>
</head>

<body>
   <h1 id="title">성적 입력</h1>
   <form id="myform" action="result.jsp" method="get">
       <table border="1">
           <tr>
               <td colspan="2">학번</td>
               <td><input type="text" name="studentId" id="student" class="inputBox"></td>
           </tr>
           <tr>
               <td rowspan="3">과목</td>
               <td>Java</td>
               <td><input type="text" name="java" class="inputBox"></td>
           </tr>
           <tr>
               <td>Database</td>
               <td><input type="text" name="db" class="inputBox"></td>
           </tr>
           <tr>
               <td>JSP</td>
               <td><input type="text" name="jsp" class="inputBox"></td>
           </tr>
           <tr>
               <td colspan="3" id="saveBtn"><button type="submit">저장</button></td>
           </tr>
       </table>
   </form>
   
   <script>
   //document의 element를 참조할 수 있나?
		   window.alert(studet); //이렇게 하면 안됨
	//let myform = document.getElementById("myform");
   let myform = document.getElementById("#myform"); //css
   let studemnt = document.getElementById("student");
   // form tag의 submit button click 시 javascript function을 execute 할 수 있나?
   myform.onsubmit = function() {
	   alert('ha');
	   //student라는 id의 element를 참조할 수 있나?
		var student = document.getElementById("student");
	   if(student.value == ''){
		   	alert('학번을 입력해야 합니다.');
			student.focus();
	   		return false;
	   }
   }
   
   
   let count = 500;
   let myform = document.querySelector("#myform");
   
   myform.addEvent
/*    myform.onsubmit = function(e) {
	   alert('ha');
	   e.preventDefault();
   } */
   
   
   </script>
  
</body>
</html>