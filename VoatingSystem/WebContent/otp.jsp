<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>otp</title>
<body style="background-image:url(images/flag.jpg)"/>

</head>
<body>

   <%
            String contact = request.getParameter("con");
            
        %>
        <br><br><br><br><br><br><br>
       <div style="padding-left: 150px;">
            <form action="welcome.jsp" method="post">
            <h3><font color="white">Enter Your Register Voter card Number</font></h3>
             
             
             
             <input name="voter_card_number"  placeholder="Enter your OTP Password" type="text">
                         <h3><font color="black">OTP has sent on your number :</font> </h3>
                         <h2 ><%out.println(contact);%></h2>
             
                       <input value="Proceed"   type="submit"  class="btn" style="padding-bottom: 10px; width: 100px;"> 
            
                         
            </form>
      
             </div>
        </body>
</html>