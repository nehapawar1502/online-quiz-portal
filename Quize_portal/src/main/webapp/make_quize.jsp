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

input[type=text], input[type=password],textarea {
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
     <li> <a   href="ad_op.jsp">Admin Panel</a></li>
      <li> <a  class="active" href="make_quize.jsp">Make Quize</a></li>
           <li> <a  href="logout.jsp">Logout</a></li>
       
  
</ul>
<h2>Add question</h2>

<form action="make_quize1.jsp" method="post">
 

  <div class="container">
   <label for="que_no"><b>Question No.</b></label>
    <input type="text" placeholder="Enter Question No." name="que_no" required>
  
    <label for="que"><b>Question</b></label>
    <textarea name="que" placeholder="Enter Question"  required></textarea>

    <label for="op1"><b>Option 1</b></label>
    <input type="text" placeholder="Enter Option1" name="op1" required>
    <label for="op2"><b>Option 2</b></label>
    <input type="text" placeholder="Enter Option2" name="op2" required>
    <label for="op3"><b>Option 3</b></label>
    <input type="text" placeholder="Enter Option3" name="op3" required>
    <label for="op4"><b>Option 4</b></label>
    <input type="text" placeholder="Enter Option4" name="op4" required>
    <label for="ans"><b>Answer</b></label>
    <input type="text" placeholder="Enter Answer" name="ans" required>
        
    <button type="submit">Add</button>
      
  </div>
</form>



</body>
</html>