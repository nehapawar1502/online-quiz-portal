<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<meta name="viewport" content="width=device-width, initial-scale=1">

body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}


.container {
  padding: 10px;
  margin: 0 500px;
}

span.psw {
  float: right;
  padding-top: 40px;
}

</style>

</head>
<body>
<ul> <li> <a  href="index.jsp">Home</a></li>
     <li> <a   href="stud_panel.jsp">Student Panel</a></li>
      <li> <a class="active" href="take_quize.jsp">Take Quize</a></li>
      <li> <a  href="cont.jsp">Contact</a></li>
      <li> <a  href="askq.jsp">Ask Query</a></li>
      <li> <a  href="logout.jsp">Logout</a></li>
       
  
</ul>
<h2> Start the Quize</h2>

<form action="start_quize.jsp" method="post">
 

  <div class="container">
  
    <label for="prn"><b>PRN</b></label>
    <input type="text" placeholder="Enter PRN" name="prn" required>
        
    <button type="submit">Start the test</button>
      
   </div>
</form>
</body>
</html>