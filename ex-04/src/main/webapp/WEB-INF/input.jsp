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
   <form action="result.jsp" method="get">
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
   
   
  
</body>
</html>