<%@page import="java.util.Iterator"%>
<%@page import="pack1.AdminBean"%>
<%@page import="pack1.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ViewProduct.jsp</title>
<style>
	body{
	display: flex;
	justify-content: center;
	
	}
   .container{
   width: 800px;
   margin-top:30px;
   border: 2px solid black;
   }
   .header{
   display: flex;
   height: 60px;
   align-items: center;
   background-color: rgba(178,233,196,0.5);
   }
   .left{
   display:flex;
   align-items:center;
   flex:1;
   font-size: 23px;
   padding-left: 14px;
   font-style: oblique;
   color: blue;
   margin-top: 25px;
   }
   .right{
   width:100px;
   border: 1px solid black;
   background-color: #a6a6a6;
   display:flex;
   justify-content:center;
   align-items: center;
   padding: 10px;
   border-radius: 15px;
   margin-right: 9px;
   font-size: 30%;
   }
   .right:hover{
   color:white;
   background-color: red;
   border: 2px solid black;
   }
   a{
   color:blue;
   font-size: 20px;
   text-decoration: none;
   font-weight: bold;
   }
 
 
   tr,th,td{
   border: 1px solid black;
   padding: 8px;
   width: 100%;
   }
   tr:hover {
  	background-color: #D6EEEE;
   }
  
</style>
</head>
<body>
<div class="container">
<div class="header">
<div class="left">
<%
 	AdminBean bean=(AdminBean)session.getAttribute("abean");
    out.println("Hello "+bean.getFirstName());

	ArrayList<ProductBean> al=(ArrayList<ProductBean>)session.getAttribute("Productlist");
	if(al.size()==0)
	{
		out.println(" There are No Products Available!!!<br><br>");
	}
	else
	{
	  out.println(" these are your products  details<br><br>");
	  Iterator<ProductBean> i=al.iterator();
	%>
</div>
  <div class="right">
<a href="Logout2">Logout</a>
</div>
</div>

 <table>
 <tr>
   <th>Product Code</th>
   <th>Product Name</th>
   <th>Product Company</th>
   <th>Price</th>
   <th>Quantity</th>
   <th>Select</th>
   <th>Delete</th>
  </tr>
	<%
	while(i.hasNext())
	  {		  
		ProductBean  pb=i.next();
	%>
	
	<tr>
	
	<td> <% out.println(pb.getpCode()); %></td>
	<td><% out.println(pb.getpName()); %></td>
	<td><% out.println(pb.getpCompany()); %></td>
	<td><% out.println(pb.getPrice()); %></td>
	<td><% out.println(pb.getpQty()); %></td>
	<td><%out.println("<a href='edit?pcode="+pb.getpCode()+"'>Edit</a>"); %></td>
	<td><%out.println(" <a href='delete?pcode="+pb.getpCode()+"'>Delete</a>");}} %></td>

	<!-- 	  out.println("<div id='products'>"+pb.getpCode()+" "+pb.getpName()+" "+pb.getpCompany()+" "+pb.getPrice()+" "+pb.getpQty()+
		" <a href='edit?pcode="+pb.getpCode()+"'>Edit</a>"+
		" "+" <a href='delete?pcode="+pb.getpCode()+"'>Delete</a>"+"<br></div>");
		  
	  }
	  } -->
 		</tr>
	 

</table>
</div>


</body>
</html>