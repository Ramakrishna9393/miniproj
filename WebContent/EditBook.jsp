<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Book</title>
</head>
<body>
<%@page import="com.rk.DAO.BookDAO"%>  
<jsp:useBean id="b" class="com.rk.bean.Book"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
BookDAO bd = new BookDAO();
int i=bd.update(b);  
response.sendRedirect("viewbooks.jsp");  
%> 
</body>
</html>