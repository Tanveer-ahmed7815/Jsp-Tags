<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Random,java.util.ArrayList,java.io.*"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Welcome to first Jsp</h1>
	<%!//declarative tag
	int a = 10;
	int b = 20;
	String name = "Tanveer";

	public int doSum() {
		return a + b;
	}

	public String reverse() {
		StringBuffer sb = new StringBuffer(name);
		return sb.reverse().toString();
	}%>
	


	<%
	//scriptlet tag
	out.println(a);
	out.println(b);
	out.println(doSum());

	Random r = new Random();
	int n = r.nextInt(10);
	%>
	<!-- expression tag -->
	<h1 style="color: red;"><%=reverse()%></h1>
	<h1>Random no is:</h1>
	<%= n %>
	
	<%@include file="index.jsp" %>

</body>
</html>