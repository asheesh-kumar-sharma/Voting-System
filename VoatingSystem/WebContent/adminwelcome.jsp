<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<body style="background-image:url(images/flag.jpg)"/>
<style>
img {
  border-radius: 50%;
}
</style>
</head>
<title>Online Voting System</title>
    <%
  
   String s1 = (String)session.getAttribute("adminname");
   
    String a[] = new String[100];
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/votingsystem", "root", "root");
    Statement stmt = con.createStatement();
    //  ResultSet sr=stmt.executeQuery();
    ResultSet rs = stmt.executeQuery("select partie,count(partie) as c from vote group by partie");
    int i=0;
    while(rs.next()){
        a[i] = rs.getString("c");
        i++;
    }
    
  
    
    
    %>

    <br>
    <br>
    <br>
   <div style="padding-left: 1200px;">
          
    <a href="adminlogout.jsp"><font size=5 color="red">Logout</font></a>
  </div>
    
        
            <div style="padding-left: 150px;">
             <p> <font size=5 color="white">Voting Results</font></p>
              <img src="images\cpi.jpg" height="70px" width="70px"/><%=a[4]%>
           
             <br>
             <br>
             
        <img src="images\congrace.png" height="70px" width="70px"/><%=a[3]%>
       
             <br>
             <br>
             <img src="images\bsp.jpg" height="70px" width="70px"/><%=a[2]%>
             
              <br>
              <br>

             <img src="images\bjp.jpg" height="70px" width="70px"/><%=a[1]%>
            
              <br>
              <br>
              
              <img src="images\Aap.jpg" height="70px" width="70px" /><%=a[0]%>
             <br>
             <br>
             
        
     
  </div>
   
    
   
  
</body>


</html> 