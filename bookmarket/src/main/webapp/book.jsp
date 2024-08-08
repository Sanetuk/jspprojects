<%@page import="dao.BookRepository"%>
<%@page import="dto.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bookDAO" class="dao.BookRepository"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
	rel="stylesheet" 
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container py-4">
		<%@ include file="menu.jsp" %>

		<div class="p-5 mb-4 bg-body-tertiary rounded-3">
			<div class="container-fluid py-5">
				<h1 class="display-5 fw-bold">도서 정보</h1>
				<p class="col-md-8 fs-4">BookInfo</p>
			</div>
		</div>
		
		<%
			//해야 할 일
			//1. 클라이언트가 전송한 bookId를 추출한다.
			String bookId = request.getParameter("id");
			if(bookId==null || bookId.length()==0) {
		%>
		<jsp:forward page="books.jsp"></jsp:forward> 
		<%
			}
			//2. DAO를 이용하여 해당 책의 정보를 조회한다.
			//BookRepository br = new BookRepository();
			Book book = bookDAO.getBookById(bookId); // usebean을 통해 객체가 이미 만들어져 있기 때문에 객체를 추가로 생성할 필요가 없다.
			//3. 책의 정보를 이용하여 화면에 데이터를 출력한다.
		%>
		

		<div class="row align-items-md-stretch text-center">
			<div class="col-md-4">
				<div class="h-100 p-2">
					<h3><b><%= book.getName() %></b></h3>
					<p><%= book.getDescription() %></p>
					<p> <b>도서코드</b> <%= book.getBookId() %> </p>
					<p><b>저자</b> <%= book.getAuthor() %></p>
					<p><b>출판사</b> <%= book.getPublisher() %></p>
					<p><b>출판일</b> <%= book.getReleaseDate() %></p>
					<p><b>분류</b> <%= book.getCategory() %></p>
					<p><b>재고 수</b> <%= book.getUnitsInStock() %></p>
					<h4><%= book.getUnitPrice() %> 원</h4>
					<a href="books.jsp" class="btn btn-secondary">도서목록</a>
					<a href="addBook.jsp" class="btn btn-secondary">도서등록</a>

				</div>
			</div>
		
		</div>
		<%@ include file="footer.jsp" %>
	</div>
</body>
</html>