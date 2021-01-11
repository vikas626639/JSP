<%@ page import="java.sql.*"%>

<%!//call inti method
	Connection con;
	PreparedStatement ps1, ps2;

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
