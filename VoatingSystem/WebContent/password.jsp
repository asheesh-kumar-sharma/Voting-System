
<!DOCTYPE html>
<html>
    <head>
<title>Online Voting System</title>
<body style="background-image:url(images/flag.jpg)"/>

</head>
    
    
    
        
         <%
            String contact = request.getParameter("con");
            
        %>
        
        <br><br><br><br><br>
       
          <div style="padding-left: 150px;">
     
            <form action="welcome.jsp" method="post">
            <h3>Enter Your Register Voter card Number</h3>
             
             <br>
           
             
             
             <input name="voter_card_number"  placeholder="Enter your OTP Password" type="text">
             <br>
                         <h3 >OTP has sent on your number : </h3>
                         
             
                         <h2><%out.println(contact);%></h2>
             <br>
                       <input value="Proceed"   type="submit"  class="btn" style="padding-bottom: 10px; width: 100px;"> 
            
                         
            </form>
             
   
    </div>
   
    

</body>

</html>
