<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
background-image: url("./img/1.jpg");
background-size:cover;
  background-position: center;
  background-repeat: no-repeat;
  background-attachment: fixed;
font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
   border-radius:30px;
  border:none;
  border-color: lightblue;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #F5A262;
  outline: none;
   border-radius:20px;
  border:none;
  
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
    font-family:sans-serif;
  
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
  border-radius:20px;
  border:none;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn, .signinbtn {
	margin-left: 50px;
	float: left;
  width: 50%;
  border-radius:20px;
   font-family:sans-serif;
  border:none;
}

/* Add padding to container elements */
.container {
  padding: 16px;
  border-radius:20px;
  border:none;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}
.form {
  position: relative;
  transform: translate(-60%,-15%);
  z-index: 1;
  background: #FFFFFF;
  max-width: 300px;
  margin: 0 auto 0px;
  padding: 45px;
  text-align: center;
  background-color:blue;
  background: rgba(0,0,0,0.4);
  font-family:sans-serif;
  color:white;
  border-radius:20px;
  border:none;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}


/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
     padding:45px;
  }
}
.logo img
{
margin-top:-15px;
	margin-left: 40px;
	height: 138px;
	transition: .5%;
	
}
</style>
</head>
<body>
<div class="logo">
<img src="./img/logo2.png">
<form action="Doctorloginserv" method="post">
<div class="form">
  <div class="container">
        <h1>Sign In</h1>
    
    <hr>
   <input type="text" placeholder="Enter User ID" name="userid" required>

    <input type="password" placeholder="Enter Password" name="password" required>
     
    <div class="clearfix">
      <button type="submit" class="signinbtn"><font size="3" face="sans-serif">SignIn</font></button>
      
      </div>
     Not registered? <a href="Doctorreg.jsp"><font size="3" color="white" face="comic sans ms"> Sign Up!</font></a></p>
      <a href="#dee"><font size="3" color="white" face="comic sans ms"> Forgot password?</font></a></p>
 </div>
 </div>
 

  </div>
</form>
</body>
</html>