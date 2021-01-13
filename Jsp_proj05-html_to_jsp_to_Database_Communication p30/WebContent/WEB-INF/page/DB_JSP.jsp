
<%@ page import="java.sql.*"%>

<%!//call inti method
			Connection con;
			PreparedStatement ps1, ps2;
			ResultSet rs;
		
			public void init() {
				try {
					ServletConfig cg = getServletConfig();
					String s1 = cg.getInitParameter("driver");
					String s2 = cg.getInitParameter("url");
					String s3 = cg.getInitParameter("username");
					String s4 = cg.getInitParameter("pazzword");
					//ragister jdbc driver
					Class.forName(s1);
					//establish the connection 
					con = DriverManager.getConnection(s2, s3, s4);
					//query for operation
					ps1 = con.prepareStatement("insert into student values(?,?,?)");
					ps2 = con.prepareStatement("select * from student");
				} catch (SQLException se) {
					se.printStackTrace();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}//init%>


<%
			//read the additional requerst param which comes from the button or hyperlink
		String req = request.getParameter("s1");
		if (req.equalsIgnoreCase("link")) {
			//execute the query
			rs = ps2.executeQuery();
		%>

<table border="1" align="center">
	<tr>
		<th>STUDENT NUMBER</th>
		<th>STUDENT NAME</th>
		<th>STUDENT ADDRESS</th>
	</tr>
	<%
				while (rs.next()) {
			%>
	<tr align="center" style="color: red;">
		<b>
		<td><%=rs.getInt(1)%></td>
		<td><%=rs.getString(2).toUpperCase()%></td>
		<td><%=rs.getString(3).toUpperCase()%></td>
		</b>
	</tr>
	<%
				}
			%>
</table>
<%
			}else {
				//read form data
				int sno=Integer.parseInt(request.getParameter("sno"));
				String name=request.getParameter("sname");
				String address=request.getParameter("sadd");
				//set param
				ps1.setInt(1, sno);
				ps1.setString(2,name);
				ps1.setString(3,address);
				int i=ps1.executeUpdate();
				if(i!=0){%>
		<h2 align="center"><b><i>RAGISTRATION SECCUSSFULL<i><b></h2>
		<center><a href="test1?s1=link">GET STUDENT LIST</a></center><br>
		<% }else{%>
		<h3>RAGISTRAION FAILED</h3>
		<%}
					}
%>
			<a href="input.html">HOME PAGE</a>


