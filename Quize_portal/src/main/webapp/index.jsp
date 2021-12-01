<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
ul {
 list-style-type: none;
 margin: 0;
 padding: 0;
 overflow: hidden;
 background-color: #333;
}
li{ float:left;

}
li a {
display:block;k;
color: white;
text-align: center;
padding: 20px 50px;
text-decoration: none;

}
li a:hover:not(.active){
background-color: #111;
}
.active {
background-color: #04AA6D;
}

h1
{text-align: center;
padding: 250px 300px;
font-size: 300%;
}
</style>

</head>
<body>
<ul> <li> <a class="active" href="#home">Home</a></li>
   
   <li> <a  href="stud_login.jsp">Student Login</a></li>
   <li> <a  href="ad_login.jsp">Admin Login</a></li>
   <li> <a  href="reg.jsp">Registration</a></li>
   <li> <a  href="cont.jsp">Contact</a></li>
   <li> <a  href="askq.jsp">Ask Query</a></li>
</ul>
<h1>  ONLINE QUIZ PORTAL  </h1>
</body>
</html>