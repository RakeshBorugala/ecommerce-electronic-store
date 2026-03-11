<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pack1.CustomerBean"%>
<%@page import="pack1.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ViewCustomerProduct.jsp</title>
<style>
	body{
	background-color:#f9f9f9;
	}
	.container{
	display: flex;
	justify-content: center;
	flex-wrap: wrap;
	
	}
	.products{
	display:inline-block;
	text-align:center;
	width:300px;
	border: 1px solid black;
	margin: 12px;
	padding: 13px;
	border-radius: 5px;
	font-size: 20px;
	background-color:white;
	
	}
	h1{
	color: rgb(36, 149, 225);
	font-weight: bold;
	}
	a{
	display:inline-block;
	 border-radius: 6px;
	 color: #fff;
	 background-color: blue;
	 text-decoration: none;
	 font-size: 25px;
	 padding: 10px;
	 margin-bottom: 10px ;
	}
	.products:hover{
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
    transform: translateY(5px);
	}
	a:hover{
	 background-color: lime;
	 
	}
	
</style>
</head>
<body>
<%
	CustomerBean cbean=(CustomerBean)session.getAttribute("cbean");
	ArrayList<ProductBean> al=(ArrayList<ProductBean>)session.getAttribute("Productlist");
	out.println("<h1 style='text-align:center;'>Hello "+cbean.getFirstName()+"</h1><br><br>");
	
	if(al.size()==0)
	{
	out.println("There is No Products available");
	}
	else
	{	%>
	<div class="container">
	<%Iterator<ProductBean> i=al.iterator();		
		while(i.hasNext())
		{
			ProductBean pb=i.next();
			out.println("<div class='products'>");
			out.println("<p>Product Code:"+pb.getpCode()+"</p>");
			out.println("<h1>"+pb.getpName()+"</h1>");
			out.println("<p>Company:"+pb.getpCompany()+"</p>");
			out.println("<p>Price: &#8377;"+pb.getPrice()+"</p>");
			out.println("<p>Quantity: "+pb.getpQty()+"</p>");
			out.println("<a href='buy?pcode="+pb.getpCode()+"'>Buy</a>");
			out.println("</div>");}}%>
	</div>
		
		<!-- 	
			/* out.println(pb.getpCode()+" "+pb.getpName()+" "+pb.getpCompany()+" "+pb.getPrice()+" "+pb.getpQty()
			+" "+"<a href='buy?pcode="+pb.getpCode()+"'>Buy</a><br><br>"); */ -->

</body>
</html>