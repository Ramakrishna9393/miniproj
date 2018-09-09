<%@page import="com.rk.bean.Book"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add the books here</title>
</head>
<body>
<%@page import="com.rk.DAO.BookDAO"%>
<jsp:useBean id="b" class="com.rk.bean.Book"></jsp:useBean> 
 
<jsp:setProperty property="*" name="b"/> 
<%
String book_name=request.getParameter("Book_Name");
//.out.println("Book_Name"+book);
String Book_price=request.getParameter("Price");
double price=Double.parseDouble(Book_price);
String Author=request.getParameter("Author");
String Book_Qty=request.getParameter("Quantity");
int Quantity=Integer.parseInt(Book_Qty);
String Book_Pages=request.getParameter("Pages");
int pages=Integer.parseInt(Book_Pages);
String publisher=request.getParameter("Publisher");


Book bookObj = new Book();
//bookObj.setId(id)
bookObj.setBook_Name(book_name);
bookObj.setPages(pages);
bookObj.setAuthor(Author);
bookObj.setPrice(price);
bookObj.setQuantity(Quantity);
bookObj.setPublisher(publisher);
BookDAO bd = new BookDAO();
int i=bd.save(bookObj);	
if(i>0){
response.sendRedirect("addbook-success.jsp");  
}else{  
response.sendRedirect("addbook-error.jsp");  
}  

%>
</body>
</html>