<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*" %>   
<%@page import="dal.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table border="1">
<tr><th>RNO</th><th>NAME</th><th>BRANCH</th><th>FEES</th></tr>
<%
JDBCExample2.connect();
ResultSet res = JDBCExample2.showdata();
while(res.next())
{ %>
<tr><td><%= res.getString(1) %></td><td><%= res.getString(2) %></td><td><%= res.getString(3) %></td><td><%= res.getString(4) %></td>
<td><a href="Edit.jsp?q=<%= res.getString(1) %>">EDIT</a></td><td><a href="Delete.jsp?q=<%= res.getString(1) %>">DELETE</a></td>
</tr>
	 
<% 

}
%>
</body>
</html>