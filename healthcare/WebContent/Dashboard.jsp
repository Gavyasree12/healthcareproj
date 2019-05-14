<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Health care</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--         <link rel="stylesheet" type="text/css" href="./style/about.css">
 -->        <style type="text/css">
        body{
	 background-image:url('./img/pata.jpg');
   background-size:cover;
  background-position: center;
  background-repeat: no-repeat;
  background-attachment: fixed;
}
@CHARSET "ISO-8859-1";
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
    margin-bottom: 60px;
    color: #fff;
    font-size: 45px;
    font-family: sans-serif;
}
.border{
    display: block;
    margin: auto;
    width: 160px;
    height: 3px;
    background:#db0a5b;
    margin-bottom: 40px;   
}
.ps{
    margin-bottom: 40px;
}
.ps a{
    display: inline-block;
    margin: 0 30px;
    width: 200px;
    hight:200px;
    overflow: hidden;
    background: #fff;
    border-radius:50%;
    border-color: 3px solid #fff;
}
.ps a img{
    width: 100%;
    filter: grayscale(100%); 
    transition: 0.4s all;
}
.ps a:hover > img{
    filter: none;
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
        <div class="team-section">
            <h1>
              Pat-a-Doc HealthCare
            </h1>
            <span class="border"></span>
            <div class="ps">               
               <a href="Login.jsp" ><img src="./img/mann.jpg" alt="Image 1"></a>
               <a href="Doctorsignin.jsp" ><img src="./img/docc.jpg" alt="Image 2"></a>
            </div>
         
        </div>
    </body>
</html>