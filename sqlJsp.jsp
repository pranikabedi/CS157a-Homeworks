<%@ page import="java.sql.*"%>
<html>
<head>
<title>JDBC Connection example</title>
</head>
<body>
<h1>JDBC Connection example</h1>
<%
	String db = request.getParameter("cs157a");
	String user = "cs157a";
	try{
		java.sql.Connection con;
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cs157a?serverTimezone=UTC","root", "pranika1");
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from movies");
		out.println("Rating" + " " + "Name" + " " + "Time");
		while (rs.next())
		{
			out.println("<br />" + rs.getInt(1));
			out.println(rs.getString(2));
			out.println(rs.getString(3));
			
			
			
		}
		con.close();
		
	}
	catch(SQLException e){
		out.println("SQLException caught: " +e.getMessage());
	}
%>
</body>
</html>