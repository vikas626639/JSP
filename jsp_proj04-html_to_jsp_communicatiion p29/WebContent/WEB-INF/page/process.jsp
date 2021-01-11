<%@ page%>

<!--   declaration tag -->
<div align="center">
	<%!int i1;
	int i2;
	int sum;%>
	<%
		i1 = Integer.parseInt(request.getParameter("t1"));
	i2 = Integer.parseInt(request.getParameter("t2"));
	sum = i1 + i2;
	%>
	<h1 align="center" ; style="color: red;">
		SUM is =
		<%=sum%></h1>
	<%
		if (sum >= 1000) {
	%>
	<h1 align="center" ; style="color: red;">
		<b>sum is to big</b>
	</h1>
	<%
		} else {
	%>
	<b>
	<h1 align="center" ; style="color: red;">sum is small</h1></b>
	<%
	}
%>
</div>