<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit form</title>
</head>
<body>
<%@page import="com.rk.bean.Book,com.rk.DAO.BookDAO"%>

<%  
BookDAO bd = new BookDAO();

String id=request.getParameter("id");  
Book b=bd.getRecordById(Integer.parseInt(id));  
%>  
  
<h1>Edit Form</h1>  
<form action="EditBook.jsp" method="post">  
<input type="text" name="id" value="<%=b.getId() %>"/>  
<table>
<tr>
<td>Book_Name:</td>
<td><input type="text" name="bname"value="<%=b.getBook_Name() %>"/></td></tr>
<tr><td>Price:</td>
<td><input type="text" name="price"value="<%=b.getPrice() %>"/></td></tr>
<tr><td>Author</td>
<td><input type="text"name="author"value="<%=b.getAuthor() %>"/></td></tr>
<tr><td>Quantity</td>
<td><input type="text"name="quantity"value="<%=b.getQuantity()%>"/></td></tr>
<tr><td>Pages</td>
<td><input type="text"name="pages"value="<%=b.getPages()%>"/></td></tr>
<tr><td>Publisher</td>
<td><input type="text"name="publisher"value="<%=b.getPublisher() %>"/></td></tr>
<tr><td colspan="2"><input type="submit" value="Edit Book"/></td></tr>
</table>
</body>
</html>