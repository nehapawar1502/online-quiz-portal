<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*"%>

<% 		try {
	
	 final  String que_no= request.getParameter("que_no");

	 final  String que= request.getParameter("que");
	 final  String op1= request.getParameter("op1");
     final String op2= request.getParameter("op2");
	 final String op3= request.getParameter("op3");

	 final String op4= request.getParameter("op4");

	 final String ans= request.getParameter("ans");
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
stmt = ((java.sql.Connection) con).prepareStatement("insert into questions values(?,?,?,?,?,?,?)");
stmt.setString(1,que_no);
stmt.setString(2,que );
stmt.setString(3,op1 );
stmt.setString(4,op2 );
stmt.setString(5,op3 );
stmt.setString(6,op4 );
stmt.setString(7,ans );

stmt.executeUpdate();
System.out.println("Inserted records into the table...");

}
catch(Exception e)
{
System.out.println("wrong");
e.printStackTrace();
}
%>
<jsp:forward page="make_quize.jsp"></jsp:forward>

