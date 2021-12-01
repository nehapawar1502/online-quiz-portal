<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*"%>

<%@page import="java.util.*"%>

<% 		try {
	
	

	 final  String uname= request.getParameter("uname");
	 final  String psw= request.getParameter("psw");
    
		// JDBC driver name and database URL
    final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";  
    final String DB_URL = "jdbc:mysql://localhost/quize_data";

   //  Database credentials
     final String USER = "root";
     final String PASS = "root";
     System.out.println("hi");
java.sql.Connection con = null;
PreparedStatement stmt = null;

//STEP 2: Register JDBC driver
Class.forName(JDBC_DRIVER);

//STEP 3: Open a connection
System.out.println("Connecting to a selected database...");

// Class.forName(JDBC_DRIVER);

//STEP 3: Open a connection

con =  DriverManager.getConnection(DB_URL, USER, PASS);
System.out.println("Connected database successfully...");
//STEP 4: Execute a query
System.out.println("Inserting records into the table...");
stmt = ((java.sql.Connection) con).prepareStatement("select * from stud where uname=? and psw=? ");
stmt.setString(1,uname);
stmt.setString(2,psw);
ResultSet rs=stmt.executeQuery();
if(rs.next())
{
	String pass=rs.getString("psw");
	if(psw.equals(pass))
	{%>
		<jsp:forward page="stud_panel.jsp"></jsp:forward>	
	<%}
	else
	{
		System.out.println("Wrong password");
	}
}
else
{
	System.out.println("Wrong username");
}

}
catch(Exception e)
{
System.out.println("wrong");
e.printStackTrace();
}
%>


