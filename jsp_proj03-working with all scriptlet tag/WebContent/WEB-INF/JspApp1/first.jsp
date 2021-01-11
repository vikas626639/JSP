<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!--     declerative tag -->
<%!public String generateWishMsg(String name) {
		java.util.Calendar cal = null;
		String msg = null;
		int hour = 0;
		cal = Calendar.getInstance();
		hour = cal.get(java.util.Calendar.HOUR_OF_DAY);
		//generate 
		if (hour <= 12)
			msg = "good morning " + name;
		else if (hour <= 15)
			msg = "good afternoon " + name;
		else if (hour <= 18)
			msg = "good evening " + name;
		else if (hour <= 18)
			msg = "good evening " + name;
		else
			msg = "Good night " + name;
		return msg;
	}%>

<h1 style="color: red; text-align: center;">WELCOME TO JSP</h1>
<br>
Date and Time =
<%=new java.util.Date()%>
<br>
<%
	String user = "vikas";
%>
<br>
wish Message:<%=generateWishMsg(user)%>