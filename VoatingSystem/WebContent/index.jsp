<!DOCTYPE html>
<html>
<head>
<title>home </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<head>
<body style="background-image:url(images/flag.jpg)">

</head>
<body>

<style>

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #FF6E33;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 50px 30px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}

.topnav-right {
  float: right;
}
</style>
</head>
<body>
          
<div class="topnav">
  <div class="topnav-right">
  <a class="active" href="index.jsp">Home</a>
 
  <a href="contactForm.jsp">Contact</a>
 
    <a href="AboutUs.jsp">About Us</a>
  </div>
</div>

<div style="padding-left:16px">
<br>
<br><br><br><br><br><br><br>
 <div class="reg" style="padding-left: 175px;">
        
 <form action="Password" method="post">
 <h3 style="margin-top: 100px; margin-bottom: -50px;margin-top: -15px;">Enter Your Register Voter card Number</h3>
             
             
             
             <br>
             <br>
             <br>
             <br>
             <input name="voter_card_number"   placeholder="Enter your Voter Card Number" type="text">
             <br>
             <br>
             
            
                       <input value="Login"  type="submit""> 
            <br>
            <br>
            
                         <a href="registrationPage.jsp"><font color="black" size="4">New User Register</font></a>
                         <br>
                         <br>
                         
                         <a href="adminlogin.jsp"><font color="black"  size="4">Admin Check Result</font></a>
            </form>
            
</div>
 
 </div>
 <br><br><br><br><br><br><br>
 <%@ include file="footer.jsp"%>  
 

</body>
</html>
