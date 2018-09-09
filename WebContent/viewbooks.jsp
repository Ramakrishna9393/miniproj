<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>view books</title>
</head>
<body>
<%@page import="com.rk.DAO.BookDAO,com.rk.bean.*,com.rk.util.*" %>
<%@page import="java.util.List" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<h1>Books List</h1>
<%
BookDAO bd = new BookDAO();
List<Book> list=bd.getAllRecords();  
request.setAttribute("list",list);  
%>
<table border="1",width="90%">
<tr><th>Id</th><th>Book_Name</th><th>Price</th><th>Author</th><th>Quantity</th><th>Pages</th><th>Publisher</th><th>Edit</th><th>Delete</th></tr>
<c:forEach items="${list}" var="b">
<tr><td>${b.getId()}</td><td>${b.getBook_Name()}</td><td>${b.getPrice()}</td><td>${b.getAuthor()}</td><td>${b.getQuantity()}</td>
<td>${b.getPages()}</td><td>${b.getPublisher()}</td>
<td><a href="editform.jsp?id=${b.getId()}">Edit</a></td>  
<td><a href="deleteuser.jsp?id=${b.getId()}">Delete</a></td></tr>


</c:forEach>
</table>
</body>
</html>