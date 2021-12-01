<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>

  <!DOCTYPE HTML>
    <HTML>
   <head>
  <meta charset="ISO-8859-1">
       <link rel="stylesheet" 
       href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" 
       integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" 
    crossorigin="anonymous">
    <link rel="stylesheet" href="bstyle.css" type="text/css">
    <title>Insert title here</title>
    <style type="text/css">
button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 100px;
  border: none;
  cursor: pointer;
  width: 40%;
  
}
button:hover {
  opacity: 0.8;
}

</style>
   </head>
     <body><form action="result.jsp" method="post">
       <br><br>
      <div class="container">
<div class="row">
    <div class="col-6">
        <h1> Welcome to java Quiz </h1><hr>
    </div>
</div>
<br>
<%final String JDBC_DRIVER="com.mysql.cj.jdbc.Driver";
final String DB_URL="jdbc:mysql://localhost/quize_data";
final String USER="root";
final String PASS="root";
response.setContentType("text/html");
PrintWriter outer=response.getWriter();
System.out.println("hi");
java.sql.Connection con = null;
PreparedStatement stmt=null;

	Class.forName(JDBC_DRIVER);
	con=DriverManager.getConnection(DB_URL, USER, PASS);
	stmt=((java.sql.Connection) con).prepareStatement("select * from questions");
	ResultSet rs=stmt.executeQuery();
while(rs.next())
{
    int que_no =rs.getInt(1);
    String que =rs.getString(2);
    String option_a =rs.getString(3);
    String option_b =rs.getString(4);
    String option_c =rs.getString(5);
    String option_d =rs.getString(6);    
%>
<div class="row">
    <div class="col-6">
        <h2><%=que_no%>.  <%=que %></h2>
    </div>  
</div>  
<br>
              <input class="form-check-input" type="radio" name="inlineRadioOptions" value="A">  
              <label class="form-check-label" for="inlineRadio1">A. <%=option_a %></label>   <br>
              <input class="form-check-input" type="radio" name="inlineRadioOptions" value="B"> 
              <label class="form-check-label" for="inlineRadio1">B. <%=option_b %></label>   <br>
              <input class="form-check-input" type="radio" name="inlineRadioOptions" value="C">
              <label class="form-check-label" for="inlineRadio1">C. <%=option_c %></label>   <br>
              <input class="form-check-input" type="radio" name="inlineRadioOptions" value="D">
              <label class="form-check-label" for="inlineRadio1">D. <%=option_d %></label>
          
   
    <br>
    <hr>

<%
}
%>  
   </div>
    <br>

     
 <center> <button type="submit">Submit the Quiz</button></center> 
</form>    
</body>
 </html>