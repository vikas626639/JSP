<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<h1 style="text-align: center; color: red; font: bold;">FIRST JSP
	PROGRAM</h1>
<!-- 	writing java scriptlet tag  -->
<center>
<%
	java.util.Date d=new java.util.Date();
	out.println(d);//printing system date
%>
</center>