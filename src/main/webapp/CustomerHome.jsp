<%@page import="pack1.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>customerhome.jsp</title>
<style>
   body{
   display:flex;
   justify-content: center;
   align-items: center;
   background-color: #f0f0f0;
   min-height: 90vh;
  }
  .container{
  width: 300px;
  background-color:#fff;
  padding: 20px;
  border: 2px solid black;
  border-radius:10px;
  text-align: center;
  }
  a{
  display:inline-block;
  padding: 15px;
  margin: 15px 10px;
  font-size: 18px;
  border-radius: 5px;
  border:2px solid black;
  background-color:#e0e0e0;
  text-decoration: none;  
  color:black;
  transition:  background-color 0.1s ease;
    
  }
  a:hover{
   background-color: black;
   color:#fff;
 
  }
  h2{
  font-size: 20px;
  }
</style>
</head>
<body>
<div class="container">
<%
	/* CustomerBean bean=(CustomerBean)session.getAttribute("cbean");
	out.println("<h2>"+"Welcome "+bean.getFirstName()+"</h2>");
	String msg=(String)request.getAttribute("msg");
	out.println(msg);  */
	CustomerBean bean = (CustomerBean) session.getAttribute("cbean");
    out.println("<h2>Welcome " + bean.getFirstName() + "</h2>");

    String message = (String) request.getAttribute("msg");
    if (message != null) {
        out.println("<h2 style='color: green; font-weight: bold;'>" + message + "</h2>"); 
       
    }
%>

<a href="view2">View Products</a>
<a href="Logout2">Logout</a>
</div>
</body>
</html>