<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>InvalidCustomer.jsp</title>
<style>
body{
margin-top: 30px;
}
p{	
 	display: flex; 
	justify-content: center;
	align-items: center;	
	font-size: 30px;
	color:red;
	font-weight: bold;
}
.page{
width: 350px;
}
</style>
</head>
<body>
<div>
 <%
 String msg=(String)request.getAttribute("msg");
 out.println("<p>"+msg+"!!<br></p>");
 %>

<div class="page">
 <jsp:include page="CustomerLogin.html"></jsp:include> 

</div>
</div>
 

</body>
</html>