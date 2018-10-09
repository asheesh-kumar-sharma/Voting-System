<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>check</title>
<body style="background-image:url(images/flag.jpg)"/>
</head>
<body>
<%
String name=request.getParameter("name");

%>
<br><br><br><br><br><br><br>

<form action="index.jsp" method="post">
            
                         <h3 style="margin-top: -15px;margin-left: 100px;"><font color="white" size="5">Sorry Vote is allow only once... </font><br><font color="white" size="5">and You already used this voter card number:</font> </h3>
                        <br><br>
                         <h2 style="margin-top: -40px;margin-left: 100px;"><%out.println(name);%></h2>
             <div class="reg" style="padding-left: 100px;">
 
                       <input value="Proceed"   type="submit"  class="btn" style="padding-bottom: 10px; width: 75px;"> 
                  </div>   
            </form>
            
</body>
</html>