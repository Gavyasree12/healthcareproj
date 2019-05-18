<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
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
    margin:0 auto 0;
    background-image: url("./img/bg1.jpg");
background-size:cover;
  background-position: center;
  background-repeat: no-repeat;
  background-attachment: fixed;
 
    padding:0;
    font-family: sans-serif;
}
nav
{
    position: relative;
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
  filter: drop-shadow(0px 0px 0px white);}
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
select{
  width: 100%;
  padding: 5px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #fff;
  border-radius:20px;
  border:none;
}
text area{
border-radius:10px;
  border:none;
}
hr {
  border: 0px solid #f1f1f1;
  margin-bottom: 25px;
}
/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
  border-radius:20px;
  border:none;
  background-color: #00cc66;
}
button:hover {
  opacity:1;
}
/* Add padding to container elements */
.container {
  padding: 16px;
  border-radius:20px;
  border:none;
}
.bg{
background-image: url("./img/co.jpg");
background-size:cover;
background-position: center;
background-repeat: no-repeat;
background-attachment:
filter: grayscale(100%);
filter: blur(8px);
  -webkit-filter: blur(8px);}
/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}
table{
  transform: translate(0%,60%);
  background: rgba(255,255,255,0.6);
  border-spacing: 10px;
  border-radius: 10px;
  border-collapse: separate;
  font-style: italic;
}
td
{
  padding: 10px;
 
}
.form {
  transform: translate(15%,30%);
  position: relative;
  background-attachment: fixed;
  z-index: 1;
  max-width: 400px;
  margin: 0 100px;
  padding: 50px;
  text-align: left;
  color:#606060;
  border-radius:20px;
  border:none;
  background: rgba(255,255,255,0.6);
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24); */
}
/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
 .search {
 margin-left: 50px;
     width: 50%;
  }
}
.foot{
margin-top: 700px;
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
 <form method="post">
<table>
<tr>
<td>Docname</td>
<td>Specialisation</td>
<td>Hospital</td>
<td>Address</td>
<td>Pincode </td>
<td>Phone</td>
</tr>
<%
String pincode=request.getParameter("pin");
try
{
 //Class.forName("oracle.jdbc.driver.OracleDriver()");
 //String url="jdbc:oracle:thin:@localhost:1521:xe";
 //String username="system";
 //String password="system";
 //String query="select * from emergency";
 //Connection conn=DriverManager.getConnection(url,username,password);
 //Statement stmt=conn.createStatement();
 //ResultSet rs=stmt.executeQuery(query);
 
 //DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
 Class.forName("oracle.jdbc.driver.OracleDriver"); 
 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
 
 Statement st=con.createStatement();
 //String query="Select * from emergencies";
 ResultSet rs=st.executeQuery("Select * from sathya.emergency where pincode='"+pincode+"'");
 while(rs.next())
 {
 %>
     <tr>
                <td><%out.print(rs.getString(1));%></td>
                <td><%out.print(rs.getString(2));%></td>
                <td><%out.print(rs.getString(3));%></td>
                <td><%out.print(rs.getString(4));%></td>
                <td><%out.print(rs.getString(5));%></td>
                <td><%out.print(rs.getString(6));%></td>
             
            </tr>
         <%
 }
 %>
    </table>
    <%
    rs.close();
    st.close();
    con.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }
%> 
</form>
        </div>
 </div>
</nav>
<div class="foot">
<footer class="w3-container w3-padding-16 w3-center w3-black w3-xlarge" >
  <a href="#"><i class="fa fa-facebook-official"></i></a>
  <a href="#"><i class="fa fa-pinterest-p"></i></a>
  <a href="#"><i class="fa fa-twitter"></i></a>
  <a href="#"><i class="fa fa-flickr"></i></a>
  <a href="#"><i class="fa fa-linkedin"></i></a>
  <p class="w3-medium">
  Powered by <a href="Login.jsp" target="_blank">@copyright-PAT-a-DOC 2019</a>
  </p>
</footer>
</div>
</body>
</html>

