<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>B-APS</title>
<script src="https://code.jquery.com/jquery-2.2.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link href="https://code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="./style/date.css">
<!-- <link rel="stylesheet" href="./style/about.css" > -->
<link rel="stylesheet" href="./style/w3.css" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<style>
@import url('https://fonts.googleapis.com/css?family=Roboto:700');
body
{
    margin:0 auto 0;
    background-image: url("./img/blue.jpg");
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
select,input[type=text],input[type=address], input[type=password], input[type=number],input[type=date] {
  width: 100%;
  padding: 5px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #C1C1C1;
  border-radius:20px;
  border:none;
}
select:focus,input[type=text]:focus, input[type=password]:focus,input[type=address]:focus,input[type=number]:focus {
  background-color: #C1C1C1;
  outline: none;
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
/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #FF5733 ;
}
/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn, .signinbtn {
  float: left;
  width: 50%;
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
.form {
  transform: translate(10%,0%);
  position: relative;
  background-attachment: fixed;
  z-index: 1;
  background: #FFFFFF;
  max-width: 500px;
  margin: 0 100px;
  padding: 50px;
  text-align: left;
  color:gray;
  border-radius:20px;
  border:none;
  background: rgba(255,255,255,0.8);
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24); */
}
/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
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
<a href="Nav.jsp"><img src="./img/logo2.png"></a>
<ul>
<li>  <a href="Nav.jsp">Home</a></li>
  <li><a href="#band" >Your Appointments</a></li>
  <li><a href="about.jsp">About Us</a></li>
 <li><a href="Logoutserv" >Logout</a></li>
 </ul>
 <b><a href="#dsf"><% HttpSession sessio=request.getSession(false);  
 if(sessio!=null){  
 String name=(String)sessio.getAttribute("userid");  
 out.print(name);}
 else
 {}%></a></b>

 <form action="Inpatserv" onsubmit="return validate()" name="reg" method="post">
  <div class="form">
     <center><h3>In-Patient Appointment Form</h3></center>
    
    Choose PAT illness:
<select id="slct1" name="illness" onchange="populate(this.id,'slct2')">
  <option value=""></option>
  <option value="Orthopaedic">Orthopedics </option>
  <option value="Blood Cancer">Blood Cancer</option>
  <option value="Lung Cancer">Lung Cancer</option>
  <option value="Bone Marrow">Bone Marrow</option>
  <option value="Open Heart Surgeries">Open Heart Surgeries</option>
  <option value="Kidney">Kidney</option>
  <option value="Brain Surgeries">Brain Surgeries</option>
 <option value="Thyroid">Thyroid</option>
</select>
<br>
Choose Hospital Name:
<select id="slct2" name="hosname"></select>
    
    Appointment Date:<input type="text" name="appdate" id="org">
    <br>
    Select the number of days:
    <select name="days">
  <option value=""></option>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
  <option value="5">5</option>
  <option value="6">6</option>
  <option value="7">7</option>
 <option value="8">8</option>
 <option value="9">9</option>
 <option value="10">10</option>
</select>
<br>
   Prescription(operation) Details:
   <input type="text" name="pres">
   <br>
   <button type="submit" value="inpat" name="action"class="">Proceed to Payment</button>
    </div>
</div>
 
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
 <script>
$(document).ready (function(){
    $("#org").datepicker({
        
        minDate: 0,
        dateFormat:'dd/mm/yy',
        maxDate: 10
        
    })
})
function populate(s1,s2)
{
    var s1 = document.getElementById(s1);
    var s2 = document.getElementById(s2);
    s2.innerHTML = " ";
    if(s1.value == "Orthopaedic")
    {
        
        var optionArray = ["|","Chennai Orthopaedic Hospital|Chennai Orthopaedic Hospital","Vijay Multispeciality Hospital|Vijay Multispeciality Hospital","Nirmala Multi-speciality Hospital|Nirmala Multi-speciality Hospital","Apallo Orthopaedic General Hospital|Apallo Orthopaedic General Hospital"];
    }
    else if(s1.value == "Blood Cancer")
    {
        var optionArray = ["|","Coimbatore Multispeciality Hospital|Coimbatore Multispeciality Hospital","M.Abhi Blood Cancer Hospital|M.Abhi Blood Cancer Hospital","Dharamshila Superspeciality Hospital|Dharamshila Superspeciality Hospital","B.R.A Institute-Rotary Cancer Hospital|B.R.A Institute-Rotary Cancer Hospital"];
    }
    else if(s1.value == "Lung Cancer")
    {
        var optionArray = ["|","Apollo Health City|Apollo Health City","American Oncology Institute|American Oncology Institute","Omega Hospital|Omega Hospital","Yashoda Superspeciality Hospital|Yashoda Superspeciality Hospital"];
    }
    else if(s1.value == "Bone Marrow")
    {
        var optionArray = ["|","KMCH Speciality Hospital|KMCH Speciality Hospital","Sudha Bone Marrow Transplant Hospitals|Sudha Bone Marrow Transplant Hospitals","Arun Bone Diseases specialists Hospital|Arun Bone Diseases specialists Hospital","Arun orthopedic hospital|Arun orthopedic hospital"];
    }
    else if(s1.value == "Open Heart Surgeries")
    {
        var optionArray = ["|","Lotus Hospital|Lotus Hospital","Nova Speciality Hospitals|Nova Speciality Hospitals","Amulya Cosmetic Surgery Clinic|Amulya Cosmetic Surgery Clinic","Indraprastha Apollo Hospital|Indraprastha Apollo Hospital"];
    }
    else if(s1.value == "Kidney")
    {
        var optionArray = ["|","Bhatia Global Hospital & Endosurgery Hospital|Bhatia Global Hospital & Endosurgery Hospital","Preeth Urology & Kidney Hospital|Preeth Urology & Kidney Hospital","Aephrous Plus Kidney Hospital|Aephrous Plus Kidney Hospital","Sreedhar Kidney Multi-Speciality Hospital-ER|Sreedhar Kidney Multi-Speciality Hospital-ER"];
    }
    else if(s1.value == "Brain Surgeries")
    {
        var optionArray = ["|","PARAS BRAIN NEUROSURGERY HOSPITAL|PARAS BRAIN NEUROSURGERY HOSPITAL","BRAHM SHAKTI HOSPITAL & RESEARCH CENTRE|BRAHM SHAKTI HOSPITAL & RESEARCH CENTRE","INDIAN SPINAL INJURIES CENTRE|INDIAN SPINAL INJURIES CENTRE","LOS-ANGEL Brain Neurosurgery Hospital Hydrabad|LOS-ANGEL Brain Neurosurgery Hospital Hydrabad"];
    }
    else if(s1.value == "Thyroid")
    {
        var optionArray = ["|","Fortis Flt. Lt. Rajan Dhall Hospital|Fortis Flt. Lt. Rajan Dhall Hospital","Thyroidectomy Surgery Hospital|Thyroidectomy Surgery Hospital","Viezec Medical Health Care|Viezec Medical Health Care","KIMS Multi-Speciality Hospital|KIMS Multi-Speciality Hospital"];
    }
    for(var option in optionArray)
    {
        var pair = optionArray[option].split("|");
        var newOption = document.createElement("option");
        newOption.value = pair[0];
        newOption.innerHTML = pair[1];
        s2.options.add(newOption);
    }
}
function validate(){
    var illness= document.forms["reg"]["illness"];
    var hosname= document.forms["reg"]["hosname"];
    var appdate= document.forms["reg"]["appdate"];
    var days= document.forms["reg"]["days"];
    var pres= document.forms["reg"]["pres"];
    
    if(illness.value==""){
        window.alert("please select the illness");
        illness.focus();
        return false;
    }
    if(hosname.value== ""){
        window.alert("please select the hospital name");
        hosname.focus();
        return false;
    }if(appdate.value== ""){
        window.alert("please select the appointment date");
        appdate.focus();
        return false;
    }if(days.value== ""){
        window.alert("please select the number of days");
        days.focus();
        return false;
    }if(pres.value== ""){
        window.alert("please enter the some prescription");
        pres.focus();
        return false;
    }
    
}
</script>
</body>
</html>


