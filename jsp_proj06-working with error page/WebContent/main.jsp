<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp" %>
    
    
 <b1>From main.jsp</b1>
 <br>
 <% int x=Integer.parseInt("a10"); %>
 value:<%=x %>
 
<%
	int a=10;
	out.println(a);
	int b=0;
	out.println(b);
	
	/* int c=a/b;
	out.print(c); */
%>