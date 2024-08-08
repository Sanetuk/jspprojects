<%@page import="dao.BookRepository"%>
<%@page import="dto.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//1. request로부터 bookId를 추출한다.
	String bookId = request.getParameter("id");
	//2. id로 bookList에서 삭제한다.
	bookDAO.deleteBook(bookId);
	//3. books.jsp로 포워딩하거나 리다이렉트한다.
	response.sendRedirect("books.jsp");
	
%>
<jsp:forward page="books.jsp"></jsp:forward>
</body>
</html>