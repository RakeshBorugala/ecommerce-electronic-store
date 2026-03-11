<%@page import="pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout.jsp</title>
</head>
<body><center><h2>
<%
String log=(String)request.getAttribute("log");
session.invalidate();
out.println(log);
%>
<jsp:include page="index.html"></jsp:include>
</body>
</html>