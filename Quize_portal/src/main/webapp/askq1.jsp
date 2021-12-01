<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*"%>

<% 		try {
	
	 final  String prn= request.getParameter("prn");

	 final  String name= request.getParameter("name");
	 final  String email= request.getParameter("email");
     final String phone= request.getParameter("phone");
	 final String question= request.getParameter("question");
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
stmt = ((java.sql.Connection) con).prepareStatement("insert into query values(?,?,?,?,?)");
stmt.setString(1,prn);
stmt.setString(2,name );
stmt.setString(3,email );
stmt.setString(4,phone );
stmt.setString(5,question );

stmt.executeUpdate();
System.out.println("Inserted records into the table...");

}
catch(Exception e)
{
System.out.println("wrong");
e.printStackTrace();
}
%>
<jsp:forward page="askq.jsp"></jsp:forward>

