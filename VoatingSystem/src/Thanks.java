

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Statement;

@WebServlet("/Thanks")
public class Thanks extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    PrintWriter out=response.getWriter();
	    response.setContentType("text/html");
	    String name=request.getParameter("name");
	    String pnumber=request.getParameter("pnumber");
	    String email=request.getParameter("email");
	    String comment=request.getParameter("comment");
	    MyDb con=new MyDb();
	    Connection c=((MyDb) con).getCon();
	    
	    try {
			Statement stm=(Statement) c.createStatement();
		
	        stm.execute("insert into contact(name,pnumber,email,comment)values('"+name+"','"+pnumber+"','"+email+"','"+comment+"')");
			response.sendRedirect("thanks.jsp");
	    } catch (Exception e) {
			e.printStackTrace();
		}
	
	
	}

}
