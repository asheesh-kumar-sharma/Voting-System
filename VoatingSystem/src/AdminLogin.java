

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	  PrintWriter out=response.getWriter();
	   response.setContentType("text/html");
	   
	   String admin_name=request.getParameter("admin_name");
	   String admin_pass=request.getParameter("admin_pass");
	   MyDb db=new MyDb();
	   Connection con=db.getCon();
	   try
	   {
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from admin_login where user_name = '"+admin_name+"' and password = '"+admin_pass+"'");
		   if(rs.next())
		   {
			   HttpSession session=request.getSession();
			   session.setAttribute("adminname", admin_name);
			   response.sendRedirect("adminwelcome.jsp");
		       }
		   else
			   
		   {
			   response.sendRedirect("Wrong.jsp");
               
		   }
	   }
	   catch (Exception e) {
             out.println(e.getMessage());
	   }
	
	
	}

}
