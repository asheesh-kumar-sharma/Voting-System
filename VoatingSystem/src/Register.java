

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Register")
public class Register extends HttpServlet {
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		 response.setContentType("text/html");
	        try (PrintWriter out = response.getWriter()) {
	           String name = request.getParameter("name");
	           String surname = request.getParameter("surname");
	           String voter_card_number = request.getParameter("voter_card_number");
	           String address = request.getParameter("address");
	           String dob = request.getParameter("dob");
	           String contact = request.getParameter("contact");
	           String email = request.getParameter("email");
	           out.println("hi ahseesh");
	         MyDb db = new MyDb();
	         
	         
	          Connection con = db.getCon();
	          Statement stmt =  con.createStatement();
	  
	stmt.execute("insert into voter_register(name,surname,voter_card_number,contact,address,dob,email)values('"+name+"','"+surname+"','"+voter_card_number+"','"+contact+"','"+address+"','"+dob+"','"+email+"')");
	          out.println("registration success");
	         response.sendRedirect("index.jsp");
	           
	        
	        } catch (SQLException ex) {
	        } 
	    }

		
		
			
		
		}


