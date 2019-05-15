<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>B-APS</title>

<!-- <link rel="stylesheet" href="./style/about.css" > -->
<link rel="stylesheet" href="./style/w3.css" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<style>
@import url('https://fonts.googleapis.com/css?family=Roboto:700');
body
{
	margin:0;
	padding:0;
	font-family: sans-serif;
}
nav
{
	position: fixed;
	top:0;
	left:0;
	width:100%;
	height:100px;
	padding: 10px 100px;
	box-sizing: border-box;
	transition: .5%;
	
}

nav .logo img
{
	margin-left: -60px;
	height: 100px;
	transition: .5%;
	
}

nav ul
{
	
	float:right;
	margin: 0;
	padding:0;
	display:flex;
	
}

nav ul li
{
	list-style:none;
	margin: 10px;
}
nav ul li a
{
	line-height: 80px;
	color: #fff;
	padding: 5px 20px;
	background-color: rgba(0,0,0,0.4);
	font-family: 'Roboto', sans-serif;
	text-decoration:none;
	text-transform: uppercase;
	transition: .5%;
	border:none;
	border-color: none;
	border-radius: 4px;
}
nav ul li a:hover
{
	color: #000;
	background: white;
	
}
*{
    margin: 0;
    padding: 0;
    font-family: century Gothic;
}

.team-section{
    overflow: hidden;
    text-align: center;
   
    padding: 60px;   
}
.team-section h1{
  width: 500px;
  margin: 20px 100px;
 	border-radius: 10px;
 	background-color: rgba(0,0,0,0.4);
    text-transform: uppercase;
    margin-bottom: 40px;
    color: #fff;
    font-size: 20px;
    font-family: 'Roboto', sans-serif;
}
.border{
    display: block;
    margin: auto;
    width: 160px;
    height: 3px;
    margin-bottom: 40px;   
}
.ps{
    margin-bottom: 100px;
    
}
.ps a{
    display: inline-block;
    margin: 0px auto 30px;
    overflow: hidden;
    border-radius:20%;
    transition: 0.4s all;
 	background-color: rgba(0,0,0,0.4);
    text-transform: uppercase;
     width: 200px;
     padding-top:30px;
    height: 100px;
    color: #fff;
    font-size: 20px;
    text-align: center;
    text-decoration:none;
    font-family: 'Roboto', sans-serif;
  
}

.ps a:hover{
   
filter: grayscale(100%);
}
.section{	
    width: 600px;
    margin: auto;
    font-size: 20px;
    color:white;
    text-align: justify;
    height:0;
    overflow: hidden;
}
.section:target{
    height:auto;
}
.name{
    display: block;
    margin-bottom: 20px;
    text-align: center;
    text-transform: uppercase;
    font-size: 22px;
}

</style>
</head>
<body>
<nav>
<div class="logo">
<img src="./img/logo2.png">
<ul>
<li>  <a href="#home" class="active">Home</a></li>
  <li><a href="#band" >Your Appointments</a></li>
  <li><a href="#dsd">Our Services</a></li>
 <li><a href="Logoutserv" >Logout</a></li>
 </ul>
 <b><a href="#dsf"><% HttpSession sessio=request.getSession(false);  
 if(sessio!=null){  
 String name=(String)sessio.getAttribute("userid");  
 out.print(name);}
 else
 {}%></a></b>
 <div class="team-section">
            <h1>
              Select The Type of care
            </h1>
            <span class="border"></span>
            <div class="ps">               
               <a href="#p1" >In-Patient</a>
               <a href="#p2" >Out-Patient</a>
               <a href="#p2" >Emergency</a>
               
            </div>
         
        </div>
 </div>
</nav>

<section class="sec1"><section>

  <img class="mySlides" src=".\img\64.jpg"
  style="width:100%">
  
 </section>

<footer class="w3-container w3-padding-16 w3-center w3-black w3-xlarge">
  <a href="#"><i class="fa fa-facebook-official"></i></a>
  <a href="#"><i class="fa fa-pinterest-p"></i></a>
  <a href="#"><i class="fa fa-twitter"></i></a>
  <a href="#"><i class="fa fa-flickr"></i></a>
  <a href="#"><i class="fa fa-linkedin"></i></a>
  <p class="w3-medium">
  Powered by <a href="Login.jsp" target="_blank">@copyright-PAT-a-DOC 2019</a>
  </p>
</footer>
 <script>
// Automatic Slideshow - change image every 3 seconds
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}
  x[myIndex-1].style.display = "block";
  setTimeout(carousel, 4000);
}
</script>

</body>
</html>