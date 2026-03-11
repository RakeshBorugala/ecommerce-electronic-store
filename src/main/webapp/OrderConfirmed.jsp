<%@page import="pack1.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OrderConfirmed.jsp</title>
<style>
 body{
 background-color: #f4f4f9;
 display: flex;
 justify-content: center;
 }
 .container{
 border-radius: 5px;
  display: block;
  justify-content:center;
  align-items:center;
  margin-top:50px;
  width: 600px;
  height:300px;
  background-color: white;
  text-align: center;
  font-size: 20px;
  padding: 10px;
 }
 .links{
 display: block; 
 }
 a{
 padding: 10px;
 margin: 10px;
 background-color: green;
 margin-bottom: 8px;
 border-radius: 15px;
 color: #fff;
 text-decoration: none;
 }
  h1{
  color:green;
  }
</style>
</head>
<body><div class="container">
<%
	CustomerBean cbean=(CustomerBean)session.getAttribute("cbean");
	out.println("<h1>Hello Mr. "+cbean.getFirstName()+"<br></h1>");
	out.println(request.getAttribute("order")+"!!!<br><br>");
	out.println("You Have charged Rs."+request.getAttribute("bill")+"<br><br>");

%>
<div class="links">
<a href="view2">Shop More</a><br><br>
<a href="Logout2">Logout</a>
</div>

</div>
</body>
</html>