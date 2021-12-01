<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*"%>

<%@page import="java.util.*"%>

<% 		try {
	
	

	 final  String uname= request.getParameter("uname");
	 final  String psw= request.getParameter("psw");
    request.setAttribute("alertMsg","Wrong credentials");
		// JDBC driver name and database URL
    final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";  
    final String DB_URL = "jdbc:mysql://localhost/quize_data";

   //  Database credentials
     final String USER = "root";
     final String PASS = "root";
     System.out.println("hi");
java.sql.Connection con = null;
PreparedStatement stmt = null;
String message = (String)request.getAttribute("alertMsg");
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
stmt = ((java.sql.Connection) con).prepareStatement("select * from admin where uname=? and psw=? ");
stmt.setString(1,uname);
stmt.setString(2,psw);
ResultSet rs=stmt.executeQuery();
if(rs.next())
{
	String pass=rs.getString("psw");
	if(psw.equals(pass))
	{%>
		<jsp:forward page="ad_panel.jsp"></jsp:forward>	
	<%}
	else
	{
	   %>
	   
	   <script type="text/javascript">
	   var msg ="<%=message%>";
	   alert(msg);
	   </script>
	   <%	
	}
}
else
{
       %>

	   <script type="text/javascript">
	   var msg ="<%=message%>";
	   alert(msg);
	   </script>
	   <%	
}

}
catch(Exception e)
{
System.out.println("wrong");
e.printStackTrace();
}
%>

