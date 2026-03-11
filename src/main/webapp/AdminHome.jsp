<%@page import="pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminHome.jsp</title>
<style>
  body{
   display: flex;
   justify-content: center;
   align-items: center;
   flex-direction: column;   
   background-color: #f0f0f5;
  }
  .container{
   width: 450px;
   height: 380px;
   border: 2px solid black;
   border-radius: 10px;
   margin: 15px;
   background-color:#edede2;
   }
  .msg{
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 20px;
  background-color: #ebbdd3;
  padding: 5px; border-radius: 10px 10px 0px 0px;
  border: 1px solid black;
  margin-bottom: 10px;
  }
  .header_msg{
  
  }
  .links{
  display:flex;
  align-items:center;
  flex-direction: column;
  font-size: 20px;
  padding-top: 15px; 
  
  }
  .links a{
  text-decoration: none;
  border: 1px solid black;
  width: 80%;
  display: flex;
  justify-content: center;
  padding: 10px;
  font-weight: bold;
  text-transform: uppercase;
  border-radius:20px;
  background-color: lightblue;
  align-items: center;
  }
  .links a:hover{
   color: #fff;
   background-color: rgb(128,230,129);
  }
</style>
</head>
<body>
<div class="container">
	<div class="msg">
	<%
	   AdminBean bean=(AdminBean)session.getAttribute("abean");
	   out.println("<p class='header_msg'>"+"Wellcome Mr. "+bean.getFirstName()+"<br><br>"+"</p>");
	
	  
	%>
	</div>
	<div class="links">
	<a href="AddProduct.html">Add Product</a><br><br>
	<a href="View">View Product</a><br><br>
	<a href="Logout">Logout</a>
	</div>
</div>
</body>
</html>