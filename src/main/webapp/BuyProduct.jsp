<%@page import="pack1.CustomerBean"%>
<%@page import="pack1.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BuyProduct.jsp</title>
<style>
  body{
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top: 20px;
  background-color: #f4f4f9;
  }
  .container{
  display: flex;
  /* justify-content: start;
  align-items: start; */
  width: 400px;
  border: 2px solid black;
  border-radius: 6px;
  background-color:  rgba(190,200,200,0.5);  
  }
  form ,input{
  display: flex;
  justify-content:start;
  align-items: center;
  flex-direction:column;
  padding: 10px;
  margin: 10px;
  width: 90%;
  font-size: 20px;
  border-radius: 6px; 
  }
  form,text{
  font-size: 30px;
  justify-content:start;
  text-align: start;
  }
  input{
   background-color:#f4f4f9;
  }
  button{
   width: 88%;
   padding: 16px;
   color: black;
   background-color:rgb(255,216,20);
   border: none;
   font-size: 30px;
   border-radius: 25px;
   cursor: pointer;
   border:1px solid black;
  }
  button:hover{
  color:green;
  transition: 0.3 ease;
   border: 2px solid black;
  }
</style>
</head>
<body><div class="container">
 <%
 CustomerBean cbean=(CustomerBean)session.getAttribute("cbean");
 ProductBean pb=(ProductBean)request.getAttribute("pb");

 %>
 <form action="updateprod" method="post">
  Pcode:<input type="text" value="<%=pb.getpCode() %>" readonly>
  Pname:<input type="text" value="<%=pb.getpName() %>"  readonly>
  Pcompany: <input type="text" value="<%=pb.getpCompany()%>"  readonly>
  Price:<input type="text" value="<%=pb.getPrice() %>"  readonly>
  Pqty:<input type="text" value="<%=pb.getpQty()%>"  readonly>
  Requried No:<input type="number" name="reqqty">
  <input type="hidden" name="pcode" value="<%=pb.getpCode() %>"><br>
  <button>BUY</button>
  
 </form>
 </div>
</body>
</html>