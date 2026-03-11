<%@page import="pack1.ProductBean"%>
<%@page import="pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EditProduct.jsp</title>
<style>
  body{
   display: flex;
   justify-content: center;
   align-items: center;
   flex-direction: column;   
   background-color: #f0f0f5;
  }
  .container{
   width: 400px;
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
  font-size: larger;
   font-weight: bold;
  font-style:italic;
  background-color: skyblue;
  padding: 5px;
  border-radius: 10px 10px 0px 0px;
  border: 1px solid black;
  margin-bottom: 10px;
  }
  
  .inputs{
  display:flex;
  align-items:center;
  flex-direction: column;
  font-size: 20px;
  padding-top: 15px; 
  width: 100%;
  }
  form{
   display: flex;
   flex-direction: column;
   width:90%;
   font-size: larger;
   font-weight: bold;
  }
  input{
   height: 30px;
   border-radius: 5px;
   padding-left:20px;
   font-size: 18px;
  }
  button{
   height: 40px;
   width: 50%;  
   align-self:center;
   border-radius: 5px;
   font-size: 18px;
   border: 1px solid blue;
   background-color:#fff;
  }
  button:hover {
  color: #fff;
  border-radius: 5px;
  border: 2px solid white;
  background-color:blue; 	
	
}
</style>
</head>
<body>
<div class="container">
  <div class="msg">
  <%
  	  AdminBean bean=(AdminBean)session.getAttribute("abean");
  	  ProductBean pb=(ProductBean)request.getAttribute("pbean");
  	  out.println("<p class='header_msg'>"+"Hello "+bean.getFirstName()+" Please Edit...</p>");
  %>
</div>
<div class="inputs">
 <form action="update" method="post">
  		Product Price:<input type="text" name="price" value="<%=pb.getPrice()%>"><br><br>
  		Product Quantity:<input type="text" name="pqty" value="<%=pb.getpQty()%>"><br><br>
  		<input type="hidden" name="pcode" value="<%=pb.getpCode()%>">
  		<button>Update Details</button>
  </form>
</div>  		
  
  </div>
</body>
</html>