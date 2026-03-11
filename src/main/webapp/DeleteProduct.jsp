<%@page import="pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DeleteProduct.jsp</title>
<Style>
  body{
  display:flex;
  justify-content: center;
  align-items: center;
  background-color:#f0f0f0;
  min-height: 50vh;
  }
  .container{
  width:400px;
  text-align:center;
  border:2px solid black;
  border-radius:10px;
  background-color:#fff;
  padding: 10px;
  
  }
  a{
  display:inline-block;  
  padding:10px;
  font-size: 20px;
  margin:15px;
  border: 2px solid black;
  border-radius: 5px;
  text-decoration: none;
  box-shadow: 5px 5px 10px rgba(0,0,0,0.7);
  color: black;
  background-color: 
  }
  h1{
   color:black;
   justify-content:center;
   align-item: center;
  }
  p{
   font-size:20px;
   color:green;
   align-items: center;
   font-weight: bold;
  }
  a:hover{
   background-color:skyblue;
   color:#fff;
   border:none;
  }
</Style>
</head>
<body>
<div class="container">
	<%
  	 AdminBean bean=(AdminBean)session.getAttribute("abean");
	 String msg=(String)request.getAttribute("msg");
 	out.println("<h1>Hello Mr. "+bean.getFirstName()+"</h1><p>Product Deleted  !!</p><br>");
 %>
 	<a href="AddProduct.html">Add Product</a>
	<a href="View">View Product</a><br><br>
	<a href="Logout">Logout</a>
</div> 
</body>
</html>