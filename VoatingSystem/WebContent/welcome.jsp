
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    
<title>Online Voating System</title>
<body style="background-image:url(images/flag.jpg)"/>

    </head>
    <br><br><br><br><br><br><br><br>
    <div style="padding-left: 120px;">
       
        
            <form action="Vote" method="post">
            <h3 ><font color="white" size="5">Enter Your Register Voter card Number</font></h3>
           
            
            <br>
            
             <input name="voter_card_number"  placeholder="Enter your Voter Card Number" type="text">
             <br>
            <br> 
             <select style="height: 20px; width: 175px;" name="parties">
  <option>Select Your Party</option>
  <option value="app">AAP</option>
  <option value="bsp">Bahujan Samaj Party</option>
 
  <option value="bjp">Bharatiya Janata Party</option>
  <option value="cpi">Communist Party of India</option>
 
  <option value="congrace">Congress</option>
 
 
  
</select>
            <br>
            <br>
             <input value="Vote"   type="submit"  class="btn" style="padding-bottom: 10px; width: 100px; margin-left: 30px;"> 
            
         
            
           </form>  
        </div>
        
  

   
    
   
    

</body>

</html>
